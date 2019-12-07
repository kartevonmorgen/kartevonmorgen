// TODO: import T from "../constants/ActionTypes";
// TODO: import parseUrl from "../util/parseUrl";
// TODO: import { MAIN_IDS, IDS } from "../constants/Categories";
// TODO: import { CITY_SEARCH_RESULTS_MIN_DISTANCE, CITY_SEARCH_RESULTS_MIN_IMPORTANCE } from "../constants/Search";
// TODO: 
// TODO: const initialState = {
// TODO:   text: null,
// TODO:   city: null,
// TODO:   entryResults: [],
// TODO:   eventResults: [],
// TODO:   eventsWithoutPlace: [],
// TODO:   error: false,
// TODO:   current: null,
// TODO:   categories: MAIN_IDS.filter((c) => c !== IDS.EVENT),
// TODO:   highlight: [],
// TODO:   invisible: [],
// TODO:   addresses: [],
// TODO:   cities: [],
// TODO:   searchByUrl: true,
// TODO:   showingAllEntries: false,
// TODO:   moreEntriesAvailable: false
// TODO: };
// TODO: 
// TODO: const oneForEachPlace = cities =>
// TODO:   {
// TODO:     const filtered =  cities.filter((city1, index1) => !cities.some((city2, index2) => 
// TODO:         Math.abs(city1.lat - city2.lat) < CITY_SEARCH_RESULTS_MIN_DISTANCE &&
// TODO:         Math.abs(city1.lon - city2.lon) < CITY_SEARCH_RESULTS_MIN_DISTANCE &&
// TODO:         index2 < index1
// TODO:       ))
// TODO:     return filtered
// TODO:   }
// TODO: 
// TODO: const isCity = x =>
// TODO:   (
// TODO:     (x["class"] === 'place' && (x.type === 'city' || x.type === 'village')) ||
// TODO:     (x["class"] === 'boundary' && x.type === 'administrative')
// TODO:   )
// TODO: 
// TODO: const isImportantSearchResult = x => ( x.importance >= CITY_SEARCH_RESULTS_MIN_IMPORTANCE )
// TODO: 
// TODO: module.exports = (state = initialState, action = {}) => {
// TODO:   const p = action.payload;
// TODO: 
// TODO:   switch (action.type) {
// TODO: 
// TODO:     case T.ENABLE_SEARCH_CATEGORY:
// TODO:       const c1 = action.payload;
// TODO:       if (c1 == null) {
// TODO:         return state;
// TODO:       }
// TODO:       const oldCats = state.categories;
// TODO:       const newCats = oldCats.includes(c1) ? oldCats : [ ...oldCats, c1 ];
// TODO:       return {
// TODO:         ...state,
// TODO:         categories: newCats
// TODO:       }
// TODO: 
// TODO:     case T.DISABLE_SEARCH_CATEGORY:
// TODO:       const c2 = action.payload;
// TODO:       if (c2 == null) {
// TODO:         return state;
// TODO:       }
// TODO:       const disableEvents = action.payload === IDS.EVENT;
// TODO:       const eventResults = disableEvents ? [] : state.eventResults;
// TODO:       const eventsWithoutPlace = disableEvents ? [] : state.eventsWithoutPlace;
// TODO: 
// TODO:       return {
// TODO:         ...state,
// TODO:         categories: state.categories.filter(cat => cat !== c2),
// TODO:         eventResults,
// TODO:         eventsWithoutPlace,
// TODO:       }
// TODO: 
// TODO:     case T.SET_SEARCH_TEXT:
// TODO:       return {
// TODO:         ...state,
// TODO:         text: action.payload
// TODO:       }
// TODO: 
// TODO:     case T.UPDATE_STATE_FROM_URL:
// TODO:       const searchText = parseUrl(action.payload).params.search;
// TODO: 
// TODO:       return {
// TODO:         ...state,
// TODO:         text: searchText || ""
// TODO:       }
// TODO: 
// TODO:     case T.SET_CITY_SEARCH_TEXT:
// TODO:       return {
// TODO:         ...state,
// TODO:         city: action.payload
// TODO:       }
// TODO: 
// TODO:     case T.SEARCH_RESULT_ENTRIES:
// TODO:       if (!action.error) {
// TODO:         return {
// TODO:           ...state,
// TODO:           entryResults: action.payload.visible,
// TODO:           invisible: action.payload.invisible
// TODO:         }
// TODO:       }
// TODO:       return state;
// TODO:       break;
// TODO: 
// TODO:     case T.SEARCH_RESULT_EVENTS:
// TODO:       if (!action.error) {
// TODO:         return {
// TODO:           ...state,
// TODO:           eventResults: action.payload
// TODO:             .filter(event => (event.lat && event.lng))
// TODO:             .map(event => ({
// TODO:               ...event,
// TODO:               categories: ["c2dc278a2d6a4b9b8a50cb606fc017ed"] // TODO
// TODO:             })),
// TODO:           eventsWithoutPlace: action.payload
// TODO:             .filter(event => (!event.lat || !event.lng))
// TODO:             .map(event => ({
// TODO:               ...event,
// TODO:               categories: ["c2dc278a2d6a4b9b8a50cb606fc017ed"] // TODO
// TODO:             })),
// TODO:         }
// TODO:       }
// TODO:       return state;
// TODO:       break;
// TODO: 
// TODO:     case T.SEARCH_ADDRESS_RESULT:
// TODO:       if (!action.error) {
// TODO:         const d = action.payload || [];
// TODO:         return {
// TODO:           ...state,
// TODO:           addresses: d,
// TODO:           cities: oneForEachPlace(d.filter(isCity).filter(isImportantSearchResult)),
// TODO:           error: false
// TODO:         }
// TODO:       } else {
// TODO:         return {
// TODO:           ...state,
// TODO:           addresses: [],
// TODO:           cities: [],
// TODO:           error: true
// TODO:         }
// TODO:       }
// TODO:       break;
// TODO: 
// TODO:     case T.NEW_ENTRY_RESULT:
// TODO:       if (!action.error) {
// TODO:         var newResult = state.entryResults;
// TODO:         newResult.push({id: action.payload.id});
// TODO:         return {
// TODO:           ...state,
// TODO:           entryResults: newResult
// TODO:         }
// TODO:       }
// TODO:       break;
// TODO: 
// TODO:     case T.SET_CURRENT_ENTRY:
// TODO:       if (p != null) {
// TODO:         return {
// TODO:           ...state,
// TODO:           current: p,
// TODO:           highlight: [p]
// TODO:         }
// TODO:       }
// TODO:       return {
// TODO:         ...state,
// TODO:         current: null
// TODO:       }
// TODO:       break;
// TODO: 
// TODO:     case T.HIGHLIGHT_ENTRIES:
// TODO:       return {
// TODO:         ...state,
// TODO:         highlight: action.payload
// TODO:       }
// TODO: 
// TODO:     case T.SET_MORE_ENTRIES_AVAILABLE:
// TODO:       return {
// TODO:         ...state,
// TODO:         moreEntriesAvailable: action.payload,
// TODO:         showingAllEntries: !action.payload
// TODO:       }
// TODO: 
// TODO:     case T.FETCH_ALL_ENTRIES:
// TODO:       return {
// TODO:         ...state,
// TODO:         showingAllEntries: true
// TODO:       }
// TODO: 
// TODO:     case T.FINISH_CITY_SEARCH:
// TODO:       return {
// TODO:         ...state,
// TODO:         cities: [],
// TODO:         city: ""
// TODO:       }
// TODO: 
// TODO:     default:
// TODO:       return state;
// TODO:   }
// TODO: };
