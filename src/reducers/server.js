import T from "../constants/ActionTypes";

const initialState = {
  version: null,
  entries: {},
  ratings: {},
  loadingSearch: false
};

export default (state=initialState, action={}) => {

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
          },
          loadingSearch: false
        };
      }
      return state;
    case T.SEARCH_RESULT_EVENTS:
    case T.SEARCH_RESULT_EVENTS_WITHOUT_PLACE:
      if(action.error) {
        console.error("Error in server reducer: ", action);
        return state;
      }
      if (payload != null) {
        if (Array.isArray(payload)) {
          payload.filter(e => e != null)
          .forEach(e => { o[e.id] = {
              ...e,
              categories: ["c2dc278a2d6a4b9b8a50cb606fc017ed"] // TODO
            }; 
          });
        } else {
          o[payload.id] = {
            ...payload,
            categories: ["c2dc278a2d6a4b9b8a50cb606fc017ed"] // TODO
          }
        }
        return {
          ...state,
          loadingSearch: false,
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

    case T.SET_SEARCH_TIME:
      return {
        ...state,
        loadingSearch: true
      }

    
    case T.NO_SEARCH_RESULTS:
    case T.SEARCH_ADDRESS_RESULT:
      return {
        ...state,
        loadingSearch: false
      }
      
    default:
      return state;
  }
};
