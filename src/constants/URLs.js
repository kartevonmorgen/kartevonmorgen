import { APP_STAGES } from "./App"

// for Internet Explorer:
if (!window.location.origin) {
  window.location.origin = window.location.protocol + "//" + window.location.hostname + (window.location.port ? ':' + window.location.port: '');
}

const API_VERSION = 'v0';
const OFDB_API_LINK = (() => {
  switch (__STAGE__){
    case APP_STAGES.LOCAL:
      return "https://nightly.ofdb.io/";

    case APP_STAGES.NIGHTLY:
      return "https://nightly.ofdb.io/";
    
    default:
      // production
      return "https://kartevonmorgen.org/api/";
  }
})() + API_VERSION;

module.exports = {
  CC_LICENSE: {
    name: "creativecommons.org/publicdomain/zero/1.0/deed.de",
    link: "https://creativecommons.org/publicdomain/zero/1.0/deed.de"
  },
  ODBL_LICENSE: {
    name: "opendatacommons.org/licenses/odbl/summary/",
    link: "https://opendatacommons.org/licenses/odbl/summary/"
  },
  APP: {
    name: "kartevonmorgen.org",
    link: "https://kartevonmorgen.org"
  },
  PROTOTYPE: {
    name: "prototyp.kartevonmorgen.org",
    link: "https://prototyp.kartevonmorgen.org"
  },
  REPOSITORY: {
    name: "github.com/flosse/kartevonmorgen",
    link: "https://github.com/flosse/kartevonmorgen"
  },
  FACEBOOK: {
    name: "facebook.com/vonmorgen",
    link: "https://www.facebook.com/vonmorgen"
  },
  MAIL: {
    name: "info@kartevonmorgen.org",
    link: "mailto:info@kartevonmorgen.org"
  },
  OSM_ATTR: {
    name: "OpenStreetMap",
    link: "https://osm.org/copyright"
  },
  TILE_SERVER: {
    link: "https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}{r}.png"
  },
  TILE_SERVER_ATTR: {
    name: "Wikimedia",
    link: "https://wikimediafoundation.org/wiki/Maps_Terms_of_Use"
  },
  OFDB_API: {
    link: OFDB_API_LINK
  },
  TH_GEOCODER: {
    link: "https://geocoder.tilehosting.com/q/<query>.js?key=<key>"
  },
  NOMINATIM: {
    link: "https://nominatim.openstreetmap.org"
  },
  ROUTEPLANNERS: {
    default: {
      name: "Graphhopper Maps",
      link: "https://graphhopper.com/maps/?point=&point={addr}&locale=de-DE&vehicle=bike&weighting=fastest&elevation=false&use_miles=false&layer=Omniscale"
    },
    apple: {
      name: "Apple Maps",
      link: "http://maps.apple.com/?daddr={addr}&dirflg=w"
    },
    android: {
      name: "GeoURI",
      link: "geo:{lat},{lng}"
    }
  },
  DONATE: {
    name: "www.betterplace.org/de/projects/36213",
    link: "https://www.betterplace.org/de/projects/36213"
  },
  JOB_ADS: {
    name: "www.betterplace.org/de/organisations/vonmorgen",
    link: "https://www.betterplace.org/de/organisations/vonmorgen"
  }
};
