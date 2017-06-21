import T from "../constants/ActionTypes";
import mapConst from "../constants/Map";
import parseURL from "../util/parseURL";

const initialState = { 
  hash: ""
};

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const searchTextToUrlQuery = (text) => {
  const TAG_REGEX = /#(\w*)/g;
  const search = text.replace(TAG_REGEX, "").replace(/\s+/g, " ");
  let tags = [];
  var match;
  do {
    match = TAG_REGEX.exec(text);
    if(match) tags.push(match[1]);
  } while(match)

  let query = "&search=" + encodeURIComponent(search.trim());
  if(tags.length > 0){
    query += "&tags=" + tags.reduce((acc, tag) => acc + "," + encodeURIComponent(tag));
  }
  if(text[text.length-1] == ' '){
    query += "%20";
  }
  return query;
}

module.exports = (state=initialState, action={}) => {
  // const { entry, center, zoom, search, tags } = parseURL(window.location.hash).params;

  switch (action.type) {
    case T.UPDATE_STATE_FROM_URL:
      return {hash: window.location.hash};

    case T.URL_SET_CURRENT_ENTRY:
      if(action.entry){
        window.location.hash = "/?entry=" + action.entry 
          + (zoom ? ("&zoom=" + zoom) : "");
      } else{
        window.location.hash = "/?"
          + "center=" + action.center.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
          + "," +  action.center.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
          + "&zoom=" + action.zoom
          + (action.search ? ("&search=" + encodeURIComponent(action.search)) : "");
      }
      return { 
        // ...state,
        hash: window.location.hash 
      };

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

    case T.URL_SET_SEARCH:
      console.log("TEXT: ", action.search_text);
      window.location.hash = "/?"
        + "center=" + action.center.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
        + "," +  action.center.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
        + "&zoom=" + action.zoom
        + searchTextToUrlQuery(action.search_text);
      return { hash: window.location.hash };

    default:
      return state;
  }
};
