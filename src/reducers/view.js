import u from "updeep";
import T from "../constants/ActionTypes";
import V from "../constants/PanelView";
import C from "../constants/Categories";

const initialState = {
  menu: true,
  left: null,
  right: null,
  modal: null
};

module.exports = (state, action) => {
  var m, newView, p, r, v;
  if (state == null) {
    state = initialState;
  }
  if (action == null) {
    action = {};
  }
  switch (action.type) {
    case T.TOGGLE_MENU:
      if (state.modal != null) {
        return state;
      } else {
        m = !state.menu;
        r = m ? state.right : null;
        return u({
          menu: m,
          right: r,
          left: m ? null : state.left
        }, state);
      }
      break;
    case T.SHOW_MENU:
      return u({
        menu: true,
        right: null
      }, state);
    case T.SHOW_INFO:
      newView = V[action.payload];
      if (newView === void 0) {
        newView = null;
      }
      return u({
        menu: newView !== null,
        right: newView
      }, state);
    case T.SHOW_IMPRINT:
      return u({
        menu: true,
        right: V.IMPRINT
      }, state);
    case T.SHOW_NEW_ENTRY:
      return u({
        menu: false,
        left: V.NEW
      }, state);
    case T.EDIT_CURRENT_ENTRY:
      if (!action.error) {
        return u({
          menu: false,
          left: V.EDIT
        }, state);
      } else {
        return u({
          left: V.IO_ERROR
        }, state);
      }
      break;
    case T.SHOW_IO_WAIT:
      return u({
        left: V.WAIT
      }, state);
    case T.CANCEL_NEW:
    case T.CANCEL_WAIT_IO:
      return u({
        left: V.RESULT
      }, state);
    case T.CLOSE_IO_ERROR_MESSAGE:
      return u({
        left: null
      }, state);
    case T.CANCEL_EDIT:
      return u({
        left: V.ENTRY
      }, state);
    case T.NEW_ENTRY_RESULT:
      if (!action.error) {
        return u({
          left: V.ENTRY
        }, state);
      } else {
        return state;
      }
      break;
    case T.SEARCH_RESULT:
      if (action.error) {
        return u({
          left: V.IO_ERROR
        }, state);
      } else if (!((state.left != null) || action.noList)) {
        return u({
          left: V.RESULT
        }, state);
      } else {
        return state;
      }
      break;
    case T.SET_CURRENT_ENTRY:
      v = action.payload != null ? V.ENTRY : V.RESULT;
      return u({
        left: v
      }, state);
    case T.SHOW_OWN_POSITION:
      return u({
        modal: V.LOCATE
      }, state);
    case T.CANCEL_OWN_POSITION:
      return u({
        modal: null
      }, state);
    case T.OWN_POSITION_RESULT:
      if (action.payload) {
        return u({
          modal: null
        }, state);
      } else if (state.modal === V.LOCATE) {
        return u({
          modal: V.LOCATE_DISABLED
        }, state);
      } else {
        return state;
      }
      break;
    case T.SHOW_FEATURE_TO_DONATE:
      if (p = action.payload) {
        switch (p) {
          case "events":
            return u({
              modal: V.DONATE_FOR_EVENTS
            }, state);
          default:
            return state;
        }
      } else {
        return u({
          modal: null
        }, state);
      }
      break;
    case "redux-form/CHANGE":
      if (action.field === "category" && action.value === C.IDS.EVENT) {
        return u({
          modal: V.DONATE_FOR_EVENTS
        }, state);
      } else {
        return state;
      }
      break;
    default:
      return state;
  }
};
