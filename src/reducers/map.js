import T from "../constants/ActionTypes";
import mapConst from "../constants/Map";
import parseUrl from "../util/parseUrl";

const initialState = {
  zoom: mapConst.DEFAULT_ZOOM,
  center: mapConst.DEFAULT_CENTER,
  marker: null,
  bbox: mapConst.DEFAULT_BBOX,
  ownPosition: null,
  ownPositionCancelled: false,
  waiting_for_center_of: null
};

export default (state = initialState, action = {}) => {

  var newState, point;
  const { payload } = action;

  switch (action.type) {
    case T.UPDATE_STATE_FROM_URL:
      const { center, zoom } = parseUrl(payload).params;
      const mapCenter = center ? {
        lat: parseFloat(center.split(',')[0]),
        lng: parseFloat(center.split(',')[1])
      } : null;

      return {
        ...state,
        center: mapCenter || state.center || mapConst.DEFAULT_CENTER,
        zoom: parseFloat(zoom) || state.zoom || mapConst.DEFAULT_ZOOM
    }
    case T.CLOSE_NEW_ENTRY:
    case T.SHOW_NEW_ENTRY:
      return {
        ...state,
        marker: null
      };
    case T.SET_MARKER:
      if (action.manual) {
        return {
          ...state,
          marker: action.payload
        };
      } else {
        return {
          ...state,
          marker: action.payload,
          center: action.payload
        };
      }
      break;
    case T.EDIT_CURRENT_ENTRY:
      point = {
        lat: action.payload.lat,
        lng: action.payload.lng
      };
      return {
        ...state,
        marker: point,
        center: point
      };
    case T.SET_MAP_CENTER:
      if ((typeof action.payload) === "string") {
        // payload is an entry ID
        return {
          ...state,
          waiting_for_center_of: action.payload
        };

      } else {
        return {
          ...state,
          center: {
            lat: parseFloat(payload.lat),
            lng: parseFloat(payload.lng)
          }
        };
      }

    case T.ENTRIES_RESULT:
    case T.SEARCH_RESULT_EVENTS:
      if ((payload != null) && (payload.length > 0) && (state.waiting_for_center_of != null)) {
        var o = {};
        if (Array.isArray(payload)) {
          payload.filter(e => e != null)
           .forEach(e => { o[e.id] = e; });
        } else {
          o[payload.id] = payload;
        }
        if(o[state.waiting_for_center_of]){
          return{
            ...state,
            center: {
              lat: o[state.waiting_for_center_of].lat,
              lng: o[state.waiting_for_center_of].lng
            },
            waiting_for_center_of: null
          }
        } else {
          return state
        }
      } else{
        return state;
      }
    case T.SET_ZOOM:
      return {
        ...state,
        zoom: action.payload
      };
    case T.SET_BBOX:
      return {
        ...state,
        bbox: action.payload
      };

    case T.ENTRY_RESULT:
      if (action.error) {
        return state;
      }
      const e_id = state.waiting_for_center_of;
      const e = action.payload[e_id];
      if (e) {
        const { lat, lng } = e;
        return {
          ...state,
          waiting_for_center_of: null,
          center: { lat, lng }
        };
      }
      return state;

    case T.NEW_ENTRY_RESULT:
      if (!action.error) {
        return {
          ...state,
          marker: null
        };
      }
      return state;
    case T.SHOW_OWN_POSITION:
      return {
        ...state,
        ownPositionCancelled: false
      };
    case T.CANCEL_OWN_POSITION:
      return {
        ...state,
        ownPositionCancelled: true
      };
    case T.OWN_POSITION_RESULT:
      if (action.payload) {
        const newState = {
          ...state,
          ownPosition: {
            lat: action.payload.coords.latitude,
            lng: action.payload.coords.longitude
          }
        };
        if (!state.ownPositionCancelled) {
          return {
            ...newState,
            center: newState.ownPosition
          };
        } else {
          return newState;
        }
      } else {
        return state;
      }
      break;

    default:
      return state;
  }
};
