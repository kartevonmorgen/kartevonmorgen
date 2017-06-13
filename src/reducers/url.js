import T from "../constants/ActionTypes";
import parseURL from "../util/parseURL";
import mapConst from "../constants/Map";

const initialHash = "";
const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

module.exports = (state=initialHash, action={}) => {
  const { params } = parseURL(window.location.hash);
  const {center, zoom } = params;

  const latlng = center ? center.split(",") : null;

  const current = {
    mapCenter: latlng ? { lat: parseFloat(latlng[0]), lng: parseFloat(latlng[1])} : action.payload.current.center,
    zoom: parseInt(zoom) || mapConst.DEFAULT_ZOOM,
  };

  switch (action.type) {
    case T.URL_SET_CURRENT_ENTRY:
      window.location.hash = "/?" + (action.payload ? ("entry=" + action.payload) : "");
      return window.location.hash;

    case T.URL_SET_MAP_CENTER:
      
      const latlngNew = action.payload.new.center.split(",");

      window.location.hash = "/?"
        + "center=" + parseFloat(latlngNew[0]).toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
        + "," +  parseFloat(latlngNew[1]).toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
        + "&zoom=" + current.zoom;
      return window.location.hash;
    
    case T.URL_SET_ZOOM:
      window.location.hash = "/?"
        + "center=" + current.mapCenter.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
        + "," + current.mapCenter.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
        + "&zoom=" + action.payload.new.zoom;
      return window.location.hash

    default:
      return state;
  }
};
