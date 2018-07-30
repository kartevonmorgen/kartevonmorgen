import T from "../constants/ActionTypes";

const initialState = {
  version: null,
  entries: {},
  ratings: {}
};

module.exports = (state=initialState, action={}) => {

  const { payload } = action;

  let o = {};

  switch (action.type) {
    case T.SERVER_INFO_RESULT:
      return {
        ...state,
        version: payload.version
      };
    case T.ENTRIES_RESULT:
      if(action.error) {
        console.error("Error in server reducer: ", action);
        return state;
      }
      if (payload != null) {
        if (Array.isArray(payload)) {
          payload.filter(e => e != null)
           .forEach(e => { o[e.id] = e; });
        } else {
          o[payload.id] = payload;
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
      if(action.error) {
        console.error("Error in server reducer: ", action);
        return state;
      }
      if (payload != null) {
        if (Array.isArray(payload)) {
          payload.filter(e => e != null)
           .forEach(e => { o[e.id] = e; });
        } else {
          o[payload.id] = payload;
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
      o[payload.id] = payload;
      return {
        ...state,
        entries: {
          ...state.entries,
          ...o
        }
      }

    case T.SAVED_ENTRY_RESULT:
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
