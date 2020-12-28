// @ts-ignore
import request from "superagent/lib/client"
// @ts-ignore
import saPrefix from "superagent-prefix"
import toNumber from "lodash/toNumber"
// @ts-ignore
import {TILEHOSTING_API_KEY} from "./constants/App"
// @ts-ignore
import {OFDB_API, TH_GEOCODER, NOMINATIM, CORS_PROXY, PROMINENT_TAGS, PUBLIC_RESOURCES} from "./constants/URLs"
// @ts-ignore
import {NUMBER_TAGS_TO_FETCH} from "./constants/Search"
import parse from 'csv-parse/lib/sync'

const prefix = saPrefix(OFDB_API.link)
const publicResources = saPrefix(PUBLIC_RESOURCES.link)
const FALANSTER_TOKEN = 'eyJzdWIiOiJtYXBhLWZhbGFuc3RlciIsIm5hbWUiOiJmYWxhbn'

const jsonCallback = (cb: Function) => (err: any, res: { body: any }) => {
  if (err) {
    cb(err)
  } else {
    cb(null, res.body)
  }
}

type TextResponse = { text: String }

function normalizeCoordinate(bbox: any, idx: any) {
  if (bbox.length > idx && bbox[idx] && (!isNaN(bbox[idx])) && bbox[idx] > 180) {
    bbox[idx] = ((bbox[idx] + 180.0) % 360.0) - 180.0
  }
  if (bbox.length > idx && bbox[idx] && (!isNaN(bbox[idx])) && bbox[idx] < -180) {
    bbox[idx] = ((bbox[idx] - 180.0) % 360.0) + 180.0
  }
}

const transformRecordToOption = (record: any) => {
  const option = {
    ...record,
    styles: {
      bold: record.bold === "true",
      underline: record.underline === "true",
      italic: record.italic === "true",
      fontSize: toNumber(record.fontSize) || "inherit"
    }
  }

  const keysToDelete = ['bold', 'underline', 'italic', 'fontSize']
  keysToDelete.forEach(key => delete option[key])

  return option
}

const transformCSVToOptions = (records: Array<{ headline: String, label: String }>) => {
  const options = []
  for (let i = 0; i < records.length; i++) {
    const record = records[i]
    if (record.headline === "true") {
      const option = {
        label: record.label,
        options: []
      }
      i++
      for (; i !== records.length; i++) {
        const subRecord = records[i]
        if (subRecord.headline === "true") {
          i--
          break
        }

        // @ts-ignore
        option.options.push(transformRecordToOption(subRecord))
      }

      options.push(option)
      continue
    }

    options.push(transformRecordToOption(record))
  }

  return options
}

