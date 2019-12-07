// TODO: import T from "../constants/ActionTypes";
// TODO: import mapConst from "../constants/Map";
// TODO: import parseUrl from "../util/parseUrl";
// TODO: 
// TODO: const initialState = {
// TODO:   zoom: mapConst.DEFAULT_ZOOM,
// TODO:   center: mapConst.DEFAULT_CENTER,
// TODO:   marker: null,
// TODO:   bbox: mapConst.DEFAULT_BBOX,
// TODO:   ownPosition: null,
// TODO:   ownPositionCancelled: false,
// TODO:   waiting_for_center_of: null
// TODO: };
// TODO: 
// TODO: module.exports = (state = initialState, action = {}) => {
// TODO: 
// TODO:   var newState, point;
// TODO:   const { payload } = action;
// TODO: 
// TODO:   switch (action.type) {
// TODO:     case T.UPDATE_STATE_FROM_URL:
// TODO:       const { center, zoom } = parseUrl(payload).params;
// TODO:       const mapCenter = center ? {
// TODO:         lat: parseFloat(center.split(',')[0]),
// TODO:         lng: parseFloat(center.split(',')[1])
// TODO:       } : null;
// TODO: 
// TODO:       return {
// TODO:         ...state,
// TODO:         center: mapCenter || state.center || mapConst.DEFAULT_CENTER,
// TODO:         zoom: parseFloat(zoom) || state.zoom || mapConst.DEFAULT_ZOOM
// TODO:     }
// TODO:     case T.CLOSE_NEW_ENTRY:
// TODO:     case T.SHOW_NEW_ENTRY:
// TODO:       return {
// TODO:         ...state,
// TODO:         marker: null
// TODO:       };
// TODO:     case T.SET_MARKER:
// TODO:       if (action.manual) {
// TODO:         return {
// TODO:           ...state,
// TODO:           marker: action.payload
// TODO:         };
// TODO:       } else {
// TODO:         return {
// TODO:           ...state,
// TODO:           marker: action.payload,
// TODO:           center: action.payload
// TODO:         };
// TODO:       }
// TODO:       break;
// TODO:     case T.EDIT_CURRENT_ENTRY:
// TODO:       point = {
// TODO:         lat: action.payload.lat,
// TODO:         lng: action.payload.lng
// TODO:       };
// TODO:       return {
// TODO:         ...state,
// TODO:         marker: point,
// TODO:         center: point
// TODO:       };
// TODO:     case T.SET_MAP_CENTER:
// TODO:       if ((typeof action.payload) === "string") {
// TODO:         // payload is an entry ID
// TODO:         return {
// TODO:           ...state,
// TODO:           waiting_for_center_of: action.payload
// TODO:         };
// TODO: 
// TODO:       } else {
// TODO:         return {
// TODO:           ...state,
// TODO:           center: {
// TODO:             lat: parseFloat(payload.lat),
// TODO:             lng: parseFloat(payload.lng)
// TODO:           }
// TODO:         };
// TODO:       }
// TODO: 
// TODO:     case T.ENTRIES_RESULT:
// TODO:     case T.SEARCH_RESULT_EVENTS:
// TODO:       if ((payload != null) && (payload.length > 0) && (state.waiting_for_center_of != null)) {
// TODO:         var o = {};
// TODO:         if (Array.isArray(payload)) {
// TODO:           payload.filter(e => e != null)
// TODO:            .forEach(e => { o[e.id] = e; });
// TODO:         } else {
// TODO:           o[payload.id] = payload;
// TODO:         }
// TODO:         if(o[state.waiting_for_center_of]){
// TODO:           return{
// TODO:             ...state,
// TODO:             center: {
// TODO:               lat: o[state.waiting_for_center_of].lat,
// TODO:               lng: o[state.waiting_for_center_of].lng
// TODO:             },
// TODO:             waiting_for_center_of: null
// TODO:           }
// TODO:         } else {
// TODO:           return state
// TODO:         }
// TODO:       } else{
// TODO:         return state;
// TODO:       }
// TODO:     case T.SET_ZOOM:
// TODO:       return {
// TODO:         ...state,
// TODO:         zoom: action.payload
// TODO:       };
// TODO:     case T.SET_BBOX:
// TODO:       return {
// TODO:         ...state,
// TODO:         bbox: action.payload
// TODO:       };
// TODO: 
// TODO:     case T.ENTRY_RESULT:
// TODO:       if (action.error) {
// TODO:         return state;
// TODO:       }
// TODO:       const e_id = state.waiting_for_center_of;
// TODO:       const e = action.payload[e_id];
// TODO:       if (e) {
// TODO:         const { lat, lng } = e;
// TODO:         return {
// TODO:           ...state,
// TODO:           waiting_for_center_of: null,
// TODO:           center: { lat, lng }
// TODO:         };
// TODO:       }
// TODO:       return state;
// TODO: 
// TODO:     case T.NEW_ENTRY_RESULT:
// TODO:       if (!action.error) {
// TODO:         return {
// TODO:           ...state,
// TODO:           marker: null
// TODO:         };
// TODO:       }
// TODO:       return state;
// TODO:     case T.SHOW_OWN_POSITION:
// TODO:       return {
// TODO:         ...state,
// TODO:         ownPositionCancelled: false
// TODO:       };
// TODO:     case T.CANCEL_OWN_POSITION:
// TODO:       return {
// TODO:         ...state,
// TODO:         ownPositionCancelled: true
// TODO:       };
// TODO:     case T.OWN_POSITION_RESULT:
// TODO:       if (action.payload) {
// TODO:         const newState = {
// TODO:           ...state,
// TODO:           ownPosition: {
// TODO:             lat: action.payload.coords.latitude,
// TODO:             lng: action.payload.coords.longitude
// TODO:           }
// TODO:         };
// TODO:         if (!state.ownPositionCancelled) {
// TODO:           return {
// TODO:             ...newState,
// TODO:             center: newState.ownPosition
// TODO:           };
// TODO:         } else {
// TODO:           return newState;
// TODO:         }
// TODO:       } else {
// TODO:         return state;
// TODO:       }
// TODO:       break;
// TODO: 
// TODO:     default:
// TODO:       return state;
// TODO:   }
// TODO: };
