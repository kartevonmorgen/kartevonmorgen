import T from "../constants/ActionTypes";
import mapConst from "../constants/Map";

const initialHash = "";
const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

module.exports = (state=initialHash, action={}) => {
  switch (action.type) {
    case T.UPDATE_STATE_FROM_URL:
      return window.location.hash;

    case T.URL_SET_CURRENT_ENTRY:
      window.location.hash = "/?" + (action.payload ? ("entry=" + action.payload) : "");
      return window.location.hash;

    case T.URL_SET_CENTER:   // fall through
    case T.URL_SET_ZOOM:
      if(!state.includes("entry")){
        const center = action.payload.center;
        window.location.hash = "/?"
          + "center=" + center.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
          + "," +  center.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
          + "&zoom=" + action.payload.zoom;
      }
      return window.location.hash;
    
    default:
      return state;
  }
};
