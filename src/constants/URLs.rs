// TODO: import { APP_STAGES } from "./App"
// TODO: 
// TODO: // for Internet Explorer:
// TODO: if (!window.location.origin) {
// TODO:   window.location.origin = window.location.protocol + "//" + window.location.hostname + (window.location.port ? ':' + window.location.port: '');
// TODO: }
// TODO: 
// TODO: const API_VERSION = 'v0';
// TODO: const OFDB_API_LINK = (() => {
// TODO:   switch (__STAGE__){
// TODO:     case APP_STAGES.LOCAL:
// TODO:       return "/api/";
// TODO: 
// TODO:     case APP_STAGES.NIGHTLY:
// TODO:       return "https://nightly.ofdb.io/";
// TODO: 
// TODO:     default:
// TODO:       // production
// TODO:       return "https://kartevonmorgen.org/api/";
// TODO:   }
// TODO: })() + API_VERSION;
// TODO: 
// TODO: module.exports = {
// TODO:   CC_LICENSE: {
// TODO:     name: "creativecommons.org/publicdomain/zero/1.0/deed.de",
// TODO:     link: "https://creativecommons.org/publicdomain/zero/1.0/deed.de"
// TODO:   },
// TODO:   ODBL_LICENSE: {
// TODO:     name: "opendatacommons.org/licenses/odbl/summary/",
// TODO:     link: "https://opendatacommons.org/licenses/odbl/summary/"
// TODO:   },
// TODO:   APP: {
// TODO:     name: "kartevonmorgen.org",
// TODO:     link: "https://kartevonmorgen.org"
// TODO:   },
// TODO:   PROTOTYPE: {
// TODO:     name: "prototyp.kartevonmorgen.org",
// TODO:     link: "https://prototyp.kartevonmorgen.org"
// TODO:   },
// TODO:   REPOSITORY: {
// TODO:     name: "github.com/flosse/kartevonmorgen",
// TODO:     link: "https://github.com/flosse/kartevonmorgen"
// TODO:   },
// TODO:   FACEBOOK: {
// TODO:     name: "facebook.com/vonmorgen",
// TODO:     link: "https://www.facebook.com/vonmorgen"
// TODO:   },
// TODO:   MAIL: {
// TODO:     name: "info@kartevonmorgen.org",
// TODO:     link: "mailto:info@kartevonmorgen.org"
// TODO:   },
// TODO:   OSM_ATTR: {
// TODO:     name: "OpenStreetMap",
// TODO:     link: "https://osm.org/copyright"
// TODO:   },
// TODO:   TILE_SERVER: {
// TODO:     link: "https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}{r}.png"
// TODO:   },
// TODO:   TILE_SERVER_ATTR: {
// TODO:     name: "Wikimedia",
// TODO:     link: "https://wikimediafoundation.org/wiki/Maps_Terms_of_Use"
// TODO:   },
// TODO:   OFDB_API: {
// TODO:     link: OFDB_API_LINK
// TODO:   },
// TODO:   TH_GEOCODER: {
// TODO:     link: "https://geocoder.tilehosting.com/q/<query>.js?key=<key>"
// TODO:   },
// TODO:   NOMINATIM: {
// TODO:     link: "https://nominatim.openstreetmap.org"
// TODO:   },
// TODO:   ROUTEPLANNERS: {
// TODO:     default: {
// TODO:       name: "Graphhopper Maps",
// TODO:       link: "https://graphhopper.com/maps/?point=&point={addr}&locale=de-DE&vehicle=bike&weighting=fastest&elevation=false&use_miles=false&layer=Omniscale"
// TODO:     },
// TODO:     apple: {
// TODO:       name: "Apple Maps",
// TODO:       link: "http://maps.apple.com/?daddr={addr}&dirflg=w"
// TODO:     },
// TODO:     android: {
// TODO:       name: "GeoURI",
// TODO:       link: "geo:{lat},{lng}"
// TODO:     }
// TODO:   },
// TODO:   DONATE: {
// TODO:     name: "www.betterplace.org/de/projects/36213",
// TODO:     link: "https://www.betterplace.org/de/projects/36213"
// TODO:   },
// TODO:   JOB_ADS: {
// TODO:     name: "www.betterplace.org/de/organisations/vonmorgen",
// TODO:     link: "https://www.betterplace.org/de/organisations/vonmorgen"
// TODO:   }
// TODO: };
