use crate::{
    constants::{
        App::{self, TILEHOSTING_API_KEY},
        Categories::IDS,
        Map::DEFAULT_BBOX,
        URLs::{NOMINATIM, OFDB_API, TH_GEOCODER},
    },
    entities::*,
    Actions, Msg,
};
use futures::Future;
use seed::fetch::Request;

fn prefix() -> String {
    OFDB_API(&App::APP_STAGES::PRODUCTION)
}

// TODO: function normalizeCoordinate(bbox, idx) {
// TODO:     if (bbox.length > idx && bbox[idx] && (!isNaN(bbox[idx])) && bbox[idx] > 180) {
// TODO:         bbox[idx] = ((bbox[idx] + 180.0) % 360.0) - 180.0;
// TODO:     }
// TODO:     if (bbox.length > idx && bbox[idx] && (!isNaN(bbox[idx])) && bbox[idx] < -180) {
// TODO:         bbox[idx] = ((bbox[idx] - 180.0) % 360.0) + 180.0;
// TODO:     }
// TODO: }

pub fn searchEntries(
    txt: &Option<String>,
    cats: &[IDS],
    bbox: Option<&BBox>,
) -> impl Future<Item = Msg, Error = Msg> {
    // TODO: normalizeCoordinate(bbox, 1);
    // TODO: normalizeCoordinate(bbox, 3);

    let bbox: String = bbox_to_slice(bbox.unwrap_or(&default_bbox()))
        .into_iter()
        .map(|x| x.to_string())
        .collect::<Vec<_>>()
        .join(",");

    // TODO: .query((cats.length > 0) ? ('categories=' + cats.join(',')) : "")
    let cats: String = cats
        .into_iter()
        .map(|x| x.as_str())
        .collect::<Vec<_>>()
        .join(",");

    let url = format!(
        "{}/search?text={}&categories={}&bbox={}",
        prefix(),
        txt.as_ref().unwrap_or(&"".to_string()).trim(),
        cats,
        bbox
    );
    Request::new(url)
        .fetch_json_data(|d| Msg::Server(Actions::server::Msg::SEARCH_RESULT_ENTRIES(d)))
}

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

pub fn searchAddressNominatim(addr: &str) -> impl Future<Item = Msg, Error = Msg> {
    let url = format!(
        "{}/search?q={}&format=json&addressdetails=1",
        NOMINATIM::link,
        addr
    );
    Request::new(url)
        .fetch_json_data(|d| Msg::Server(Actions::server::Msg::SEARCH_ADDRESS_RESULT(d)))
}

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

const fn bbox_to_slice(bbox: &BBox) -> [f64; 4] {
    [
        bbox.south_west.lat,
        bbox.south_west.lng,
        bbox.north_east.lat,
        bbox.north_east.lng,
    ]
}

const fn default_bbox() -> BBox {
    use DEFAULT_BBOX::*;
    BBox {
        north_east: Coordinate {
            lat: _northEast::lat,
            lng: _northEast::lng,
        },
        south_west: Coordinate {
            lat: _southWest::lat,
            lng: _southWest::lng,
        },
    }
}
