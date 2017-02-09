import T from "../constants/ActionTypes";
import u from "updeep";

const initialState = {
  zoom: 13,
  center: {
    lat: 48.7784931,
    lng: 9.1800456
  },
  marker: null,
  bbox: null,
  ownPosition: null,
  ownPositionCancelled: false
};

module.exports = (state = initialState, action = {}) => {

  var newState, point;
  switch (action.type) {
    case T.CLOSE_NEW_ENTRY:
    case T.SHOW_NEW_ENTRY:
      return u({
        marker: null
      }, state);
    case T.SET_MARKER:
      if (action.manual) {
        return u({
          marker: action.payload
        }, state);
      } else {
        return u({
          marker: action.payload,
          center: action.payload
        }, state);
      }
      break;
    case T.EDIT_CURRENT_ENTRY:
      point = {
        lat: action.payload.lat,
        lng: action.payload.lng
      };
      return u({
        marker: point,
        center: point
      }, state);
    case T.SET_MAP_CENTER:
      return u({
        center: action.payload
      }, state);
    case T.SET_ZOOM:
      return u({
        zoom: action.payload
      }, state);
    case T.SET_BBOX:
      return u({
        bbox: action.payload
      }, state);
    case T.NEW_ENTRY_RESULT:
      if (!action.error) {
        return u({
          marker: null
        }, state);
      } else {
        return state;
      }
      break;
    case T.SHOW_OWN_POSITION:
      return u({
        ownPositionCancelled: false
      }, state);
    case T.CANCEL_OWN_POSITION:
      return u({
        ownPositionCancelled: true
      }, state);
    case T.OWN_POSITION_RESULT:
      if (action.payload) {
        newState = u({
          ownPosition: {
            lat: action.payload.coords.latitude,
            lng: action.payload.coords.longitude
          }
        }, state);
        if (!state.ownPositionCancelled) {
          return u({
            center: newState.ownPosition
          }, newState);
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
