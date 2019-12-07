// TODO: import T                          from "../constants/ActionTypes";
// TODO: import GeoLocation                from "../GeoLocation";
// TODO: import mapConst                   from "../constants/Map";
// TODO: import appConst                   from "../constants/App";
// TODO: import serverActions              from "./server";
// TODO:
// TODO: const Actions = {
// TODO:
// TODO:   setSearchText: (txt) => ({
// TODO:     type: T.SET_SEARCH_TEXT,
// TODO:     payload: txt
// TODO:   }),
// TODO:
// TODO:   setCitySearchText: (txt) => ({
// TODO:     type: T.SET_CITY_SEARCH_TEXT,
// TODO:     payload: txt
// TODO:   }),
// TODO:
// TODO:   finishCitySearch: () => ({
// TODO:     type: T.FINISH_CITY_SEARCH
// TODO:   }),
// TODO:
// TODO:   enableSearchCategory: (category) => {
// TODO:     return {
// TODO:       type: T.ENABLE_SEARCH_CATEGORY,
// TODO:       payload: category
// TODO:     };
// TODO:   },
// TODO:
// TODO:   disableSearchCategory: (category) => {
// TODO:     return {
// TODO:       type: T.DISABLE_SEARCH_CATEGORY,
// TODO:       payload: category
// TODO:     };
// TODO:   },
// TODO:
// TODO:   toggleMenu          : () => ({ type: T.TOGGLE_MENU }),
// TODO:   showMenu            : () => ({ type: T.SHOW_MENU }),
// TODO:
// TODO:   showNewEntry: () =>
// TODO:     (dispatch) => {
// TODO:       dispatch(Actions.setSearchText(''));
// TODO:       dispatch(serverActions.Actions.search());
// TODO:       dispatch({
// TODO:         type: T.SHOW_NEW_ENTRY
// TODO:       });
// TODO:
// TODO:     },
// TODO:
// TODO:   showSearchResults   : () => ({ type: T.SHOW_SEARCH_RESULTS }),
// TODO:   toggleLandingPage   : () => ({ type: T.TOGGLE_MENU }),
// TODO:   showImprint         : () => ({ type: T.SHOW_IMPRINT }),
// TODO:   showPrivacyStatement: () => ({ type: T.SHOW_PRIVACY_STATEMENT }),
// TODO:   cancelNew           : () => ({ type: T.CANCEL_NEW }),
// TODO:   cancelEdit          : () => ({ type: T.CANCEL_EDIT }),
// TODO:   cancelRating        : () => ({ type: T.CANCEL_RATING }),
// TODO:   cancelWait          : () => ({ type: T.CANCEL_WAIT_IO }),
// TODO:   showLeftPanel       : () => ({ type: T.SHOW_LEFT_PANEL }),
// TODO:   hideLeftPanel       : () => ({ type: T.HIDE_LEFT_PANEL }),
// TODO:
// TODO:   hideLeftPanelOnMobile: () =>
// TODO:     (dispatch) => {
// TODO:       if (document.documentElement.clientWidth < 600) {
// TODO:         dispatch(Actions.hideLeftPanel())
// TODO:       }
// TODO:     },
// TODO:
// TODO:   showAllEntries: () =>
// TODO:     (dispatch, getState) => {
// TODO:       dispatch({
// TODO:         type: T.FETCH_ALL_ENTRIES,
// TODO:       });
// TODO:       const allIDs = [];
// TODO:       if(Array.isArray(getState().search.entryResults)){
// TODO:         allIDs.push(allIDs, getState().search.entryResults.map(e => e.id));
// TODO:       }
// TODO:       if(Array.isArray(getState().search.invisible)){
// TODO:         allIDs.push(allIDs, getState().search.invisible.map(e => e.id));
// TODO:       }
// TODO:       dispatch(serverActions.Actions.getEntries(allIDs));
// TODO:     },
// TODO:
// TODO:   showNewRating: (id) => ({
// TODO:     type: T.SHOW_NEW_RATING,
// TODO:     payload: id
// TODO:   }),
// TODO:
// TODO:   showInfo: (key) => ({
// TODO:     type: T.SHOW_INFO,
// TODO:     payload: key
// TODO:   }),
// TODO:
// TODO:   showSubscribeToBbox: () => ({
// TODO:     type: T.SHOW_SUBSCRIBE_TO_BBOX
// TODO:   }),
// TODO:
// TODO:   logout: () => ({
// TODO:     type: T.LOGOUT
// TODO:   }),
// TODO:
// TODO:   setCenter: (centerOrEntryId) => {
// TODO:     return {
// TODO:       type: T.SET_MAP_CENTER,
// TODO:       payload: centerOrEntryId
// TODO:     };
// TODO:   },
// TODO:
// TODO:   setZoom: (zoom) => {
// TODO:     return {
// TODO:       type: T.SET_ZOOM,
// TODO:       payload: parseFloat(zoom)
// TODO:     };
// TODO:   },
// TODO:
// TODO:   setBbox: (bbox) => {
// TODO:     return {
// TODO:       type: T.SET_BBOX,
// TODO:       payload: bbox
// TODO:     };
// TODO:   },
// TODO:
// TODO:   setCurrentEntry: (id, center) =>
// TODO:     (dispatch, getState) => {
// TODO:       dispatch(Actions.highlight(id ? [id] : []));
// TODO:       dispatch({
// TODO:         type: T.SET_CURRENT_ENTRY,
// TODO:         payload: id,
// TODO:       });
// TODO:       if(id && center && center.lat && center.lng){
// TODO:         dispatch(Actions.setZoom(mapConst.ENTRY_DEFAULT_ZOOM));
// TODO:         dispatch(Actions.setCenter(center));
// TODO:       } else if (id) {
// TODO:         dispatch(Actions.setCenter(id));
// TODO:       }
// TODO:     },
// TODO:
// TODO:   editCurrentEntry: () =>
// TODO:     (dispatch, getState) => {
// TODO:       const currentEntry = getState().server.entries[getState().search.current]
// TODO:       dispatch({
// TODO:         type: T.EDIT_CURRENT_ENTRY,
// TODO:         payload: currentEntry
// TODO:       });
// TODO:     },
// TODO:
// TODO:   updateStateFromURL: (hash) => {
// TODO:     return {
// TODO:       type: T.UPDATE_STATE_FROM_URL,
// TODO:       payload: hash
// TODO:     }
// TODO:   },
// TODO:
// TODO:   setCenterInUrl: (center) => {
// TODO:     return {
// TODO:       type: T.SET_CENTER_IN_URL,
// TODO:       payload: center
// TODO:     }
// TODO:   },
// TODO:
// TODO:   highlight: (id) => {
// TODO:     if (id == null) {
// TODO:       id = [];
// TODO:     }
// TODO:     if (!Array.isArray(id)) {
// TODO:       id = [id];
// TODO:     }
// TODO:     return {
// TODO:       type: T.HIGHLIGHT_ENTRIES,
// TODO:       payload: id
// TODO:     };
// TODO:   },
// TODO:
// TODO:   showOwnPosition: () =>
// TODO:     (dispatch) => {
// TODO:       dispatch({
// TODO:         type: T.SHOW_OWN_POSITION
// TODO:       });
// TODO:       GeoLocation.getLocation((position) => {
// TODO:         dispatch({
// TODO:           type: T.OWN_POSITION_RESULT,
// TODO:           payload: position
// TODO:         });
// TODO:       });
// TODO:     },
// TODO:
// TODO:   showOwnPosition15minutes: () =>
// TODO:     (dispatch) => {
// TODO:       dispatch({
// TODO:         type: T.SHOW_OWN_POSITION
// TODO:       });
// TODO:       GeoLocation.getLocation(((position) => {
// TODO:         dispatch({
// TODO:           type: T.OWN_POSITION_RESULT,
// TODO:           payload: position
// TODO:         });
// TODO:       }), 900000);
// TODO:     },
// TODO:
// TODO:   cancelOwnPosition: () => {
// TODO:     return {
// TODO:       type: T.CANCEL_OWN_POSITION
// TODO:     };
// TODO:   },
// TODO:
// TODO:   showFeatureToDonate: (feat) => {
// TODO:     return {
// TODO:       type: T.SHOW_FEATURE_TO_DONATE,
// TODO:       payload: feat
// TODO:     };
// TODO:   },
// TODO:
// TODO:   showMap: () => {
// TODO:     return {
// TODO:       type: T.SHOW_MAP
// TODO:     }
// TODO:   },
// TODO:
// TODO:   showResultList: () => {
// TODO:     return {
// TODO:       type: T.SHOW_SEARCH_RESULTS
// TODO:     }
// TODO:   },
// TODO:
// TODO:   explainRatingContext: (context) => {
// TODO:     return {
// TODO:       type: T.EXPLAIN_RATING_CONTEXT,
// TODO:       payload: context
// TODO:     }
// TODO:   },
// TODO:
// TODO:   onMoveend: (coordinates, mapCenter) =>
// TODO:     (dispatch, getState) => {
// TODO:
// TODO:       dispatch(serverActions.Actions.setSearchTime(Date.now()));
// TODO:
// TODO:       if(mapCenter.lat.toFixed(4) != coordinates.center.lat && mapCenter.lng.toFixed(4) != coordinates.center.lng){
// TODO:         dispatch(Actions.setCenter({
// TODO:           lat: coordinates.center.lat,
// TODO:           lng: coordinates.center.lng
// TODO:         }));
// TODO:       }
// TODO:       dispatch(Actions.setBbox(coordinates.bbox));
// TODO:       dispatch(serverActions.Actions.search());
// TODO:
// TODO:     },
// TODO:
// TODO:   onZoomend: (coordinates, zoom) =>
// TODO:     (dispatch, getState) => {
// TODO:       dispatch(serverActions.Actions.setSearchTime(Date.now()));
// TODO:
// TODO:       if(coordinates.zoom != zoom){
// TODO:         dispatch(Actions.setZoom(coordinates.zoom));
// TODO:       }
// TODO:     }
// TODO: };
// TODO:
// TODO: module.exports = Actions;
