import { APP_STAGES } from "./App"

// for Internet Explorer:
if (!window.location.origin) {
  window.location.origin = window.location.protocol + "//" + window.location.hostname + (window.location.port ? ':' + window.location.port: '');
}

const API_VERSION = 'v0';
const OFDB_API_LINK = (() => {
  switch (__STAGE__){
    case APP_STAGES.LOCAL:
      return "https://api.ofdb.io/";

    case APP_STAGES.BETA:
      return "https://api.ofdb.io/";

    case APP_STAGES.NIGHTLY:
      return "https://api.ofdb.io/";

    default:
      // production
      return "https://kartevonmorgen.org/api/";
  }
})() + API_VERSION;


const PUBLIC_RESOURSES = (() => {
  switch (__STAGE__) {
    case APP_STAGES.LOCAL:
      return "./public"
    case APP_STAGES.NIGHTLY:
      return "https://test.kartevonmorgen.org/public"
    case APP_STAGES.BETA:
      return "https://beta.kartevonmorgen.org/public"
    default:
      return "https://kartevonmorgen.org/public";
  }
})()

export const CC_LICENSE = {
    name: "creativecommons.org/publicdomain/zero/1.0/deed.de",
    link: "https://creativecommons.org/publicdomain/zero/1.0/deed.de"
  }

export const ODBL_LICENSE = {
    name: "opendatacommons.org/licenses/odbl/summary/",
    link: "https://opendatacommons.org/licenses/odbl/summary/"
  }

export const APP = {
    name: "kartevonmorgen.org",
    link: "https://kartevonmorgen.org"
  }

export const PROTOTYPE = {
    name: "mobile.kartevonmorgen.org",
    link: "https://mobile.kartevonmorgen.org"
  }

export const REPOSITORY = {
		name: "github.com/kartevonmorgen/",
    link: "https://github.com/kartevonmorgen/"
  }

export const FACEBOOK = {
    name: "facebook.com/vonmorgen",
    link: "https://www.facebook.com/vonmorgen"
  }

export const MAIL = {
    name: "info@kartevonmorgen.org",
    link: "mailto:info@kartevonmorgen.org"
  }

export const  OSM_ATTR = {
    name: "OpenStreetMap Contributors",
    link: "https://osm.org/copyright"
  }

export const TILE_SERVER = {
    link: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
  }

export const  TILE_SERVER_ATTR = {
    name: "Fix",
    link: "https://www.openstreetmap.org/fixthemap"
  }

export const OFDB_API = {
    link: OFDB_API_LINK
  }

export const TH_GEOCODER = {
    link: "https://geocoder.tilehosting.com/q/<query>.js?key=<key>"
  }

export const  NOMINATIM= {
    link: "https://nominatim.openstreetmap.org"
  }

export const  ROUTEPLANNERS = {

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
  }

export const DONATE = {
    name: "www.betterplace.org/de/projects/36213",
    link: "https://www.betterplace.org/de/projects/36213"
  }

export const JOB_ADS = {
    name: "www.betterplace.org/de/organisations/vonmorgen",
    link: "https://www.betterplace.org/de/organisations/vonmorgen"
  }

export const ENTRY_HISTORY = {
    name: "EntryOpenFairDB",
    link: "https://openfairdb.org/entries",
  }

export const  EVENT_HISTORY = {
    name: "EventOpenFairDB",
    link: "https://openfairdb.org/events"
  }

export const  PROMINENT_TAGS = {
    link: "https://blog.vonmorgen.org/prominent-tags/"
  }

export const  CORS_PROXY = {
    // this is used to bypass cors, one of it's use cases is to fetch prominent tags
    link: "https://cors-anywhere.herokuapp.com"
  }

export const  PUBLIC_RESOURCES = {
    link: PUBLIC_RESOURSES
}
