use crate::{
    constants::Categories::{IDS, MAIN_IDS},
    entities::*,
    Actions, Msg, WebAPI,
};
use seed::prelude::*;

// TODO: import parseUrl from "../util/parseUrl";
// TODO: import { CITY_SEARCH_RESULTS_MIN_DISTANCE, CITY_SEARCH_RESULTS_MIN_IMPORTANCE } from "../constants/Search";

type UnknownJsType = ();

#[derive(Debug)]
pub struct Mdl {
    pub text: Option<String>,
    pub city: Option<String>,
    pub entryResults: Vec<PlaceSearchResult>,
    pub eventResults: Vec<UnknownJsType>,
    pub eventsWithoutPlace: Vec<UnknownJsType>,
    pub error: bool,
    pub current: Option<UnknownJsType>,
    pub categories: Vec<IDS>,
    pub highlight: Vec<String>,
    pub invisible: Vec<PlaceSearchResult>,
    pub addresses: Vec<UnknownJsType>,
    pub cities: Vec<City>,
    pub selectedCity: Option<usize>,
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
            selectedCity: None,
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
    todo!()
}

pub fn isCity(/* x */) -> bool {
    // TODO: (
    // TODO:   (x["class"] === 'place' && (x.type === 'city' || x.type === 'village')) ||
    // TODO:   (x["class"] === 'boundary' && x.type === 'administrative')
    // TODO: )
    todo!()
}

pub fn isImportantSearchResult(/* x */) -> bool {
    // TODO: ( x.importance >= CITY_SEARCH_RESULTS_MIN_IMPORTANCE )
    todo!()
}

