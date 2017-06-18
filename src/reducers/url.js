import T from "../constants/ActionTypes";
import mapConst from "../constants/Map";
import parseURL from "../util/parseURL";

const initialHash = { hash: "" };
const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

module.exports = (state=initialHash, action={}) => {
  const { entry, center, zoom, home } = parseURL(window.location.hash).params;

  switch (action.type) {
    case T.UPDATE_STATE_FROM_URL:
      return {hash: window.location.hash};

    case T.URL_SET_CURRENT_ENTRY:
      window.location.hash = "/?"
        + (action.payload ? ("entry=" + action.payload + (zoom ? ("&zoom=" + zoom) : "")) : "");
      return {hash: window.location.hash};

    case T.URL_SET_CENTER:
      if(!state.hash.includes("entry")){
        const center = action.payload.center;
        window.location.hash = "/?"
          + "center=" + center.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
          + "," +  center.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
          + "&zoom=" + action.payload.zoom;
      }
      return {hash: window.location.hash};
    case T.URL_SET_ZOOM:
      const center = action.payload.center;
        window.location.hash = "/?"
          + (entry ? ("entry=" + entry) : ("center="
            + center.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
            + "," +  center.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)))
          + "&zoom=" + action.payload.zoom;
      return {hash: window.location.hash};
    
    default:
      return state;
  }
};
