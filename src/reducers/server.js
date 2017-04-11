import T from "../constants/ActionTypes";

const initialState = {
  version: null,
  entries: {}
};

module.exports = (state=initialState, action={}) => {
  switch (action.type) {
    case T.SERVER_INFO_RESULT:
      return {
        ...state,
        version: action.payload.version
      };
    case T.ENTRIES_RESULT:
      var p;
      if (!(action.error || ((p = action.payload) == null))) {
        var o = {};
        if (Array.isArray(p)) {
          p.filter(e => e != null)
           .forEach(e => { o[e.id] = e;});
        } else {
          o[p.id] = p;
        }
        return {
          ...state,
          entries: {
            ...state.entries,
            ...o
          }
        };
      } else {
        return state;
      }
      break;
    default:
      return state;
  }
};
