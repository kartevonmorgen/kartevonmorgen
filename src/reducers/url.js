import T from "../constants/ActionTypes";
import V from "../constants/PanelView";
import mapConst from "../constants/Map";
import parseURL from "../util/parseURL";
import RoutingUsecases from "../constants/RoutingUsecases";

const initialState = {
  hash: "", 
  routing_usecases: []
};

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const searchTextToUrlQuery = (text) => {
  let query = "&search=" 
    + encodeURIComponent(text.replace(/^\s/, "").replace(/\s+/g, " "));
  return query;
}

module.exports = (state=initialState, action={}) => {

  switch(action.type){
    case T.UPDATE_STATE_FROM_URL:
      const { params } = parseURL(action.payload);
      const { center, zoom, entry, search, tags, confirm_email, left} = params;

      const routing_usecases = [];
      if(left){
        routing_usecases.push(RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY);
      }
      if(!params || Object.keys(params).length == 0){
        routing_usecases.push(RoutingUsecases.NO_ROUTING);
      } else if(confirm_email){
        routing_usecases.push(RoutingUsecases.CONFIRM_EMAIL);
      } else if(!view){
          if(entry){ 
            routing_usecases.push(RoutingUsecases.SHOW_ENTRY);
          }   
          else if (center && center.includes(',') && (center.length >= 3)) {
            routing_usecases.push(RoutingUsecases.CHANGE_CENTER);   
          }
          else if (search || tags || search == "" || tags == "") {
            routing_usecases.push(RoutingUsecases.CHANGE_SEARCH);
          }
          if (zoom) {
            routing_usecases.push(RoutingUsecases.CHANGE_ZOOM);
          }
      }

      return {
        hash: action.payload,
        routing_usecases: routing_usecases
      };

    case T.CHANGE_URL:
      const newCenter = action.center;
      const newZoom = action.zoom;
      var newEntry = action.entry;
      const { search_text, view, show_left, hash } = action;
      if(!view || view.left != V.SUBSCRIBE_TO_BBOX){
        if(!newEntry && hash.includes("entry")){
          newEntry = /entry=([\w\d]*)/.exec(hash)[1];
        }
        const newHash = "#/?"
          + ((newEntry && newEntry != "NONE") ? ("entry=" + newEntry) :
            ("center=" + newCenter.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
            + "," +  newCenter.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)))
          + "&zoom=" + newZoom
          + ((newEntry && newEntry != "NONE") ? "" : (search_text ? searchTextToUrlQuery(search_text) : ""))
          + ((show_left != null) ? ("left=" + show_left ? "show" : "hide") : "");

        return {
          ...state,
          hash: newHash
        };
      }
      return state;

    default: 
      return state;
  }
};
