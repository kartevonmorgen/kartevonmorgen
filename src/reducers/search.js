import update from "immutability-helper";
import T from "../constants/ActionTypes";
import parseUrl from "../util/parseUrl";
import { MAIN_IDS, IDS } from "../constants/Categories";
import { CITY_SEARCH_RESULTS_MIN_DISTANCE, CITY_SEARCH_RESULTS_MIN_IMPORTANCE } from "../constants/Search";

const initialState = {
  text: null,
  history: null,
  city: null,
  entryResults: [],
  eventResults: [],
  eventsWithoutPlace: [],
  error: false,
  current: null,
  categories: MAIN_IDS /*events always enabled since 01.01.2020  .filter((c) => c !== IDS.EVENT)*/,
  highlight: [],
  invisible: [],
  addresses: [],
  cities: [],
  fixedTags: [], //https://github.com/kartevonmorgen/kartevonmorgen/issues/667
  prominentTags: [], // the default tags shown in the search input
  popularTags: [],
  searchByUrl: true,
  showingAllEntries: false,
  moreEntriesAvailable: false
};

const oneForEachPlace = cities =>
  {
    const filtered =  cities.filter((city1, index1) => !cities.some((city2, index2) =>
        Math.abs(city1.lat - city2.lat) < CITY_SEARCH_RESULTS_MIN_DISTANCE &&
        Math.abs(city1.lon - city2.lon) < CITY_SEARCH_RESULTS_MIN_DISTANCE &&
        index2 < index1
      ))
    return filtered
  }

const isCity = x =>
  (
    (x["class"] === 'place' && (x.type === 'city' || x.type === 'village')) ||
    (x["class"] === 'boundary' && x.type === 'administrative')
  )

const isImportantSearchResult = x => ( x.importance >= CITY_SEARCH_RESULTS_MIN_IMPORTANCE )

export default (state = initialState, action = {}) => {
  const p = action.payload;

  switch (action.type) {

    case T.ENABLE_SEARCH_CATEGORY:
      const c1 = action.payload;
      if (c1 == null) {
        return state;
      }
      const oldCats = state.categories;
      const newCats = oldCats.includes(c1) ? oldCats : [ ...oldCats, c1 ];
      return {
        ...state,
        categories: newCats
      }

    case T.DISABLE_SEARCH_CATEGORY:
      const c2 = action.payload;
      if (c2 == null) {
        return state;
      }
      const disableEvents = action.payload === IDS.EVENT;
      const eventResults = disableEvents ? [] : state.eventResults;
      const eventsWithoutPlace = disableEvents ? [] : state.eventsWithoutPlace;

      return {
        ...state,
        categories: state.categories.filter(cat => cat !== c2),
        eventResults,
        eventsWithoutPlace,
      }

    case T.SET_SEARCH_TEXT:
      return {
        ...state,
        history: state.text,
        text: action.payload
      }

    case T.BACKUP_SEARCH_TEXT:
      return {
        ...state,
        history: state.text,
      }

    case T.RESTORE_SEARCH_TEXT:
      return {
        ...state,
        text: state.history
      }

    case T.UPDATE_STATE_FROM_URL:
      const parsedUrl = parseUrl(action.payload)
      const {fixedTags} = parsedUrl.params

      let searchText = parsedUrl.params.search || "";

      if (fixedTags) {
        const fixedTagsStr = fixedTags.map(tag => `#${tag}`).join(' ')

        if (!searchText.startsWith(fixedTagsStr)) {
          searchText = `${fixedTagsStr} ${searchText}`
        }
      }

      return {
        ...state,
        text: searchText || "",
        fixedTags: fixedTags || []
      }

    case T.SET_CITY_SEARCH_TEXT:
      return {
        ...state,
        city: action.payload
      }

    case T.SEARCH_RESULT_ENTRIES:
      if (!action.error) {
        return {
          ...state,
          entryResults: action.payload.visible,
          invisible: action.payload.invisible
        }
      }
      return state;

    case T.SEARCH_RESULT_EVENTS:
      if (!action.error) {
        return {
          ...state,
          eventResults: action.payload
            .filter(event => (event.lat && event.lng))
            .map(event => ({
              ...event,
              categories: ["c2dc278a2d6a4b9b8a50cb606fc017ed"] // TODO
            })),
          eventsWithoutPlace: action.payload
            .filter(event => (!event.lat || !event.lng))
            .map(event => ({
              ...event,
              categories: ["c2dc278a2d6a4b9b8a50cb606fc017ed"] // TODO
            })),
        }
      }
      return state;

    case T.SEARCH_ADDRESS_RESULT:
      if (!action.error) {
        const d = action.payload || [];
        return {
          ...state,
          addresses: d,
          cities: oneForEachPlace(d.filter(isCity).filter(isImportantSearchResult)),
          error: false
        }
      } else {
        return {
          ...state,
          addresses: [],
          cities: [],
          error: true
        }
      }

    case T.NEW_ENTRY_RESULT:
      if (!action.error) {
        var newResult = state.entryResults;
        newResult.push({id: action.payload.id});
        return {
          ...state,
          entryResults: newResult
        }
      }
      break;

    case T.SET_CURRENT_ENTRY:
      if (p != null) {
        return {
          ...state,
          current: p,
          highlight: [p]
        }
      }
      return {
        ...state,
        current: null
      }

    case T.HIGHLIGHT_ENTRIES:
      return {
        ...state,
        highlight: action.payload
      }

    case T.SET_MORE_ENTRIES_AVAILABLE:
      return {
        ...state,
        moreEntriesAvailable: action.payload,
        showingAllEntries: !action.payload
      }

    case T.FETCH_ALL_ENTRIES:
      return {
        ...state,
        showingAllEntries: true
      }

    case T.FINISH_CITY_SEARCH:
      return {
        ...state,
        cities: [],
        city: ""
      }

    case T.FETCH_PROMINENT_TAGS:
      return update(state, {
        prominentTags: {$set: [...action.payload]}
      })

    case T.FETCHED_POPULAR_TAGS:
      return {
        ...state,
        popularTags: action.payload
      }

    default:
      return state;
  }
};
