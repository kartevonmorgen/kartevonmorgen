import T from "../constants/ActionTypes";
import mapConst from "../constants/Map";
import parseURL from "../util/parseURL";

const initialState = { 
  hash: ""
};

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const searchTextToUrlQuery = (text) => {
  const parts = text.split('#');
  const tags = parts.map(part => part.split(' ')[0]).slice(1, parts.length);
  const search = parts.map(part => part.split(' ')[1])
    .reduce((acc, part) => acc + " " + part);
  console.log(search);

  var text = "search=" + search;
  if(tags.length > 0){
    text += "&tags=" + tags.reduce((acc, tag) => acc + "," + tag);
  }
  return text;
}

module.exports = (state=initialState, action={}) => {
  const { entry, center, zoom, search, tags } = parseURL(window.location.hash).params;

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
        + "&" + searchTextToUrlQuery(action.search_text);
      console.log(searchTextToUrlQuery(action.search_text));
      return { hash: window.location.hash };
      // return { hash: "blubb" };

    default:
      return state;
  }
};
