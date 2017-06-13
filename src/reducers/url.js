import T from "../constants/ActionTypes";
import parseURL from "../util/parseURL";
import mapConst from "../constants/Map";

const initialHash = "";
const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

module.exports = (state=initialHash, action={}) => {
  // const { params } = parseURL(window.location.hash);
  // const {center, zoom } = params;

  // const latlng = center ? center.split(",") : null;

  // var current = null;
  // if(action.type == T.URL_SET_CENTER || action.type == T.URL_SET_ZOOM){
  //   current = {
  //     mapCenter: latlng ? { lat: parseFloat(latlng[0]), lng: parseFloat(latlng[1])} : action.payload.center,
  //     zoom: parseInt(zoom) || mapConst.DEFAULT_ZOOM,
  //   };
  // }

  switch (action.type) {
    case T.URL_SET_CURRENT_ENTRY:
      window.location.hash = "/?" + (action.payload ? ("entry=" + action.payload) : "");
      return window.location.hash;

    case T.URL_SET_CENTER:   // fall through
    case T.URL_SET_ZOOM:
      const center = action.payload.center;
      window.location.hash = "/?"
        + "center=" + center.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
        + "," +  center.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
        + "&zoom=" + action.payload.zoom;
      console.log("center or zoom:", window.location.hash, action.payload);
      return window.location.hash;
    
    default:
      return state;
  }
};
