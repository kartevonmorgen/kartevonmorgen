import T                          from "./constants/ActionTypes";
import WebAPI                     from "./WebAPI";
import GeoLocation                from "./GeoLocation";
import { EDIT }                   from "./constants/Form";
import { initialize, stopSubmit } from "redux-form";

const LICENSE_NAME = "CC0-1.0";

const Actions = {

  setSearchText: (txt) => ({
    type: T.SET_SEARCH_TEXT,
    payload: txt
  }),

  setCitySearchText: (txt) => ({
    type: T.SET_CITY_SEARCH_TEXT,
    payload: txt
  }),

  search: () =>
    (dispatch, getState) => {

      const s = getState().search;
      const m = getState().map;
      const cats = s.categories;
      const sw = m.bbox.getSouthWest();
      const ne = m.bbox.getNorthEast();
      const bbox = [sw.lat, sw.lng, ne.lat, ne.lng];

      if (cats.length < 1) {
        return;
      }

      WebAPI.search(s.text, cats, bbox, (err, res) => {

        dispatch({
          type: T.SEARCH_RESULT,
          payload: err || res,
          error: err != null,
          noList: s.text == null
        });

        const ids =
          Array.isArray(res != null ? res.visible : void 0)
          ? Array.isArray(res.invisible)
            ? res.visible.concat(res.invisible)
            : res.visible
          : res != null
            ? res.invisible
            : void 0;


        if ((Array.isArray(ids)) && ids.length > 0) {

          const entries = getState().entries;
          const fetch_ids = ids.filter((x) => entries[x] == null);

          if (fetch_ids.length > 0) {
            dispatch(Actions.getEntries(fetch_ids));
          }

        }
      });

      WebAPI.searchAddress(s.text, (err, res) => {
        dispatch({
          type: T.SEARCH_ADDRESS_RESULT,
          payload: err || res,
          error: err != null
        });
      });

    },

  searchCity: () =>
    (dispatch, getState) => {
      const s = getState().search;
      WebAPI.searchAddress(s.city, (err, res) => {
        dispatch({
          type: T.SEARCH_ADDRESS_RESULT,
          payload: err || res,
          error: err != null
        });
      });
    },

  getEntries: (ids) =>
    (dispatch) => {
      if (ids == null) {
        ids = [];
      }
      WebAPI.getEntries(ids, (err, res) => {
        dispatch({
          type: T.ENTRIES_RESULT,
          payload: err || res,
          error: err != null
        });
      });
    },

  getAllCategories: () =>
    (dispatch) => {
      WebAPI.getAllCategories((err, res) => {
        dispatch({
          type: T.CATEGORIES_RESULT,
          payload: err || res,
          error: err != null
        });
      });
    },

  getServerInfo: () =>
    (dispatch) => {
      WebAPI.getServerInfo((err, res) => {
        dispatch({
          type: T.SERVER_INFO_RESULT,
          payload: err || res,
          error: err != null
        });
      });
    },

  toggleSearchCategory: (category) => {
    return {
      type: T.TOGGLE_SEARCH_CATEGORY,
      payload: category
    };
  },

  toggleMenu: () => {
    return {
      type: T.TOGGLE_MENU
    };
  },

  showMenu: () => {
    return {
      type: T.SHOW_MENU
    };
  },

  showNewEntry: () => {
    return {
      type: T.SHOW_NEW_ENTRY
    };
  },

  toggleLandingPage: () => {
    return {
      type: T.TOGGLE_MENU
    };
  },

  showInfo: (key) => {
    return {
      type: T.SHOW_INFO,
      payload: key
    };
  },

  showImprint: () => {
    return {
      type: T.SHOW_IMPRINT
    };
  },

  cancelNew: () => {
    return {
      type: T.CANCEL_NEW
    };
  },

  cancelEdit: () => {
    return {
      type: T.CANCEL_EDIT
    };
  },

  cancelWait: () => {
    return {
      type: T.CANCEL_WAIT_IO
    };
  },

  closeIoErrorMessage: () => {
    return {
      type: T.CLOSE_IO_ERROR_MESSAGE
    };
  },

  saveEntry: (e) =>
    (dispatch, getState) => {
      const saveFunc = (e != null ? e.id : void 0) ? WebAPI.saveEntry : WebAPI.saveNewEntry;
      if (e.license == null) {
        e.license = LICENSE_NAME;
      }
      saveFunc(e, (err, res) => {
        if (err) {
          dispatch(stopSubmit(EDIT.id, {
            _error: err
          }));
        } else {
          const id = (e != null ? e.id : void 0) || res;
          WebAPI.getEntries([id], (err, res) => {
            dispatch({
              type: T.ENTRIES_RESULT,
              payload: err || res,
              error: err != null
            });
            dispatch(initialize(EDIT.id, {}, EDIT.fields));
            if (!err) {
              dispatch({
                type: T.SET_CURRENT_ENTRY,
                payload: id
              });
              if (!(e != null ? e.id : void 0)) {
                dispatch({
                  type: T.NEW_ENTRY_RESULT,
                  payload: id
                });
              } else {
                dispatch({
                  type: 'GROWLER__SHOW',
                  growler: {
                    text: 'Entry was successfully saved!',
                    type: 'growler--success'
                  }
                });
              }
            }
          });
        }
      });
    },

  setMarker: (latlng) =>
    (dispatch, getState) => {
      dispatch({
        type: T.SET_MARKER,
        payload: latlng,
        manual: true
      });
      WebAPI.searchGeolocation(latlng, (err, res) => {
        dispatch({
          type: T.MARKER_ADDRESS_RESULT,
          payload: err || res,
          error: err != null
        });
      });
    },

  geocodeAndSetMarker: (address) =>
    (dispatch, getState) => {
      if (!getState().form.edit.markerWasEnteredManually) {
        WebAPI.searchAddress(address, (err, res) => {
          if (!(err || getState().form.edit.markerWasEnteredManually)) {
            if (res && res.length && res[0] && res[0].lat && res[0].lon) {
              dispatch({
                type: T.SET_MARKER,
                payload: {
                  lat: res[0].lat,
                  lng: res[0].lon
                },
                manual: false,
                error: err != null
              });
            }
          }
        });
      }
    },

  setCenter: (center) => {
    return {
      type: T.SET_MAP_CENTER,
      payload: center
    };
  },

  setZoom: (zoom) => {
    return {
      type: T.SET_ZOOM,
      payload: zoom
    };
  },

  setBbox: (bbox) => {
    return {
      type: T.SET_BBOX,
      payload: bbox
    };
  },

  setCurrentEntry: (id) => {
    return {
      type: T.SET_CURRENT_ENTRY,
      payload: id
    };
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

  editCurrentEntry: () =>
    (dispatch, getState) => {
      dispatch({
        type: T.SHOW_IO_WAIT
      });
      WebAPI.getEntries([getState().search.current], (err, res) => {
        if (!err) {
          dispatch({
            type: T.ENTRIES_RESULT,
            payload: res
          });
          const state = getState();
          dispatch({
            type: T.EDIT_CURRENT_ENTRY,
            payload: state.entries[state.search.current]
          });
        } else {
          dispatch({
            type: T.EDIT_CURRENT_ENTRY,
            payload: err,
            error: true
          });
        }
      });
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
  }

};

module.exports = Actions;
