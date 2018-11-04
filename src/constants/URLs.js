// for Internet Explorer:
if (!window.location.origin) {
  window.location.origin = window.location.protocol + "//" + window.location.hostname + (window.location.port ? ':' + window.location.port: '');
}

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
  OSM_TILES: {
    link: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
  },
  OFDB_API: {
    link: window.location.origin + "/api" //use when you run openfairdb locally
    //link: window.location.protocol + "//" + "api.ofdb.io/v0" //use this to use the remote api
  },
  TH_GEOCODER: {
    link: "https://geocoder.tilehosting.com/q/<query>.js?key=<key>"
  },
  NOMINATIM: {
    link: "https://nominatim.openstreetmap.org"
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