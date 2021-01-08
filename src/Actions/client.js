import {notify}                   from "reapop"
import T                          from "../constants/ActionTypes";
import C                          from "../constants/Categories"
import {notificationSettings}     from "../constants/view"
import GeoLocation                from "../GeoLocation";
import mapConst                   from "../constants/Map";
import V                          from "../constants/PanelView"
import * as serverActions         from "./server";
import WebAPI                     from "../WebAPI"

export const setCustomizations = (customizations) => ({
   type: T.SET_CUSTOMIZATIONS,
   payload: customizations
 })

export const  setSearchText = (txt) => ({
   type: T.SET_SEARCH_TEXT,
   payload: txt
 })

export const  backupSearchText = () => ({type: T.BACKUP_SEARCH_TEXT})

export const  restoreSearchText = () => ({type: T.RESTORE_SEARCH_TEXT})

export const  restoreSearch = () =>
   (dispatch) => {
     dispatch(restoreSearchText())
     dispatch(serverActions.search())
   }

export const  setCitySearchText = (txt) => ({
   type: T.SET_CITY_SEARCH_TEXT,
   payload: txt
 })

export const  finishCitySearch = () => ({
   type: T.FINISH_CITY_SEARCH
 })

export const  enableSearchCategory = (category) => {
   return {
     type: T.ENABLE_SEARCH_CATEGORY,
     payload: category
   };
 }

export const  disableSearchCategory = (category) => {
   return {
     type: T.DISABLE_SEARCH_CATEGORY,
     payload: category
   };
 }

export const  toggleMenu           = () => ({ type: T.TOGGLE_MENU })
export const  showMenu             = () => ({ type: T.SHOW_MENU })

export const  showNewEntry = () =>
   (dispatch) => {
     // dispatch(Actions.setSearchText(''));
     dispatch(serverActions.search());
     dispatch({
       type: T.SHOW_NEW_ENTRY
     });

   }

export const  showSearchResults    = () => ({ type: T.SHOW_SEARCH_RESULTS })
export const  toggleLandingPage    = () => ({ type: T.TOGGLE_MENU })
export const  showImprint          = () => ({ type: T.SHOW_IMPRINT })
export const  showPrivacyStatement = () => ({ type: T.SHOW_PRIVACY_STATEMENT })

export const  cancelNew            = () =>
   (dispatch) => {
     // dispatch(Actions.restoreSearch())
     dispatch({ type: T.CANCEL_NEW })
   }

export const cancelEdit           = () => ({ type: T.CANCEL_EDIT })
export const cancelRating         = () => ({ type: T.CANCEL_RATING })
export const cancelWait           = () => ({ type: T.CANCEL_WAIT_IO })
export const showLeftPanel        = () => ({ type: T.SHOW_LEFT_PANEL })
export const hideLeftPanel        = () => ({ type: T.HIDE_LEFT_PANEL })

export const showNotification = (message, status) => (dispatch) => {
   return (
     dispatch(notify({
       ...notificationSettings,
       message,
       status,
     }))
   )
 }

export const showEmbedModal = () =>
   (dispatch) => {
     dispatch({
       type: T.SHOW_EMBED_MODAL,
       payload: V.EMBED
     })
   }

export const closeModal = () =>
   (dispatch) => {
     dispatch({
       type: T.CLOSE_MODAL
     })
   }

export const hideLeftPanelOnMobile = () =>
   (dispatch) => {
     if (document.documentElement.clientWidth < 600) {
       dispatch(hideLeftPanel())
     }
   }

export const showAllEntries = () =>
   (dispatch, getState) => {
     dispatch({
       type: T.FETCH_ALL_ENTRIES,
     });
     const allIDs = [];
     if(Array.isArray(getState().search.entryResults)){
       allIDs.push(allIDs, getState().search.entryResults.map(e => e.id));
     }
     if(Array.isArray(getState().search.invisible)){
       allIDs.push(allIDs, getState().search.invisible.map(e => e.id));
     }
     dispatch(serverActions.getEntries(allIDs));
   }

export const showNewRating = (id) => ({
   type: T.SHOW_NEW_RATING,
   payload: id
 })

export const showNewComment = (context) => ({
   type: T.SHOW_NEW_COMMENT,
   payload: context
 })

export const showInfo = (key) => ({
   type: T.SHOW_INFO,
   payload: key
 })

export const showSubscribeToBbox = () => ({
   type: T.SHOW_SUBSCRIBE_TO_BBOX
 })

export const logout = () => ({
   type: T.LOGOUT
 })

export const setCenter = (centerOrEntryId) => {
   return {
     type: T.SET_MAP_CENTER,
     payload: centerOrEntryId
   };
 }

export const setZoom = (zoom) => {
   zoom = Math.round(parseFloat(zoom) * 100) / 100 //round to 2 decimals
   return {
     type: T.SET_ZOOM,
     payload: zoom
   };
 }

