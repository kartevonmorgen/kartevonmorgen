import T from "../constants/ActionTypes";
import mapConst from "../constants/Map";
import parseURL from "../util/parseURL";

const initialState = { 
  hash: ""
};

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const searchTextToUrlQuery = (text) => {
  let query = "&search=" 
    + encodeURIComponent(text.replace(/^\s/, "").replace(/\s+/g, " "));
  return query;
}

module.exports = (state=initialState, action={}) => {
  var { center, zoom, entry, search_text } = action;

  if(action.type == T.UPDATE_STATE_FROM_URL){
      return {hash: window.location.hash};
  } else{
    if(window.location.hash.includes("entry")){
      entry = /entry=([\w\d]*)/.exec(window.location.hash)[1];
    }
    window.location.hash = "/?"
      + (entry ? ("entry=" + entry) :
        ("center=" + center.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
        + "," +  center.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)))
      + "&zoom=" + zoom
      + (entry ? "" : (search_text ? searchTextToUrlQuery(search_text) : ""));

    return { hash: window.location.hash };
  }
};