const WebAPI = {

  searchEntries: (txt: any, cats: any, bbox: any, cb: Function) => {

    if (txt == null) {
      txt = ''
    }
    if (cats == null) {
      cats = []
    }
    if (bbox == null) {
      bbox = []
    }
    normalizeCoordinate(bbox, 1)
    normalizeCoordinate(bbox, 3)
    request
      .get('/search')
      .use(prefix)
      .query({
        text: txt.trim()
      })
      .query((cats.length > 0) ? ('categories=' + cats.join(',')) : "")
      .query('bbox=' + bbox.join(','))
      .set('Accept', 'application/json')
      .end(jsonCallback(cb))
  },

  searchEvents: (txt: any, bbox: any, start: any, end: any, cb: Function) => {
    if (bbox == null) {
      bbox = []
    }
    normalizeCoordinate(bbox, 1)
    normalizeCoordinate(bbox, 3)
    let req = request
      .get('/events')
      .use(prefix)
      .set('Accept', 'application/json')
    if (bbox && bbox.length > 0) req.query('bbox=' + bbox.join(','))
    if (txt && txt.length > 0) req.query({text: txt.trim()})
    if (start) req.query(start ? ('start_min=' + start) : "")
    if (end) req.query(end ? ('start_max=' + end) : "")

    req.end(jsonCallback(cb))
  },

  createNewEvent: (newEvent: Object, cb: Function) => {
    request
      .post('/events')
      .use(prefix)
      .set({'Accept': 'application/json', 'Authorization': `Bearer ${FALANSTER_TOKEN}`})
      .send(newEvent)
      .end((err: any, res: TextResponse) => {
        if (err) {
          cb(err)
        } else {
          cb(null, res.text.replace(/"/g, ""))
        }
      })
  },

  editEvent: (event: { id: String }, cb: Function) => {
    request
      .put('/events/' + event.id)
      .use(prefix)
      .set({'Accept': 'application/json', 'Authorization': `Bearer ${FALANSTER_TOKEN}`})
      .send(event)
      .end((err: any, res: TextResponse) => {
        if (err) {
          cb(err)
        } else {
          cb(null, res.text)
        }
      })
  },

  getEvent: (ids = [], cb: Function) => {
    if (!Array.isArray(ids)) {
      ids = [ids]
    }

    if (ids.length < 1) {
      cb(new Error("no IDs were passed"))
    } else {
      request
        .get('/events/' + ids.join(','))
        .use(prefix)
        .set('Accept', 'application/json')
        .end(jsonCallback(cb))
    }
  },

  countTags: (cb: Function) => {
    request
      .get('/count/tags')
      .use(saPrefix(OFDB_API.link))
      .set('Accept', 'application/json')
      .end(jsonCallback(cb))
  },

  getProminentTags: (cb: Function) => {
    const xhr = new XMLHttpRequest()
    xhr.open("GET", `${CORS_PROXY.link}/${PROMINENT_TAGS.link}`)

    xhr.onreadystatechange = function () {
      if (xhr.readyState === XMLHttpRequest.DONE) {
        var status = xhr.status
        if (status === 0 || (status >= 200 && status < 400)) {
          // The request has been completed successfully
          const el = document.createElement('html')
          el.innerHTML = xhr.responseText

          const p = el.querySelector("#post-6714 > div > p");
          if (p != null && p.textContent) {
            const prominentTags = p.textContent.split('#').filter(t => t.length)
            cb(prominentTags)
          } else {
            cb([], "could not find <p> tag")
          }
        } else {
          // Oh no! There has been an error with the request!
          cb([], "could not fetch prominent tags")
        }
      }
    }

    xhr.send()
  },

  searchAddressTilehosting: (addr: any, cb: Function) => {
    let query = TH_GEOCODER.link.replace("<query>", addr).replace("<key>", TILEHOSTING_API_KEY)
    if (addr != null && addr != "") {
      request
        .get(query)
        .set('Accept', 'application/json')
        .end(jsonCallback(cb))
    }
  },

  searchAddressNominatim: (addr: any, cb: Function) => {
    // console.trace()
    if (addr == null) {
      addr = ''
    }
    request
      .get('/search')
      .use(saPrefix(NOMINATIM.link))
      .query({
        q: addr
      })
      .query({
        format: 'json'
      })
      .query({
        addressdetails: 1
      })
      .set('Accept', 'application/json')
      .end(jsonCallback(cb))
  },

  searchGeolocation: (latlng: any, cb: Function) => {

    if (latlng == null) {
      latlng = {
        lat: 0.0,
        lng: 0.0
      }
    }

    request
      .get('/reverse')
      .use(saPrefix(NOMINATIM.link))
      .query({
        lat: latlng.lat
      })
      .query({
        lon: latlng.lng
      })
      .query({
        zoom: 18
      })
      .query({
        format: 'json'
      })
      .query({
        addressdetails: 1
      })
      .set('Accept', 'application/json')
      .end(jsonCallback(cb))
  },

  getEntries: (ids = [], cb: Function) => {

    if (!Array.isArray(ids)) {
      ids = [ids]
    }

    if (ids.length < 1) {
      cb(new Error("no IDs were passed"))
    } else {
      request
        .get('/entries/' + ids.join(','))
        .use(prefix).set('Accept', 'application/json')
        .end(jsonCallback(cb))
    }
  },

  getRatings: (ids = [], cb: Function) => {

    if (!Array.isArray(ids)) {
      ids = [ids]
    }

    if (ids.length < 1) {
      cb(new Error("no IDs were passed"))
    } else {
      request
        .get('/ratings/' + ids.join(','))
        .use(prefix).set('Accept', 'application/json')
        .end(jsonCallback(cb))
    }
  },

  saveNewEntry: (e: Object, cb: Function) => {
    request
      .post('/entries/')
      .use(prefix)
      .set('Accept', 'application/json')
      .send(e)
      .end((err: any, res: TextResponse) => {
        if (err) {
          cb(err)
        } else {
          cb(null, res.text.replace(/"/g, ""))
        }
      })
  },

  saveEntry: (e: { id: String }, cb: Function) => {
    request
      .put('/entries/' + e.id)
      .use(prefix)
      .set('Accept', 'application/json')
      .send(e)
      .end((err: any, res: TextResponse) => {
        if (err) {
          cb(err)
        } else {
          cb(null, res.text)
        }
      })
  },

  createRating: (r: Object, cb: Function) => {
    request
      .post('/ratings/')
      .use(prefix)
      .set('Accept', 'application/json')
      .send(r)
      .end((err: any, res: TextResponse) => {
        if (err) {
          cb(err)
        } else {
          cb(null, res.text)
        }
      })
  },

  getAllCategories: (cb: Function) => {
    request
      .get('/categories/')
      .use(prefix)
      .set('Accept', 'application/json')
      .end(cb)
  },

  getServerInfo: (cb: Function) => {
    request
      .get('/server/version')
      .set('Accept', 'application/json')
      .use(prefix)
      .end((err: any, res: TextResponse) => {
        if (err) {
          cb(err)
        } else {
          cb(null, {
            version: res.text
          })
        }
      })
  },

  register: (
    { email, password }: { email: String, password: String },
    cb: Function
  ) => {
    request
      .post('/users')
      .use(prefix)
      .set('Accept', 'application/json')
      .send({
        email,
        password
      })
      .end(cb)
  },

  login: (
    { email, password }: { email: String, password: String },
    cb: Function
  ) => {
    request
      .post('/login')
      .set('Accept', 'application/json')
      .use(prefix)
      .withCredentials()
      .send({
        email,
        password
      })
      .end(cb)
  },

  getUser: (email: String, cb: Function) => {
    request
      .get('/users/' + email)
      .set('Accept', 'application/json')
      .use(prefix)
      .withCredentials()
      .end(cb)
  },

  logout: (cb: Function) => {
    request
      .post('/logout')
      .set('Accept', 'application/json')
      .use(prefix)
      .withCredentials()
      .end(cb)
  },

  confirmEmail: (token: String, cb: Function) => {
    request
      .post('/confirm-email-address')
      .set('Accept', 'application/json')
      .use(prefix)
      .send({
        token
      })
      .end(cb)
  },

  deleteAccount: (email: String, cb: Function) => {
    request
      .delete('/users/' + email)
      .set('Accept', 'application/json')
      .use(prefix)
      .withCredentials()
      .end(cb)
  },

  subscribeToBbox: (bbox: {_southWest: any,  _northEast: any}, cb: Function) => {
    let coordinates = [bbox._southWest, bbox._northEast]
    request
      .post('/subscribe-to-bbox')
      .use(prefix)
      .set('Accept', 'application/json')
      .send(coordinates)
      .end((err: any, res: TextResponse) => {
        if (err) {
          cb(err)
        } else {
          cb(null, res.text)
        }
      })
  },

  getBboxSubscriptions: (cb: Function) => {
    request
      .get('/bbox-subscriptions')
      .set('Accept', 'application/json')
      .use(prefix)
      .end(cb)
  },

  unsubscribeFromBboxes: (cb: Function) => {
    request
      .delete('/unsubscribe-all-bboxes')
      .set('Accept', 'application/json')
      .use(prefix)
      .end(cb)
  },

  getDropdowns: (name: String, cb: Function) => {
    const dropdowns = {
      'categories': [],
      'regions': [],
    }

    Promise.all(Object.keys(dropdowns).map(async (dropdownName) => {
      try {
        const res = await request
          .get(`/customizations/${name}/filters/${dropdownName}.csv`)
          .type('text/csv')
          .use(publicResources)

        const records = parse(
          res.text, {
            columns: true,
            skip_empty_lines: true,
          }
        )

        const transformed = transformCSVToOptions(records)
        // @ts-ignore
        dropdowns[dropdownName] = transformed
      } catch (e) {
        console.error(e)
      }
    })).then(cb(dropdowns))
  },

  popularTags: (max: Number, input?: String) => {
    // @ts-ignore
    if (window.ofdb && window.ofdb.kern) {
       // @ts-ignore
       return window.ofdb.kern.popular_tags(max, input);
    } else {
      return new Promise((_resolve, reject) => {
        reject(new Error("ofdb kern module not loaded!"));
      });
    }
  }
};

module.exports = WebAPI
export default WebAPI
