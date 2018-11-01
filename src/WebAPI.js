import request from "superagent/lib/client";
import saPrefix from "superagent-prefix";
import { TILEHOSTING_API_KEY } from "./constants/App";
import { OFDB_API, TH_GEOCODER, NOMINATIM } from "../constants/URLs"

const prefix = saPrefix(OFDB_API.link);

const jsonCallback = (cb) => (err, res) => {
  if (err) {
    cb(err);
  } else {
    cb(null, res.body);
  }
};

module.exports = {

  search: (txt, cats, bbox, cb) => {

    if (txt == null) {
      txt = '';
    }
    if (cats == null) {
      cats = [];
    }
    if (bbox == null) {
      bbox = [];
    }

    request
      .get('/search')
      .use(prefix)
      .query({
        text: txt.trim()
      })
      .query((cats.length > 0) ? ('categories=' + cats.join(',')) : "")
      .query('bbox=' + bbox.join(','))
      .set('Accept', 'application/json')
      .end(jsonCallback(cb));
  },

  searchAddressTilehosting: (addr, cb) => {
    let query = TH_GEOCODER.link.replace("<query>", addr).replace("<key>", TILEHOSTING_API_KEY);
    if (addr != null && addr != "") {
      request
        .get(query)
        .set('Accept', 'application/json')
        .end(jsonCallback(cb));
    }
  },

  searchAddressNominatim: (addr, cb) => {
    if (addr == null) {
      addr = '';
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
      .end(jsonCallback(cb));
  },

  searchGeolocation: (latlng, cb) => {

    if (latlng == null) {
      latlng = {
        lat: 0.0,
        lng: 0.0
      };
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
      .end(jsonCallback(cb));
  },

  getEntries: (ids = [], cb) => {

    if (!Array.isArray(ids)) {
      ids = [ids];
    }

    if (ids.length < 1) {
      cb(new Error("no IDs were passed"));
    } else {
      request
        .get('/entries/' + ids.join(','))
        .use(prefix).set('Accept', 'application/json')
        .end(jsonCallback(cb));
    }
  },

  getRatings: (ids = [], cb) => {

    if (!Array.isArray(ids)) {
      ids = [ids];
    }

    if (ids.length < 1) {
      cb(new Error("no IDs were passed"));
    } else {
      request
        .get('/ratings/' + ids.join(','))
        .use(prefix).set('Accept', 'application/json')
        .end(jsonCallback(cb));
    }
  },

  saveNewEntry: (e, cb) => {
    request
      .post('/entries/')
      .use(prefix)
      .set('Accept', 'application/json')
      .send(e)
      .end((err, res) => {
        if (err) {
          cb(err);
        } else {
          cb(null, res.text.replace( /"/g ,""));
        }
      });
  },

  saveEntry: (e, cb) => {
    request
      .put('/entries/' + e.id)
      .use(prefix)
      .set('Accept', 'application/json')
      .send(e)
      .end((err, res) => {
        if (err) {
          cb(err);
        } else {
          cb(null, res.text);
        }
      });
  },

  createRating: (r, cb) => {
    request
      .post('/ratings/')
      .use(prefix)
      .set('Accept', 'application/json')
      .send(r)
      .end((err, res) => {
        if (err) {
          cb(err);
        } else {
          cb(null, res.text);
        }
      });
  },

  getAllCategories: (cb) => {
    request
      .get('/categories/')
      .use(prefix)
      .set('Accept', 'application/json')
      .end(cb);
  },

  getServerInfo: (cb) => {
    request
      .get('/server/version')
      .set('Accept', 'application/json')
      .use(prefix)
      .end((err, res) => {
        if (err) {
          cb(err);
        } else {
          cb(null, {
            version: res.text
          });
        }
      });
  },

  register: ({
    username,
    password,
    email
  }, cb) => {
    request
      .post('/users')
      .use(prefix)
      .set('Accept', 'application/json')
      .send({
        username,
        email,
        password
      })
      .end(cb);
  },

  login: ({
    username,
    password
  }, cb) => {
    request
      .post('/login')
      .set('Accept', 'application/json')
      .use(prefix)
      .withCredentials()
      .send({
        username,
        password
      })
      .end(cb);
  },

  getUser: (username, cb) => {
    request
      .get('/users/' + username)
      .set('Accept', 'application/json')
      .use(prefix)
      .withCredentials()
      .end(cb);
  },

  logout: (cb) => {
    request
      .post('/logout')
      .set('Accept', 'application/json')
      .use(prefix)
      .withCredentials()
      .end(cb);
  },

  confirmEmail: (u_id, cb) => {
    request
      .post('/confirm-email-address')
      .set('Accept', 'application/json')
      .use(prefix)
      .send({
        u_id
      })
      .end(cb);
  },

  deleteAccount: (username, cb) => {
    request
      .delete('/users/' + username)
      .set('Accept', 'application/json')
      .use(prefix)
      .withCredentials()
      .end(cb);
  },

  subscribeToBbox: (bbox, cb) => {
    let coordinates = [bbox._southWest, bbox._northEast];
    request
      .post('/subscribe-to-bbox')
      .use(prefix)
      .set('Accept', 'application/json')
      .send(coordinates)
      .end((err, res) => {
        if (err) {
          cb(err);
        } else {
          cb(null, res.text);
        }
      });
  },

  getBboxSubscriptions: (cb) => {
    request
      .get('/bbox-subscriptions')
      .set('Accept', 'application/json')
      .use(prefix)
      .end(cb);
  },

  unsubscribeFromBboxes: (cb) => {
    request
      .delete('/unsubscribe-all-bboxes')
      .set('Accept', 'application/json')
      .use(prefix)
      .end(cb);
  }
};