let URL = "https://api.ofdb.io/v0";

if (__DEVELOPMENT__) {
  URL = "http://127.0.0.1:6768";
}

const NOMINATIM = "https://nominatim.openstreetmap.org";
const OVERPASS = "https://search.osmnames.org/q/";

import request  from "superagent/lib/client";
import saPrefix from "superagent-prefix";

const prefix = saPrefix(URL);

const jsonCallback = (cb) => (err, res) => {
  if (err) {
    cb(err);
  } else {
    cb(null, res.body);
  }
};

module.exports = {

  search: (txt, cats, bbox, cb) => {

    if (txt == null)  { txt  = ''; }
    if (cats == null) { cats = []; }
    if (bbox == null) { bbox = []; }

    request
      .get('/search')
      .use(prefix)
      .query({ text: txt.trim().split(' ') })
      .query('categories=' + cats.join(','))
      .query('bbox=' + bbox.join(','))
      .set('Accept', 'application/json')
      .end(jsonCallback(cb));
  },

  searchAddress: (addr, cb) => {

    if (addr != null && addr != ""){
      request
        .get(OVERPASS + addr + ".js")
        .set('Accept', 'application/json')
        .end(jsonCallback(cb));
    }
  },

  searchGeolocation: (latlng, cb) => {

    if (latlng == null) {
      latlng = { lat: 0.0, lng: 0.0 };
    }

    request
      .get('/reverse')
      .use(saPrefix(NOMINATIM))
      .query({ lat: latlng.lat })
      .query({ lon: latlng.lng })
      .query({ zoom: 18 })
      .query({ format: 'json' })
      .query({ addressdetails: 1 })
      .set('Accept', 'application/json')
      .end(jsonCallback(cb));
  },

  getEntries: (ids=[], cb) => {

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

  getRatings: (ids=[], cb) => {

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
          cb(null, res.text);
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

  createRaing: (r, cb) => {
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
          cb(null, { version: res.text });
        }
    });
  }
};
