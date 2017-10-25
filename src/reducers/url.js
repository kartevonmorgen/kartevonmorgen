import T from "../constants/ActionTypes";
import V from "../constants/PanelView";
import mapConst from "../constants/Map";
import parseURL from "../util/parseURL";
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

    // case T.CHANGE_URL:
    //   const newCenter = action.center;
    //   const newZoom = action.zoom;
    //   var newEntry = action.entry;
    //   const { searchText, view, showLeft, hash } = action;
    //   if(!view || view.left != V.SUBSCRIBE_TO_BBOX){
    //     if(!newEntry && hash.includes("entry")){
    //       newEntry = /entry=([\w\d]*)/.exec(hash)[1];
    //     }
        
    //     return {
    //       ...state,
    //       hash: constructHash(newEntry, newCenter, newZoom, searchText, showLeft)
    //     };
    //   }
    //   return state;

    case T.SET_SEARCH_TEXT:
      const currentParams = parseURL(state.hash).params;
      const centerStr = parseURL(state.hash).params.center;
      const currentCenter = {
        lat: parseFloat(centerStr.split(',')[0]),
        lng: parseFloat(centerStr.split(',')[1])
      }
      const currentZoom = parseInt(currentParams.zoom);
      const currentEntry = currentParams.entry;
      const currentSearch = currentParams.search;
      const currentLeft = currentParams.left; // TODO parse boolean?

      return {
        ...state,
        hash: constructHash(currentEntry, currentCenter, currentZoom, action.payload, currentLeft)
      };

    default: 
      return state;
  }
};
