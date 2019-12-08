// TODO: import GeoLocation   from "../GeoLocation";
// TODO: import mapConst      from "../constants/Map";
// TODO: import serverActions from "./server";

// TODO: replace with real types
type EntryId = String;
type Category = String;
type Feature = String;
type RatingContext = String;
type RatingId = String;
type Info = String;
type BBox = String;
type Url = String;
type MapCenter = String;
type CenterOrEntryId = String;
type Coordinates = String;
type Zoom = f32;

#[derive(Debug, Clone)]
pub enum Msg {
    setSearchText(String),               // TODO: SET_SEARCH_TEXT
    setCitySearchText(String),           // TODO: SET_CITY_SEARCH_TEXT
    finishCitySearch,                    // TODO: FINISH_CITY_SEARCH
    enableSearchCategory(Category),      // TODO: ENABLE_SEARCH_CATEGORY
    disableSearchCategory(Category),     // TODO: DISABLE_SEARCH_CATEGORY
    toggleMenu,                          // TODO: TOGGLE_MENU
    showMenu,                            // TODO: SHOW_MENU
    showSearchResults,                   // TODO: SHOW_SEARCH_RESULTS
    toggleLandingPage,                   // TODO: TOGGLE_MENU
    showImprint,                         // TODO: SHOW_IMPRINT
    showPrivacyStatement,                // TODO: SHOW_PRIVACY
    cancelNew,                           // TODO: CANCEL_NEW
    cancelEdit,                          // TODO: CANCEL_EDIT
    cancelRating,                        // TODO: CANCEL_RATING
    cancelWait,                          // TODO: CANCEL_WAIT_IO
    showLeftPanel,                       // TODO: SHOW_LEFT_PANEL
    hideLeftPanel,                       // TODO: HIDE_LEFT_PANEL
    cancelOwnPosition,                   // TODO: CANCEL_OWN_POSITION
    showFeatureToDonate(Feature),        // TODO: SHOW_FEATURE_TO_DONATE
    showMap,                             // TODO: SHOW_MAP
    showResultList,                      // TODO: SHOW_SEARCH_RESULTS
    explainRatingContext(RatingContext), // TODO: EXPLAIN_RATING_CONTEXT
    showNewRating(RatingId),             // TODO: SHOW_NEW_RATING
    showInfo(Info),                      // TODO: SHOW_INFO
    showSubscribeToBbox,                 // TODO: SHOW_SUBSCRIBE_TO_BBOX
    logout,                              // TODO: LOGOUT
    setCenter(CenterOrEntryId),          // TODO: SET_MAP_CENTER
    setZoom(Zoom),                       // TODO: SET_ZOOM
    setBbox(BBox),                       // TODO: SET_BBOX
    updateStateFromURL(Url),             // TODO: UPDATE_STATE_FROM_URL
    setCenterInUrl(MapCenter),           // TODO: SET_CENTER_IN_URL
    highlight(Vec<EntryId>),             // TODO: HIGHLIGHT_ENTRIES

    // TODO: ### ASYNC MESSAGES ###
    showNewEntry,
    // TODO: (dispatch) => {
    // TODO:   dispatch(Actions.setSearchText(''));
    // TODO:   dispatch(serverActions.Actions.search());
    // TODO:   dispatch({
    // TODO:     type: T.SHOW_NEW_ENTRY
    // TODO:   });
    // TODO: },
    hideLeftPanelOnMobile,
    // TODO: (dispatch) => {
    // TODO:   if (document.documentElement.clientWidth < 600) {
    // TODO:     dispatch(Actions.hideLeftPanel())
    // TODO:   }
    // TODO: },
    showAllEntries,
    // TODO: (dispatch, getState) => {
    // TODO:   dispatch({
    // TODO:     type: T.FETCH_ALL_ENTRIES,
    // TODO:   });
    // TODO:   const allIDs = [];
    // TODO:   if(Array.isArray(getState().search.entryResults)){
    // TODO:     allIDs.push(allIDs, getState().search.entryResults.map(e => e.id));
    // TODO:   }
    // TODO:   if(Array.isArray(getState().search.invisible)){
    // TODO:     allIDs.push(allIDs, getState().search.invisible.map(e => e.id));
    // TODO:   }
    // TODO:   dispatch(serverActions.Actions.getEntries(allIDs));
    // TODO: },
    setCurrentEntry(EntryId, MapCenter),
    // TODO: (dispatch, getState) => {
    // TODO:   dispatch(Actions.highlight(id ? [id] : []));
    // TODO:   dispatch({
    // TODO:     type: T.SET_CURRENT_ENTRY,
    // TODO:     payload: id,
    // TODO:   });
    // TODO:   if(id && center && center.lat && center.lng){
    // TODO:     dispatch(Actions.setZoom(mapConst.ENTRY_DEFAULT_ZOOM));
    // TODO:     dispatch(Actions.setCenter(center));
    // TODO:   } else if (id) {
    // TODO:     dispatch(Actions.setCenter(id));
    // TODO:   }
    // TODO: },
    editCurrentEntry,
    // TODO: (dispatch, getState) => {
    // TODO:   const currentEntry = getState().server.entries[getState().search.current]
    // TODO:   dispatch({
    // TODO:     type: T.EDIT_CURRENT_ENTRY,
    // TODO:     payload: currentEntry
    // TODO:   });
    // TODO: },
    showOwnPosition,
    // TODO: (dispatch) => {
    // TODO:   dispatch({
    // TODO:     type: T.SHOW_OWN_POSITION
    // TODO:   });
    // TODO:   GeoLocation.getLocation((position) => {
    // TODO:     dispatch({
    // TODO:       type: T.OWN_POSITION_RESULT,
    // TODO:       payload: position
    // TODO:     });
    // TODO:   });
    // TODO: },
    showOwnPosition15minutes,
    // TODO: (dispatch) => {
    // TODO:   dispatch({
    // TODO:     type: T.SHOW_OWN_POSITION
    // TODO:   });
    // TODO:   GeoLocation.getLocation(((position) => {
    // TODO:     dispatch({
    // TODO:       type: T.OWN_POSITION_RESULT,
    // TODO:       payload: position
    // TODO:     });
    // TODO:   }), 900000);
    // TODO: },
    onMoveend(Coordinates, MapCenter),
    // TODO: (dispatch, getState) => {
    // TODO:
    // TODO:   dispatch(serverActions.Actions.setSearchTime(Date.now()));
    // TODO:
    // TODO:   if(mapCenter.lat.toFixed(4) != coordinates.center.lat && mapCenter.lng.toFixed(4) != coordinates.center.lng){
    // TODO:     dispatch(Actions.setCenter({
    // TODO:       lat: coordinates.center.lat,
    // TODO:       lng: coordinates.center.lng
    // TODO:     }));
    // TODO:   }
    // TODO:   dispatch(Actions.setBbox(coordinates.bbox));
    // TODO:   dispatch(serverActions.Actions.search());
    // TODO:
    // TODO: },
    onZoomend(Coordinates, Zoom),
    // TODO: (dispatch, getState) => {
    // TODO:   dispatch(serverActions.Actions.setSearchTime(Date.now()));
    // TODO:
    // TODO:   if(coordinates.zoom != zoom){
    // TODO:     dispatch(Actions.setZoom(coordinates.zoom));
    // TODO:   }
    // TODO: }
    FetchLocale(String),
    SetLocale(String),
}
