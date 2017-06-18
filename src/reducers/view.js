import T from "../constants/ActionTypes";
import V from "../constants/PanelView";
import C from "../constants/Categories";

const initialState = {
  menu: false,
  left: V.RESULT,
  right: null,
  modal: null
};

module.exports = (state=initialState, action={}) => {

  switch (action.type) {

    case T.TOGGLE_MENU:
      if (state.modal != null) {
        return state;
      }
      const m = !state.menu;
      return {
        ...state,
        menu: m,
        right: m ? state.right : null,
        left: m ? null : state.left
      }
      break;

    case T.SHOW_MENU:
      return {
        ...state,
        menu: true,
        right: null
      }

    case T.SHOW_INFO:
      var newView = V[action.payload];
      if (newView === void 0) {
        newView = null;
      }
      return {
        ...state,
        menu: newView !== null,
        right: newView
      }

    case T.SHOW_IMPRINT:
      return {
        ...state,
        menu: true,
        right: V.IMPRINT
      }

    case T.SHOW_NEW_ENTRY:
      return {
        ...state,
        menu: false,
        left: V.NEW
      }
    case T.SHOW_NEW_RATING:
      return {
        ...state,
        menu: false,
        left: V.NEW_RATING
      }
    case T.EDIT_CURRENT_ENTRY:
      if (!action.error) {
        return {
          ...state,
          menu: false,
          left: V.EDIT
        }
      }
      return {
        ...state,
        left: V.IO_ERROR
      }
      break;

    case T.SHOW_IO_WAIT:
      return {
        ...state,
        left: V.WAIT
      }

    case T.CANCEL_NEW:
    case T.CANCEL_WAIT_IO:
      return {
        ...state,
        left: V.RESULT
      }
    case T.CLOSE_IO_ERROR_MESSAGE:
      return {
        ...state,
        left: null
      }

    case T.CANCEL_RATING:
    case T.CANCEL_EDIT:
      return {
        ...state,
        left: V.ENTRY
      }
    case T.NEW_ENTRY_RESULT:

      if (!action.error) {
        return {
          ...state,
          left: V.ENTRY
        }
      }
      return state;
      break;

    case T.SEARCH_RESULT:
      if (action.error) {
        return {
          ...state,
          left: V.IO_ERROR
        }
      } else if (!((state.left != null) || action.noList)) {
        return {
          ...state,
          left: V.RESULT
        }
      }
      return state;
      break;

    case T.SET_CURRENT_ENTRY:
      return {
        ...state,
        left: action.payload != null ? V.ENTRY : V.RESULT,
        menu: false
      }

    case T.SHOW_MAP:
      return {
        ...state,
        menu: false
      }

    case T.SHOW_SEARCH_RESULTS:
      return {
        ...state,
        left: V.RESULT
      }

    case T.SHOW_OWN_POSITION:
      return {
        ...state,
        modal: V.LOCATE
      }

    case T.CANCEL_OWN_POSITION:
      return {
        ...state,
        modal: null
      }
    case T.OWN_POSITION_RESULT:

      if (action.payload) {
        return {
          ...state,
          modal: null
        }
      } else if (state.modal === V.LOCATE) {
        return {
          ...state,
          modal: V.LOCATE_DISABLED
        }
      }
      return state;
      break;

    case T.SHOW_FEATURE_TO_DONATE:
      const p = action.payload;
      if (p) {
        switch (p) {
          case "events":
            return {
              ...state,
              modal: V.DONATE_FOR_EVENTS
            }
          default:
            return state;
        }
      }
      return {
        ...state,
        modal: null
      }
      break;

    case "@@redux-form/CHANGE":
      if (action.meta.field === "category" && action.payload === C.IDS.EVENT) {
        return {
          ...state,
          modal: V.DONATE_FOR_EVENTS
        }
      }
      return state;
      break;

    default:
      return state;
  }
};