export const setBbox = (bbox) => {
   return {
     type: T.SET_BBOX,
     payload: bbox
   };
 }

export const setRegion = (regionName) =>
   (dispatch, getState) => {
     WebAPI.searchAddressNominatim(regionName, (err, results) => {
       if (err) {
         console.error(err)
         return
       }
       if (!results || !Array.isArray(results) || results.length === 0) {
         // no region found
         return
       }

       const region = results[0]
       // coordinates, mapCenter
       const mapCenter = {lat: 0.0, lng: 0.0}
       const coordinates = {
         center: {
           lat: parseFloat(region.lat),
           lng: parseFloat(region.lon)
         },
         bbox: {
           _southWest: {
             lat: region.boundingbox[0],
             lng: region.boundingbox[2]
           },
           _northEast: {
             lat: region.boundingbox[1],
             lng: region.boundingbox[3]
           }
         }
       }

       // console.log("on move end set region")
       dispatch(onMoveend(coordinates, mapCenter))
     })
   }

export const setCurrentEntry = (id, center) =>
   (dispatch, getState) => {
     dispatch(highlight(id ? [id] : []));
     if(id && center && center.lat && center.lng){
       dispatch(setZoom(mapConst.ENTRY_DEFAULT_ZOOM));
       dispatch(setCenter(center));
     } else if (id) {
       dispatch(setCenter(id));
     }
     dispatch({
       type: T.SET_CURRENT_ENTRY,
       payload: id,
     });
   }

export const editCurrentEntry = () =>
   (dispatch, getState) => {
     const currentEntry = getState().server.entries[getState().search.current]
     dispatch({
       type: T.EDIT_CURRENT_ENTRY,
       payload: currentEntry
     });
   }

// tags are comma joint string
export const setTags= (tags) =>
(dispatch) => (
  dispatch({
    type: T.SET_TAGS,
    payload: tags
  })
)

 // set categories on the editing dropdown
export const setCategory = (category) =>
   (dispatch) => {
     const categoryIdArray = Object.keys(C.NAMES).filter(k => C.NAMES[k] === category)
     const categoryId = categoryIdArray.length ? categoryIdArray[0] : C.IDS.EVENT

     return dispatch({
       type: T.SET_CATEGORY,
       payload: categoryId
     })
   }

export const updateStateFromURL = (hash) => {
   return {
     type: T.UPDATE_STATE_FROM_URL,
     payload: hash
   }
 }

export const setCenterInUrl = (center) => {
   return {
     type: T.SET_CENTER_IN_URL,
     payload: center
   }
 }

export const highlight = (id) => {
   if (id == null) {
     id = [];
   }
   if (!Array.isArray(id)) {
     id = [id];
   }
   return {
     type: T.HIGHLIGHT_ENTRIES,
     payload: id
   };
 }

export const showOwnPosition = () =>
   (dispatch) => {
     dispatch({
       type: T.SHOW_OWN_POSITION
     });
     GeoLocation.getLocation((position) => {
       dispatch({
         type: T.OWN_POSITION_RESULT,
         payload: position
       });
     });
   }

export const showOwnPosition15minutes = () =>
   (dispatch) => {
     dispatch({
       type: T.SHOW_OWN_POSITION
     });
     GeoLocation.getLocation(((position) => {
       dispatch({
         type: T.OWN_POSITION_RESULT,
         payload: position
       });
     }), 900000);
   }

export const cancelOwnPosition = () => {
   return {
     type: T.CANCEL_OWN_POSITION
   };
 }

export const showFeatureToDonate = (feat) => {
   return {
     type: T.SHOW_FEATURE_TO_DONATE,
     payload: feat
   };
 }

export const showMap = () => {
   return {
     type: T.SHOW_MAP
   }
 }

export const showResultList = () => {
   return {
     type: T.SHOW_SEARCH_RESULTS
   }
 }

export const explainRatingContext = (context) => {
   return {
     type: T.EXPLAIN_RATING_CONTEXT,
     payload: context
   }
 }

export const onMoveend = (coordinates, mapCenter) =>
   (dispatch, getState) => {
     // console.log("called on move end map center: ", mapCenter)
     // console.log("called on move end coordinates: ", coordinates)

     dispatch(serverActions.setSearchTime(Date.now()));

     if(mapCenter.lat.toFixed(4) !== coordinates.center.lat.toFixed(4) && mapCenter.lng.toFixed(4) !== coordinates.center.lng.toFixed(4)){
       // debugger
       dispatch(setCenter({
         lat: coordinates.center.lat,
         lng: coordinates.center.lng
       }));
     }
     dispatch(setBbox(coordinates.bbox));
     dispatch(serverActions.search());

   }

export const onZoomend = (coordinates, zoom) =>
   (dispatch, getState) => {
     dispatch(serverActions.setSearchTime(Date.now()));

     if(coordinates.zoom !== zoom){
       dispatch(setZoom(coordinates.zoom));
     }
   }
