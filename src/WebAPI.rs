// TODO: import request from "superagent/lib/client";
// TODO: import saPrefix from "superagent-prefix";
// TODO: import { TILEHOSTING_API_KEY } from "./constants/App";
// TODO: import { OFDB_API, TH_GEOCODER, NOMINATIM } from "./constants/URLs"
// TODO: import CATEGORY_IDS from "./constants/Categories";
// TODO:
// TODO: const prefix = saPrefix(OFDB_API.link);
// TODO:
// TODO: const jsonCallback = (cb) => (err, res) => {
// TODO:   if (err) {
// TODO:     cb(err);
// TODO:   } else {
// TODO:     cb(null, res.body);
// TODO:   }
// TODO: };
// TODO:
// TODO: function normalizeCoordinate(bbox, idx) {
// TODO:     if (bbox.length > idx && bbox[idx] && (!isNaN(bbox[idx])) && bbox[idx] > 180) {
// TODO:         bbox[idx] = ((bbox[idx] + 180.0) % 360.0) - 180.0;
// TODO:     }
// TODO:     if (bbox.length > idx && bbox[idx] && (!isNaN(bbox[idx])) && bbox[idx] < -180) {
// TODO:         bbox[idx] = ((bbox[idx] - 180.0) % 360.0) + 180.0;
// TODO:     }
// TODO: }
// TODO:
// TODO: module.exports = {
// TODO:
// TODO:   searchEntries: (txt, cats, bbox, cb) => {
// TODO:
// TODO:     if (txt == null) {
// TODO:       txt = '';
// TODO:     }
// TODO:     if (cats == null) {
// TODO:       cats = [];
// TODO:     }
// TODO:     if (bbox == null) {
// TODO:       bbox = [];
// TODO:     }
// TODO:     normalizeCoordinate(bbox, 1);
// TODO:     normalizeCoordinate(bbox, 3);
// TODO:     request
// TODO:       .get('/search')
// TODO:       .use(prefix)
// TODO:       .query({
// TODO:         text: txt.trim()
// TODO:       })
// TODO:       .query((cats.length > 0) ? ('categories=' + cats.join(',')) : "")
// TODO:       .query('bbox=' + bbox.join(','))
// TODO:       .set('Accept', 'application/json')
// TODO:       .end(jsonCallback(cb));
// TODO:   },
// TODO:
// TODO:   searchEvents: (tags, bbox, start, end, cb) => {
// TODO:     if (bbox == null) {
// TODO:       bbox = [];
// TODO:     }
// TODO:     normalizeCoordinate(bbox, 1);
// TODO:     normalizeCoordinate(bbox, 3);
// TODO:     let req = request
// TODO:       .get('/events')
// TODO:       .use(prefix)
// TODO:       .set('Accept', 'application/json');
// TODO:     if(bbox && bbox.length > 0) req.query('bbox=' + bbox.join(','))
// TODO:     if(tags && tags.length > 0) req.query('tags=' + tags) // TODO
// TODO:     if(start) req.query(start ? ('start_min=' + start) : "")
// TODO:     if(end) req.query(end ? ('start_max=' + end) : "")
// TODO:
// TODO:     req.end(jsonCallback(cb));
// TODO:   },
// TODO:
// TODO:   getEvent: (id, cb) => {
// TODO:     request
// TODO:       .get('/events/' + id)
// TODO:       .use(prefix)
// TODO:       .set('Accept', 'application/json')
// TODO:       .end(jsonCallback(cb));
// TODO:   },
// TODO:
// TODO:   searchAddressTilehosting: (addr, cb) => {
// TODO:     let query = TH_GEOCODER.link.replace("<query>", addr).replace("<key>", TILEHOSTING_API_KEY);
// TODO:     if (addr != null && addr != "") {
// TODO:       request
// TODO:         .get(query)
// TODO:         .set('Accept', 'application/json')
// TODO:         .end(jsonCallback(cb));
// TODO:     }
// TODO:   },
// TODO:
// TODO:   searchAddressNominatim: (addr, cb) => {
// TODO:     if (addr == null) {
// TODO:       addr = '';
// TODO:     }
// TODO:     request
// TODO:       .get('/search')
// TODO:       .use(saPrefix(NOMINATIM.link))
// TODO:       .query({
// TODO:         q: addr
// TODO:       })
// TODO:       .query({
// TODO:         format: 'json'
// TODO:       })
// TODO:       .query({
// TODO:         addressdetails: 1
// TODO:       })
// TODO:       .set('Accept', 'application/json')
// TODO:       .end(jsonCallback(cb));
// TODO:   },
// TODO:
// TODO:   searchGeolocation: (latlng, cb) => {
// TODO:
// TODO:     if (latlng == null) {
// TODO:       latlng = {
// TODO:         lat: 0.0,
// TODO:         lng: 0.0
// TODO:       };
// TODO:     }
// TODO:
// TODO:     request
// TODO:       .get('/reverse')
// TODO:       .use(saPrefix(NOMINATIM.link))
// TODO:       .query({
// TODO:         lat: latlng.lat
// TODO:       })
// TODO:       .query({
// TODO:         lon: latlng.lng
// TODO:       })
// TODO:       .query({
// TODO:         zoom: 18
// TODO:       })
// TODO:       .query({
// TODO:         format: 'json'
// TODO:       })
// TODO:       .query({
// TODO:         addressdetails: 1
// TODO:       })
// TODO:       .set('Accept', 'application/json')
// TODO:       .end(jsonCallback(cb));
// TODO:   },
// TODO:
// TODO:   getEntries: (ids = [], cb) => {
// TODO:
// TODO:     if (!Array.isArray(ids)) {
// TODO:       ids = [ids];
// TODO:     }
// TODO:
// TODO:     if (ids.length < 1) {
// TODO:       cb(new Error("no IDs were passed"));
// TODO:     } else {
// TODO:       request
// TODO:         .get('/entries/' + ids.join(','))
// TODO:         .use(prefix).set('Accept', 'application/json')
// TODO:         .end(jsonCallback(cb));
// TODO:     }
// TODO:   },
// TODO:
// TODO:   getRatings: (ids = [], cb) => {
// TODO:
// TODO:     if (!Array.isArray(ids)) {
// TODO:       ids = [ids];
// TODO:     }
// TODO:
// TODO:     if (ids.length < 1) {
// TODO:       cb(new Error("no IDs were passed"));
// TODO:     } else {
// TODO:       request
// TODO:         .get('/ratings/' + ids.join(','))
// TODO:         .use(prefix).set('Accept', 'application/json')
// TODO:         .end(jsonCallback(cb));
// TODO:     }
// TODO:   },
// TODO:
// TODO:   saveNewEntry: (e, cb) => {
// TODO:     request
// TODO:       .post('/entries/')
// TODO:       .use(prefix)
// TODO:       .set('Accept', 'application/json')
// TODO:       .send(e)
// TODO:       .end((err, res) => {
// TODO:         if (err) {
// TODO:           cb(err);
// TODO:         } else {
// TODO:           cb(null, res.text.replace( /"/g ,""));
// TODO:         }
// TODO:       });
// TODO:   },
// TODO:
// TODO:   saveEntry: (e, cb) => {
// TODO:     request
// TODO:       .put('/entries/' + e.id)
// TODO:       .use(prefix)
// TODO:       .set('Accept', 'application/json')
// TODO:       .send(e)
// TODO:       .end((err, res) => {
// TODO:         if (err) {
// TODO:           cb(err);
// TODO:         } else {
// TODO:           cb(null, res.text);
// TODO:         }
// TODO:       });
// TODO:   },
// TODO:
// TODO:   createRating: (r, cb) => {
// TODO:     request
// TODO:       .post('/ratings/')
// TODO:       .use(prefix)
// TODO:       .set('Accept', 'application/json')
// TODO:       .send(r)
// TODO:       .end((err, res) => {
// TODO:         if (err) {
// TODO:           cb(err);
// TODO:         } else {
// TODO:           cb(null, res.text);
// TODO:         }
// TODO:       });
// TODO:   },
// TODO:
// TODO:   getAllCategories: (cb) => {
// TODO:     request
// TODO:       .get('/categories/')
// TODO:       .use(prefix)
// TODO:       .set('Accept', 'application/json')
// TODO:       .end(cb);
// TODO:   },
// TODO:
// TODO:   getServerInfo: (cb) => {
// TODO:     request
// TODO:       .get('/server/version')
// TODO:       .set('Accept', 'application/json')
// TODO:       .use(prefix)
// TODO:       .end((err, res) => {
// TODO:         if (err) {
// TODO:           cb(err);
// TODO:         } else {
// TODO:           cb(null, {
// TODO:             version: res.text
// TODO:           });
// TODO:         }
// TODO:       });
// TODO:   },
// TODO:
// TODO:   register: ({
// TODO:     email,
// TODO:     password,
// TODO:   }, cb) => {
// TODO:     request
// TODO:       .post('/users')
// TODO:       .use(prefix)
// TODO:       .set('Accept', 'application/json')
// TODO:       .send({
// TODO:         email,
// TODO:         password
// TODO:       })
// TODO:       .end(cb);
// TODO:   },
// TODO:
// TODO:   login: ({
// TODO:     email,
// TODO:     password
// TODO:   }, cb) => {
// TODO:     request
// TODO:       .post('/login')
// TODO:       .set('Accept', 'application/json')
// TODO:       .use(prefix)
// TODO:       .withCredentials()
// TODO:       .send({
// TODO:         email,
// TODO:         password
// TODO:       })
// TODO:       .end(cb);
// TODO:   },
// TODO:
// TODO:   getUser: (email, cb) => {
// TODO:     request
// TODO:       .get('/users/' + email)
// TODO:       .set('Accept', 'application/json')
// TODO:       .use(prefix)
// TODO:       .withCredentials()
// TODO:       .end(cb);
// TODO:   },
// TODO:
// TODO:   logout: (cb) => {
// TODO:     request
// TODO:       .post('/logout')
// TODO:       .set('Accept', 'application/json')
// TODO:       .use(prefix)
// TODO:       .withCredentials()
// TODO:       .end(cb);
// TODO:   },
// TODO:
// TODO:   confirmEmail: (token, cb) => {
// TODO:     request
// TODO:       .post('/confirm-email-address')
// TODO:       .set('Accept', 'application/json')
// TODO:       .use(prefix)
// TODO:       .send({
// TODO:         token
// TODO:       })
// TODO:       .end(cb);
// TODO:   },
// TODO:
// TODO:   deleteAccount: (email, cb) => {
// TODO:     request
// TODO:       .delete('/users/' + email)
// TODO:       .set('Accept', 'application/json')
// TODO:       .use(prefix)
// TODO:       .withCredentials()
// TODO:       .end(cb);
// TODO:   },
// TODO:
// TODO:   subscribeToBbox: (bbox, cb) => {
// TODO:     let coordinates = [bbox._southWest, bbox._northEast];
// TODO:     request
// TODO:       .post('/subscribe-to-bbox')
// TODO:       .use(prefix)
// TODO:       .set('Accept', 'application/json')
// TODO:       .send(coordinates)
// TODO:       .end((err, res) => {
// TODO:         if (err) {
// TODO:           cb(err);
// TODO:         } else {
// TODO:           cb(null, res.text);
// TODO:         }
// TODO:       });
// TODO:   },
// TODO:
// TODO:   getBboxSubscriptions: (cb) => {
// TODO:     request
// TODO:       .get('/bbox-subscriptions')
// TODO:       .set('Accept', 'application/json')
// TODO:       .use(prefix)
// TODO:       .end(cb);
// TODO:   },
// TODO:
// TODO:   unsubscribeFromBboxes: (cb) => {
// TODO:     request
// TODO:       .delete('/unsubscribe-all-bboxes')
// TODO:       .set('Accept', 'application/json')
// TODO:       .use(prefix)
// TODO:       .end(cb);
// TODO:   }
// TODO: };
