import T from "../constants/ActionTypes";
import V from "../constants/PanelView";
import mapConst from "../constants/Map";
import parseURL from "../util/parseURL";

const initialState = {url: ""};

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const searchTextToUrlQuery = (text) => {
  let query = "&search=" 
    + encodeURIComponent(text.replace(/^\s/, "").replace(/\s+/g, " "));
  return {url: query};
}

module.exports = (state=initialState, action={}) => {
  var { center, zoom, entry, search_text, view, show_left } = action;

  switch(action.type){
    case T.UPDATE_STATE_FROM_URL:
      return {url: window.location.hash};
    case T.URL_SET_CENTER: // falls through
    case T.URL_SET_ZOOM: // falls through
    case T.URL_SET_CURRENT_ENTRY: // falls through
    case T.URL_SET_SEARCH: // falls through
    case T.URL_SET_TAGS:
      if(!view || view.left != V.SUBSCRIBE_TO_BBOX){
        if(!entry && window.location.hash.includes("entry")){
          entry = /entry=([\w\d]*)/.exec(window.location.hash)[1];
        }
        window.location.hash = "/?"
          + ((entry && entry != "NONE") ? ("entry=" + entry) :
            ("center=" + center.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
            + "," +  center.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)))
          + "&zoom=" + zoom
          + ((entry && entry != "NONE") ? "" : (search_text ? searchTextToUrlQuery(search_text) : ""))
          + ((show_left != null) ? ("left=" + show_left ? "show" : "hide") : "");

        return {url: window.location.hash};
      }
      return state;

    default: 
      return state;
  }
};
