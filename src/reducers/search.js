import T from "../constants/ActionTypes";
import parseUrl from "../util/parseUrl";
import { MAIN_IDS, IDS } from "../constants/Categories";

const initialState = {
  text: null,
  city: null,
  entryResults: [],
  eventResults: [],
  eventsWithoutPlace: [],
  error: false,
  current: null,
  categories: MAIN_IDS.filter((c) => c !== IDS.EVENT),
  highlight: [],
  invisible: [],
  addresses: [],
  cities: [],
  searchByUrl: true,
  showingAllEntries: false,
  moreEntriesAvailable: false
};

const unique = cities =>
  cities
    .map(
      ({city, name, state, country, lat, lon, osm_id}) =>
        ({
          city: (city || name),
          state,
          country,
          lat,
          lon,
          osm_id
        }))
    .filter((item, pos, self) => 
      self.findIndex(x => (
          x.city == item.city
          && x.state == item.state
          && x.country == item.country
        )) == pos)

const isCity = x =>
  (
    (
      (x["class"] === 'place' && (x.type === 'city' || x.type === 'village')) ||
      (x["class"] === 'boundary' && x.type === 'administrative')
    )
  )

module.exports = (state = initialState, action = {}) => {

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
      const newCategories = state.categories.filter(cat => cat !== c2);
      const disableEvents = action.payload === IDS.EVENT;
      const eventResults = disableEvents ? [] : state.eventResults;
      const eventsWithoutPlace = disableEvents ? [] : state.eventsWithoutPlace;
      const initiativeAndCompanyDisabled = !newCategories.includes(IDS.INITIATIVE) && !newCategories.includes(IDS.COMPANY);
      const entryResults = initiativeAndCompanyDisabled ? [] : state.entryResults;
      const invisible = initiativeAndCompanyDisabled ? [] : state.invisible;

      return {
        ...state,
        categories: newCategories,
        eventResults,
        eventsWithoutPlace,
        entryResults,
        invisible
      }

    case T.SET_SEARCH_TEXT:
      return {
        ...state,
        text: action.payload
      }

    case T.UPDATE_STATE_FROM_URL:
      const searchText = parseUrl(action.payload).params.search;

      return {
        ...state,
        text: searchText || ""
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
      break;

    case T.NO_SEARCH_RESULTS:
      return {
        ...state,
        entryResults: [],
        invisible: []
      }

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
      break;

    case T.SEARCH_ADDRESS_RESULT:
      if (!action.error) {
        const d = action.payload || [];
        return {
          ...state,
          addresses: d,
          cities: unique(d.filter(isCity)),
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
      break;

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
      const p = action.payload;
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
      break;

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

    default:
      return state;
  }
};
