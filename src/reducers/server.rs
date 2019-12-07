// TODO: import T from "../constants/ActionTypes";
// TODO:
// TODO: const initialState = {
// TODO:   version: null,
// TODO:   entries: {},
// TODO:   ratings: {},
// TODO:   loadingSearch: false
// TODO: };
// TODO:
// TODO: module.exports = (state=initialState, action={}) => {
// TODO:
// TODO:   const { payload } = action;
// TODO:
// TODO:   let o = {};
// TODO:
// TODO:   switch (action.type) {
// TODO:     case T.SERVER_INFO_RESULT:
// TODO:       return {
// TODO:         ...state,
// TODO:         version: payload.version
// TODO:       };
// TODO:     case T.ENTRIES_RESULT:
// TODO:       if(action.error) {
// TODO:         console.error("Error in server reducer: ", action);
// TODO:         return state;
// TODO:       }
// TODO:       if (payload != null) {
// TODO:         if (Array.isArray(payload)) {
// TODO:           payload.filter(e => e != null)
// TODO:            .forEach(e => { o[e.id] = e; });
// TODO:         } else {
// TODO:           o[payload.id] = payload;
// TODO:         }
// TODO:         return {
// TODO:           ...state,
// TODO:           entries: {
// TODO:             ...state.entries,
// TODO:             ...o
// TODO:           },
// TODO:           loadingSearch: false
// TODO:         };
// TODO:       }
// TODO:       return state;
// TODO:     case T.SEARCH_RESULT_EVENTS:
// TODO:     case T.SEARCH_RESULT_EVENTS_WITHOUT_PLACE:
// TODO:       if(action.error) {
// TODO:         console.error("Error in server reducer: ", action);
// TODO:         return state;
// TODO:       }
// TODO:       if (payload != null) {
// TODO:         if (Array.isArray(payload)) {
// TODO:           payload.filter(e => e != null)
// TODO:           .forEach(e => { o[e.id] = {
// TODO:               ...e,
// TODO:               categories: ["c2dc278a2d6a4b9b8a50cb606fc017ed"] // TODO
// TODO:             };
// TODO:           });
// TODO:         } else {
// TODO:           o[payload.id] = {
// TODO:             ...payload,
// TODO:             categories: ["c2dc278a2d6a4b9b8a50cb606fc017ed"] // TODO
// TODO:           }
// TODO:         }
// TODO:         return {
// TODO:           ...state,
// TODO:           loadingSearch: false,
// TODO:           entries: {
// TODO:             ...state.entries,
// TODO:             ...o
// TODO:           }
// TODO:         };
// TODO:       }
// TODO:       return state;
// TODO:     case T.RATINGS_RESULT:
// TODO:       if(action.error) {
// TODO:         console.error("Error in server reducer: ", action);
// TODO:         return state;
// TODO:       }
// TODO:       if (payload != null) {
// TODO:         if (Array.isArray(payload)) {
// TODO:           payload.filter(e => e != null)
// TODO:            .forEach(e => { o[e.id] = e; });
// TODO:         } else {
// TODO:           o[payload.id] = payload;
// TODO:         }
// TODO:         return {
// TODO:           ...state,
// TODO:           ratings: {
// TODO:             ...state.ratings,
// TODO:             ...o
// TODO:           }
// TODO:         };
// TODO:       }
// TODO:       return state;
// TODO:
// TODO:     case T.NEW_ENTRY_RESULT:
// TODO:       o[payload.id] = payload;
// TODO:       return {
// TODO:         ...state,
// TODO:         entries: {
// TODO:           ...state.entries,
// TODO:           ...o
// TODO:         }
// TODO:       }
// TODO:
// TODO:     case T.SAVED_ENTRY_RESULT:
// TODO:       o[payload.id] = payload;
// TODO:       return {
// TODO:         ...state,
// TODO:         entries: {
// TODO:           ...state.entries,
// TODO:           ...o
// TODO:         }
// TODO:       }
// TODO:
// TODO:     case T.SET_SEARCH_TIME:
// TODO:       return {
// TODO:         ...state,
// TODO:         loadingSearch: true
// TODO:       }
// TODO:
// TODO:
// TODO:     case T.NO_SEARCH_RESULTS:
// TODO:     case T.SEARCH_ADDRESS_RESULT:
// TODO:       return {
// TODO:         ...state,
// TODO:         loadingSearch: false
// TODO:       }
// TODO:
// TODO:     default:
// TODO:       return state;
// TODO:   }
// TODO: };
