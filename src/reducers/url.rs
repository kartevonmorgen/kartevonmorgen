// TODO: import T from "../constants/ActionTypes";
// TODO: import parseUrl from "../util/parseUrl";
// TODO: import constructUrl from "../util/constructUrl";
// TODO: import RoutingUsecases from "../constants/RoutingUsecases";
// TODO: import Categories from "../constants/Categories";
// TODO:
// TODO: const initialState = {
// TODO:   hash: "",
// TODO:   routingUsecases: []
// TODO: };
// TODO:
// TODO: module.exports = (state=initialState, action={}) => {
// TODO:
// TODO:   if (action.type == T.UPDATE_STATE_FROM_URL) {
// TODO:     var params = parseUrl(action.payload).params;
// TODO:   } else if (state.hash != "") {
// TODO:     params = parseUrl(state.hash).params;
// TODO:   }
// TODO:
// TODO:   if(params){
// TODO:     // TODO parse Boolean for left?
// TODO:     var { zoom, entry, search, tags, left, categories } = params;
// TODO:     var centerStr = params.center;
// TODO:     var confirmEmail = params.confirm_email
// TODO:
// TODO:     var center = centerStr ? {
// TODO:       lat: parseFloat(centerStr.split(',')[0]),
// TODO:       lng: parseFloat(centerStr.split(',')[1])
// TODO:     } : null;
// TODO:   }
// TODO:
// TODO:   let routingUsecases = [];
// TODO:
// TODO:   switch(action.type){
// TODO:     case T.UPDATE_STATE_FROM_URL:
// TODO:       if(left){
// TODO:         routingUsecases.push(RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY);
// TODO:       }
// TODO:       if(!params || Object.keys(params).length == 0){
// TODO:         routingUsecases.push(RoutingUsecases.NO_ROUTING);
// TODO:       } else if(confirmEmail){
// TODO:         routingUsecases.push(RoutingUsecases.CONFIRM_EMAIL);
// TODO:       } else if(entry){
// TODO:         routingUsecases.push(RoutingUsecases.SHOW_ENTRY);
// TODO:       } else {
// TODO:         if (centerStr && centerStr.includes(',') && (centerStr.length >= 3)) {
// TODO:           routingUsecases.push(RoutingUsecases.CHANGE_CENTER);
// TODO:         }
// TODO:         if (search || tags || search == "" || tags == "") {
// TODO:           routingUsecases.push(RoutingUsecases.CHANGE_SEARCH);
// TODO:         }
// TODO:       }
// TODO:       if (categories) {
// TODO:         routingUsecases.push(RoutingUsecases.CHANGE_SEARCH_CATEGORIES);
// TODO:       }
// TODO:       if (zoom) {
// TODO:         routingUsecases.push(RoutingUsecases.CHANGE_ZOOM);
// TODO:       }
// TODO:
// TODO:       return {
// TODO:         hash: action.payload,
// TODO:         routingUsecases: routingUsecases
// TODO:       };
// TODO:
// TODO:
// TODO:     case T.SET_SEARCH_TEXT:
// TODO:       search = action.payload;
// TODO:       break;
// TODO:
// TODO:     case T.SET_MAP_CENTER:
// TODO:       center = center = {
// TODO:         lat: parseFloat(action.payload.lat),
// TODO:         lng: parseFloat(action.payload.lng)
// TODO:       };
// TODO:       break;
// TODO:
// TODO:     case T.SET_ZOOM:
// TODO:       zoom = action.payload;
// TODO:       break;
// TODO:
// TODO:     case T.SET_CURRENT_ENTRY:
// TODO:       entry = action.payload;
// TODO:       break;
// TODO:
// TODO:     case T.SET_CENTER_IN_URL:
// TODO:       center = {
// TODO:         lat: parseFloat(action.payload.lat),
// TODO:         lng: parseFloat(action.payload.lng)
// TODO:       };
// TODO:       break;
// TODO:
// TODO:     case T.ENABLE_SEARCH_CATEGORY:
// TODO:       let categoryName = Categories.NAMES[action.payload];
// TODO:       if(!categories) {
// TODO:         categories = categoryName
// TODO:       } else if(!categories.includes(categoryName)){
// TODO:         categories = categories + "," + categoryName;
// TODO:       }
// TODO:       break;
// TODO:
// TODO:     case T.DISABLE_SEARCH_CATEGORY:
// TODO:       if(categories){
// TODO:         categoryName = Categories.NAMES[action.payload];
// TODO:         const catList = categories.split(",");
// TODO:         const newCats = catList.filter(c => c !== categoryName);
// TODO:         categories = newCats.join(",");
// TODO:       }
// TODO:       break;
// TODO:
// TODO:     default:
// TODO:       return state;
// TODO:   }
// TODO:   return {
// TODO:     ...state,
// TODO:     hash: constructUrl(entry, center, zoom, search, left, categories)
// TODO:   }
// TODO: };
