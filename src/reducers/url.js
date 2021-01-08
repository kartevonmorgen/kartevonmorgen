import isObject from "lodash/isObject"
import T from "../constants/ActionTypes";
import parseUrl from "../util/parseUrl";
import constructUrl from "../util/constructUrl";
import RoutingUsecases from "../constants/RoutingUsecases";
import Categories from "../constants/Categories";

const initialState = {
  hash: "", 
  routingUsecases: []
};

export default (state=initialState, action={}) => {

  if (action.type == T.UPDATE_STATE_FROM_URL) {
    var params = parseUrl(action.payload).params;
  } else if (state.hash != "") {
    params = parseUrl(state.hash).params;
  }

  if(params){
    // TODO parse Boolean for left?
    var { zoom, entry, search, tags, left, categories, addentry, fixedTags, dropdowns } = params;
    dropdowns = dropdowns || 'kvm'
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
      if (categories) {
        routingUsecases.push(RoutingUsecases.CHANGE_SEARCH_CATEGORIES);
      }
      if (zoom) {
        routingUsecases.push(RoutingUsecases.CHANGE_ZOOM);
      }
      if (addentry) {
        if (Object.keys(Categories.NAMES).filter(c => Categories.NAMES[c] === addentry).length) {
          routingUsecases.push(RoutingUsecases.SHOW_NEW_ENTRY)
        }
      }
      if (dropdowns) {
        routingUsecases.push(RoutingUsecases.SET_DROPDOWNS)
      }

      return {
        hash: action.payload,
        routingUsecases: routingUsecases
      };


    case T.SET_SEARCH_TEXT:
      search = action.payload;
      break;

    case T.SET_MAP_CENTER:
      if (isObject(action.payload)) {
        center = {
          lat: parseFloat(action.payload.lat),
          lng: parseFloat(action.payload.lng)
        };
      }
      break;

    case T.SET_ZOOM:
      zoom = action.payload;
      break;

    case T.SET_CURRENT_ENTRY:
      entry = action.payload;

      break;

    case T.SET_CENTER_IN_URL:
      center = {
        lat: parseFloat(action.payload.lat),
        lng: parseFloat(action.payload.lng)
      };
      break;

    case T.ENABLE_SEARCH_CATEGORY:
      let categoryName = Categories.NAMES[action.payload];
      if(!categories) {
        categories = categoryName
      } else if(!categories.includes(categoryName)){
        categories = categories + "," + categoryName;
      }
      break;

    case T.DISABLE_SEARCH_CATEGORY:
      if(categories){
        categoryName = Categories.NAMES[action.payload];
        const catList = categories.split(",");
        const newCats = catList.filter(c => c !== categoryName);
        categories = newCats.join(",");
      }
      break;

    default: 
      return state;
  }
  return {
    ...state,
    hash: constructUrl(entry, center, zoom, search, left, categories, fixedTags, dropdowns)
  }
};