use crate::{
    constants::Categories::{IDS, MAIN_IDS},
    Actions, Msg,
};
use seed::prelude::*;

// TODO: import parseUrl from "../util/parseUrl";
// TODO: import { CITY_SEARCH_RESULTS_MIN_DISTANCE, CITY_SEARCH_RESULTS_MIN_IMPORTANCE } from "../constants/Search";

type UnknownJsType = ();
type City = UnknownJsType;

#[derive(Debug)]
pub struct Mdl {
    pub text: Option<String>,
    pub city: Option<City>,
    pub entryResults: Vec<UnknownJsType>,
    pub eventResults: Vec<UnknownJsType>,
    pub eventsWithoutPlace: Vec<UnknownJsType>,
    pub error: bool,
    pub current: Option<UnknownJsType>,
    pub categories: Vec<IDS>,
    pub highlight: Vec<String>,
    pub invisible: Vec<String>,
    pub addresses: Vec<UnknownJsType>,
    pub cities: Vec<UnknownJsType>,
    pub searchByUrl: bool,
    pub showingAllEntries: bool,
    pub moreEntriesAvailable: bool,
}

impl Default for Mdl {
    fn default() -> Self {
        Mdl {
            entryResults: vec![],
            eventResults: vec![],
            eventsWithoutPlace: vec![],
            text: None,
            city: None,
            error: false,
            current: None,
            categories: MAIN_IDS
                .iter()
                .filter(|c| **c != IDS::EVENT)
                .cloned()
                .collect(),
            highlight: vec![],
            invisible: vec![],
            addresses: vec![],
            cities: vec![],
            searchByUrl: true,
            showingAllEntries: false,
            moreEntriesAvailable: false,
        }
    }
}

pub fn oneForEachPlace(/* cities */) {
    // TODO: const filtered =  cities.filter((city1, index1) => !cities.some((city2, index2) =>
    // TODO:     Math.abs(city1.lat - city2.lat) < CITY_SEARCH_RESULTS_MIN_DISTANCE &&
    // TODO:     Math.abs(city1.lon - city2.lon) < CITY_SEARCH_RESULTS_MIN_DISTANCE &&
    // TODO:     index2 < index1
    // TODO:   ))
    // TODO: return filtered
    unimplemented!()
}

pub fn isCity(/* x */) -> bool {
    // TODO: (
    // TODO:   (x["class"] === 'place' && (x.type === 'city' || x.type === 'village')) ||
    // TODO:   (x["class"] === 'boundary' && x.type === 'administrative')
    // TODO: )
    unimplemented!()
}

pub fn isImportantSearchResult(/* x */) -> bool {
    // TODO: ( x.importance >= CITY_SEARCH_RESULTS_MIN_IMPORTANCE )
    unimplemented!()
}

pub fn update(action: &Msg, state: &mut Mdl, orders: &mut impl Orders<Msg>) {
    use Actions::client::Msg as C;
    match action {
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
        Msg::Client(C::setSearchText(txt)) => {
            if txt.is_empty() {
                state.text = None;
            } else {
                state.text = Some(txt.clone());
            }
        }

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
        _ => {
            // do nothing
        }
    }
}