pub fn update(action: &Msg, state: &mut Mdl, orders: &mut impl Orders<Msg>) {
    use Actions::{client::Msg as C, server::Msg as S};
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
            orders.send_msg(Msg::Server(Actions::server::Msg::search));
        }

        Msg::Server(S::search) => {
            let cats = vec![];
            let bbox = None;
            orders.perform_cmd(WebAPI::searchEntries(&state.text, &cats, bbox));
            // TODO:  dispatch(Actions.setSearchTime(Date.now()));
            // TODO:
            // TODO:  const searchFn = () => {
            // TODO:    dispatch(Actions.setSearchTime(null));
            // TODO:    console.log("SEARCH\n");
            // TODO:    const { search, map } = getState();
            // TODO:    var cats = search.categories;
            // TODO:    const sw = map.bbox._southWest;
            // TODO:    const ne = map.bbox._northEast;
            // TODO:    const bbox = [sw.lat, sw.lng, ne.lat, ne.lng];
            // TODO:
            // TODO:    if (search.text == null || !search.text.trim().endsWith("#")) {
            // TODO:
            // TODO:      if(!cats.includes(IDS.INITIATIVE) && !cats.includes(IDS.EVENT) && !cats.includes(IDS.COMPANY)){
            // TODO:        dispatch({
            // TODO:          type: T.NO_SEARCH_RESULTS
            // TODO:        });
            // TODO:      } else {
            // TODO:        if(cats.includes(IDS.INITIATIVE) || cats.includes(IDS.COMPANY)){
            // TODO:          WebAPI.searchEntries(search.text, cats, bbox, (err, res) => {
            // TODO:            dispatch({
            // TODO:              type: T.SEARCH_RESULT_ENTRIES,
            // TODO:              payload: err || res,
            // TODO:              error: err != null,
            // TODO:              noList: search.text == null
            // TODO:            });
            // TODO:            const entries =
            // TODO:              Array.isArray(res != null ? res.visible : void 0)
            // TODO:                ? Array.isArray(res.invisible)
            // TODO:                  ? res.visible.concat(res.invisible)
            // TODO:                  : res.visible
            // TODO:                : res != null
            // TODO:                  ? res.invisible
            // TODO:                  : void 0;
            // TODO:
            // TODO:            const ids = entries ? entries.map(e => e.id) : null;
            // TODO:            if (ids && (Array.isArray(ids)) && ids.length > 0) {
            // TODO:              dispatch(Actions.getEntries(ids));
            // TODO:            } else {
            // TODO:              dispatch({
            // TODO:                type: T.NO_SEARCH_RESULTS
            // TODO:              });
            // TODO:            }
            // TODO:          });
            // TODO:        }
            // TODO:
            // TODO:        if(cats.includes(IDS.EVENT)){
            // TODO:          const tags = search.text.replace(/#/g, '');
            // TODO:          WebAPI.searchEvents(tags, bbox, getMidnightUnixtime(Date.now()/1000), null, (err, res) => {
            // TODO:            dispatch({
            // TODO:              type: T.SEARCH_RESULT_EVENTS,
            // TODO:              payload: err || res,
            // TODO:              error: err != null
            // TODO:            });
            // TODO:          });
            // TODO:
            // TODO:          // search events without place:
            // TODO:          WebAPI.searchEvents(tags, null, getMidnightUnixtime(Date.now()/1000), null, (err, res) => {
            // TODO:            dispatch({
            // TODO:              type: T.SEARCH_RESULT_EVENTS_WITHOUT_PLACE,
            // TODO:              payload: err || res,
            // TODO:              error: err != null
            // TODO:            });
            // TODO:          });
            // TODO:        }
            // TODO:      }
            // TODO:
            // TODO:      if (search.text != null) {
            // TODO:        const address = search.text.replace(/#/g, "");
            // TODO:        WebAPI.searchAddressNominatim(address, (err, res) => {
            // TODO:          dispatch({
            // TODO:            type: T.SEARCH_ADDRESS_RESULT,
            // TODO:            payload: err || res,
            // TODO:            error: err != null
            // TODO:          });
            // TODO:        });
            // TODO:      }
            // TODO:    }
            // TODO:  };
            // TODO:
            // TODO:  const triggerSearch = () => {
            // TODO:    const { timedActions } = getState();
            // TODO:    const lastTriggered = timedActions.searchLastTriggered;
            // TODO:
            // TODO:    if (lastTriggered != null) {
            // TODO:      const duration = Date.now() - lastTriggered;
            // TODO:      if (duration > appConst.SEARCH_DELAY) {
            // TODO:        searchFn();
            // TODO:      } else {
            // TODO:        setTimeout(triggerSearch, appConst.SEARCH_DELAY);
            // TODO:      }
            // TODO:    }
            // TODO:  };
            // TODO:
            // TODO:  setTimeout(triggerSearch, appConst.SEARCH_DELAY+5);
        }

        // TODO:     case T.UPDATE_STATE_FROM_URL:
        // TODO:       const searchText = parseUrl(action.payload).params.search;
        // TODO:
        // TODO:       return {
        // TODO:         ...state,
        // TODO:         text: searchText || ""
        // TODO:       }
        Msg::Client(Actions::client::Msg::setCitySearchText(txt)) => {
            if txt.trim().is_empty() {
                state.city = None;
            } else {
                state.city = Some(txt.clone());
                orders.send_msg(Msg::Server(Actions::server::Msg::searchCity));
            }
        }

        Msg::Server(Actions::server::Msg::SEARCH_RESULT_ENTRIES(Ok(payload))) => {
            state.entryResults = payload.visible.clone();
            state.invisible = payload.invisible.clone();
        }

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
        Msg::Server(Actions::server::Msg::searchCity) => {
            // TODO: dispatch(Actions.setSearchTime(Date.now()));
            // TODO: const s = getState().search;
            // TODO: const searchFn = () => {
            // TODO:   dispatch(Actions.setSearchTime(null));
            if let Some(txt) = &state.city {
                orders.perform_cmd(WebAPI::searchAddressNominatim(txt));
            }
            // TODO: };
            // TODO:
            // TODO: const triggerSearch = () => {
            // TODO:   const { timedActions } = getState();
            // TODO:   const lastTriggered = timedActions.searchLastTriggered;
            // TODO:
            // TODO:   if (lastTriggered != null) {
            // TODO:     const duration = Date.now() - lastTriggered;
            // TODO:     if (duration > appConst.SEARCH_DELAY) {
            // TODO:       searchFn();
            // TODO:     } else {
            // TODO:       setTimeout(triggerSearch, appConst.SEARCH_DELAY);
            // TODO:     }
            // TODO:   }
            // TODO: };
            // TODO:
            // TODO: setTimeout(triggerSearch, appConst.SEARCH_DELAY+5);
        }
        Msg::Server(Actions::server::Msg::SEARCH_ADDRESS_RESULT(res)) => {
            match res {
                Ok(cities) => {
                    state.cities = cities.clone();
                }
                Err(_) => {
                    // TODO: handle err
                }
            }
        }
        Msg::Client(Actions::client::Msg::ChangeSelectedCity(direction)) => {
            let newSelection : usize = match state.selectedCity {
                None => {
                    0
                }
                Some(selectedCity) => {
                    if (selectedCity as isize + direction) > 0 {
                        (selectedCity as isize + direction) as usize
                    } else {
                        0
                    }
                }
            };
            if(state.cities.len() > newSelection){
                state.selectedCity = Some(newSelection);
            }

        }
        _ => {
            // do nothing
        }
    }
}
