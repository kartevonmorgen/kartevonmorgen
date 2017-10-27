import T from "../constants/ActionTypes";
import V from "../constants/PanelView";
import parseUrl from "../util/parseUrl";
import constructUrl from "../util/constructUrl";
import RoutingUsecases from "../constants/RoutingUsecases";

const initialState = {
  hash: "", 
  routingUsecases: []
};

const NUM_DECIMAL_PLACES_FOR_CENTER = 4;

const searchTextToUrlQuery = (text) => {
  let query = "&search=" 
    + encodeURIComponent(text.replace(/^\s/, "").replace(/\s+/g, " "));
  return query;
}

const constructHash = (entry, center, zoom, searchText, showLeft) => {
  return "#/?"
    + ((entry && entry != "NONE") ? ("entry=" + entry) :
      ("center=" + center.lat.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)
      + "," +  center.lng.toFixed(NUM_DECIMAL_PLACES_FOR_CENTER)))
    + "&zoom=" + zoom
    + ((entry && entry != "NONE") ? "" : (searchText ? searchTextToUrlQuery(searchText) : ""))
    + ((showLeft != null) ? ("left=" + showLeft ? "show" : "hide") : "");
}

module.exports = (state=initialState, action={}) => {

  switch(action.type){
    case T.UPDATE_STATE_FROM_URL:
      const { params } = parseURL(action.payload);
      const { center, zoom, entry, search, tags, confirmEmail, left} = params;

      const routingUsecases = [];
      if(left){
        routingUsecases.push(RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY);
      }
      if(!params || Object.keys(params).length == 0){
        routingUsecases.push(RoutingUsecases.NO_ROUTING);
      } else if(confirmEmail){
        routingUsecases.push(RoutingUsecases.CONFIRM_EMAIL);
      } else if(entry){ 
          routingUsecases.push(RoutingUsecases.SHOW_ENTRY);
      } else {
        if (center && center.includes(',') && (center.length >= 3)) {
          routingUsecases.push(RoutingUsecases.CHANGE_CENTER);   
        }
        if (search || tags || search == "" || tags == "") {
          routingUsecases.push(RoutingUsecases.CHANGE_SEARCH);
        }
      }
      if (zoom) {
        routingUsecases.push(RoutingUsecases.CHANGE_ZOOM);
      }

      return {
        hash: action.payload,
        routingUsecases: routingUsecases
      };


    case T.SET_SEARCH_TEXT:
      search = action.payload;
      break;

    case T.SET_MAP_CENTER:
      center = action.payload;
      break;

    case T.SET_ZOOM:
      zoom = action.payload;
      break;

    case T.SET_CURRENT_ENTRY:
      entry = action.payload;
      break;

    default: 
      return state;
  }
  return {
    ...state,
    hash: constructUrl(entry, center, zoom, search, left)
  }
};