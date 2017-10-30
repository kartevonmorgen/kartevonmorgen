import T from "../constants/ActionTypes";

const initialState = {
  version: null,
  entries: {},
  ratings: {}
};

module.exports = (state=initialState, action={}) => {

  if (action.error) {
    console.error("Error in server reducer: ", action.payload);
    return state;
  }

  const { payload } = action;

  switch (action.type) {
    case T.SERVER_INFO_RESULT:
      return {
        ...state,
        version: payload.version
      };
    case T.ENTRIES_RESULT:
      if (payload != null) {
        var o = {};
        if (Array.isArray(payload)) {
          payload.filter(e => e != null)
           .forEach(e => { o[e.id] = e; });
        } else {
          o[p.id] = payload;
        }
        return {
          ...state,
          entries: {
            ...state.entries,
            ...o
          }
        };
      }
      return state;
    case T.RATINGS_RESULT:
      if (payload != null) {
        var o = {};
        if (Array.isArray(payload)) {
          payload.filter(e => e != null)
           .forEach(e => { o[e.id] = e; });
        } else {
          o[p.id] = payload;
        }
        return {
          ...state,
          ratings: {
            ...state.ratings,
            ...o
          }
        };
      }
      return state;

    case T.NEW_ENTRY_RESULT:
      let o = {};
      o[payload.id] = payload;
      return {
        ...state,
        entries: {
          ...state.entries,
          ...o
        }
      }
      
    default:
      return state;
  }
};
