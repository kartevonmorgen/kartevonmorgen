import T                          from "../constants/ActionTypes";
import GeoLocation                from "../GeoLocation";
import mapConst                   from "../constants/Map";
import appConst                   from "../constants/App";
import serverActions              from "./server";

const Actions = {

  setSearchText: (txt) => ({
    type: T.SET_SEARCH_TEXT,
    payload: txt
  }),

  setCitySearchText: (txt) => ({
    type: T.SET_CITY_SEARCH_TEXT,
    payload: txt
  }),

  finishCitySearch: () => ({
    type: T.FINISH_CITY_SEARCH
  }),

  toggleSearchCategory: (category) => {
    return {
      type: T.TOGGLE_SEARCH_CATEGORY,
      payload: category
    };
  },

  toggleMenu          : () => ({ type: T.TOGGLE_MENU }),
  showMenu            : () => ({ type: T.SHOW_MENU }),
  showNewEntry        : () => ({ type: T.SHOW_NEW_ENTRY }),
  showSearchResults   : () => ({ type: T.SHOW_SEARCH_RESULTS }),
  toggleLandingPage   : () => ({ type: T.TOGGLE_MENU }),
  showImprint         : () => ({ type: T.SHOW_IMPRINT }),
  showPrivacyStatement: () => ({ type: T.SHOW_PRIVACY_STATEMENT }),
  cancelNew           : () => ({ type: T.CANCEL_NEW }),
  cancelEdit          : () => ({ type: T.CANCEL_EDIT }),
  cancelRating        : () => ({ type: T.CANCEL_RATING }),
  cancelWait          : () => ({ type: T.CANCEL_WAIT_IO }),
  showLeftPanel       : () => ({ type: T.SHOW_LEFT_PANEL }),
  hideLeftPanel       : () => ({ type: T.HIDE_LEFT_PANEL }),

  showAllEntries: () =>
    (dispatch, getState) => {
      dispatch({
        type: T.FETCH_ALL_ENTRIES,
      });
      const allIDs = [];
      if(Array.isArray(getState().search.result)){
        allIDs.push(allIDs, getState().search.result.map(e => e.id));
      }
      if(Array.isArray(getState().search.invisible)){
        allIDs.push(allIDs, getState().search.invisible.map(e => e.id));
      }
      dispatch(serverActions.Actions.getEntries(allIDs));
    },

  showNewRating: (id) => ({
    type: T.SHOW_NEW_RATING,
    payload: id
  }),

  showInfo: (key) => ({
    type: T.SHOW_INFO,
    payload: key
  }),

  showSubscribeToBbox: () => ({
    type: T.SHOW_SUBSCRIBE_TO_BBOX
  }),

  logout: () => ({
    type: T.LOGOUT
  }),

  setCenter: (centerOrEntryId) => {
    return {
      type: T.SET_MAP_CENTER,
      payload: centerOrEntryId
    };
  },

  setZoom: (zoom) => {
    return {
      type: T.SET_ZOOM,
      payload: parseFloat(zoom)
    };
  },

  setBbox: (bbox) => {
    return {
      type: T.SET_BBOX,
      payload: bbox
    };
  },

  setCurrentEntry: (id, center) =>
    (dispatch, getState) => {
      dispatch(Actions.highlight(id ? [id] : []));
      dispatch({
        type: T.SET_CURRENT_ENTRY,
        payload: id,
      });
      if(id && center){
        dispatch(Actions.setZoom(mapConst.ENTRY_DEFAULT_ZOOM));
        dispatch(Actions.setCenter(center));
      }
    },

  updateStateFromURL: (hash) => {
    return {
      type: T.UPDATE_STATE_FROM_URL,
      payload: hash
    }
  },

  setCenterInUrl: (center) => {
    return {
      type: T.SET_CENTER_IN_URL,
      payload: center
    }
  },

  highlight: (id) => {
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
  },

  showOwnPosition: () =>
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
    },

  showOwnPosition15minutes: () =>
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
    },

  cancelOwnPosition: () => {
    return {
      type: T.CANCEL_OWN_POSITION
    };
  },

  showFeatureToDonate: (feat) => {
    return {
      type: T.SHOW_FEATURE_TO_DONATE,
      payload: feat
    };
  },

  showMap: () => {
    return {
      type: T.SHOW_MAP
    }
  },

  showResultList: () => {
    return {
      type: T.SHOW_SEARCH_RESULTS
    }
  },

  explainRatingContext: (context) => {
    return {
      type: T.EXPLAIN_RATING_CONTEXT,
      payload: context
    }
  },

  onMoveend: (coordinates, mapCenter) =>
    (dispatch, getState) => {

      dispatch({
        type: T.SET_SEARCH_TIME,
        payload: Date.now()
      });

      if(mapCenter.lat.toFixed(4) != coordinates.center.lat && mapCenter.lng.toFixed(4) != coordinates.center.lng){
        dispatch(Actions.setCenter({
          lat: coordinates.center.lat,
          lng: coordinates.center.lng
        }));
      }
      dispatch(Actions.setBbox(coordinates.bbox));
      dispatch(serverActions.Actions.search());

    },

  onZoomend: (coordinates, zoom) =>
    (dispatch, getState) => {
      dispatch({
        type: T.SET_SEARCH_TIME,
        payload: Date.now()
      });

      if(coordinates.zoom != zoom){
        dispatch(Actions.setZoom(coordinates.zoom));
      }
    }
};

module.exports = Actions;
