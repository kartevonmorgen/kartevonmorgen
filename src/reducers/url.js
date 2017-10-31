import T from "../constants/ActionTypes";
import parseUrl from "../util/parseUrl";
import constructUrl from "../util/constructUrl";
import RoutingUsecases from "../constants/RoutingUsecases";

const initialState = {
  hash: "", 
  routingUsecases: []
};

module.exports = (state=initialState, action={}) => {

  if (action.type == T.UPDATE_STATE_FROM_URL) {
    var params = parseUrl(action.payload).params;
  } else if (state.hash != "") {
    params = parseUrl(state.hash).params;
  }

  if(params){
    // TODO parse Boolean for left?
    var { zoom, entry, search, tags, left} = params;
    var centerStr = params.center;
    var confirmEmail = params.confirm_email

    var center = centerStr ? {
      lat: parseFloat(centerStr.split(',')[0]),
      lng: parseFloat(centerStr.split(',')[1])
    } : null;
  }


  let routingUsecases = [];

  switch(action.type){
    case T.UPDATE_STATE_FROM_URL:
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
        if (centerStr && centerStr.includes(',') && (centerStr.length >= 3)) {
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

    case T.SET_CENTER_IN_URL:
      center = action.payload;
      break;

    default: 
      return state;
  }
  return {
    ...state,
    hash: constructUrl(entry, center, zoom, search, left)
  }
};