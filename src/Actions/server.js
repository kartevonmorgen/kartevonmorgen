import T                          from "../constants/ActionTypes";
import WebAPI                     from "../WebAPI";
import { EDIT, RATING, LOGIN, REGISTER } from "../constants/Form";
import { LICENSE_NAME }           from "../constants/App";
import { initialize, stopSubmit } from "redux-form";


const flatten = nestedArray => nestedArray.reduce(
    (a, next) => a.concat(Array.isArray(next) ? flatten(next) : next), []
);

const Actions = {

  search: () =>
    (dispatch, getState) => {

      const s = getState().search;
      const m = getState().map;
      const cats = s.categories;
      const sw = m.bbox._southWest;
      const ne = m.bbox._northEast;
      const bbox = [sw.lat, sw.lng, ne.lat, ne.lng];

      if (!cats.length < 1 && (s.text == null || !s.text.trim().endsWith("#"))) {
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
              dispatch(Actions.getEntries(ids));
          } else{
            dispatch(Actions.noSearchResults());
          }
        });

        if(s.text != null){
          const address = s.text .replace(/#/g,"");
          WebAPI.searchAddressOverpass(address, (err, res) => {
            dispatch({
              type: T.SEARCH_ADDRESS_RESULT,
              payload: err || res.results,
              error: err != null
            });
          });
        }
      }
    },

  noSearchResults: () => ({
    type: T.NO_SEARCH_RESULTS
  }),

  searchCity: () =>
    (dispatch, getState) => {
      const s = getState().search;
      WebAPI.searchAddressOverpass(s.city, (err, res) => {
        dispatch({
          type: T.SEARCH_ADDRESS_RESULT,
          payload: err || res.results,
          error: err != null
        });
      });
    },

  getEntries: (ids=[]) =>
    (dispatch,getState) => {
      let entriesToFetch = getState().search.entriesToFetch;
      dispatch({
        type: T.SET_MORE_ENTRIES_AVAILABLE,
        moreEntriesAvailable: !entriesToFetch.all && (ids.length > entriesToFetch.num)
      });
      ids = ids.slice(0, entriesToFetch.num);

      const entries = getState().server.entries; 
      const fetch_ids_entries = ids.filter((x) => entries[x] == null);
      if (fetch_ids_entries.length > 0) {
        WebAPI.getEntries(ids, (err, res) => {
          dispatch({
            type: T.ENTRIES_RESULT,
            payload: err || res,
            error: err != null
          });
          if (!err) {
            const { ratings } = getState().server;
            const ids = flatten(res.map(e => e.ratings));
            const fetch_ids_ratings = ids.filter((x) => ratings[x] == null);
            if(fetch_ids_ratings.length > 0) {
              dispatch(Actions.getRatings(fetch_ids_ratings));
            }
          }
        });
      } else{
        const entr = Object.keys(entries).map((key) => entries[key])
        dispatch({
          type: T.ENTRIES_RESULT,
          payload: entr.filter((e) => ids.includes(e.id)),
          error: false
        })
      }
    },

  getRatings: (ids=[]) =>
    (dispatch) => {
      WebAPI.getRatings(ids, (err, res) => {
        dispatch({
          type: T.RATINGS_RESULT,
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

  subscribeToBbox: (bbox, changeExistingBbox) => 
    (dispatch, getState) => {
      WebAPI.subscribeToBbox(bbox, (err, res) => {
        if (err) {
          dispatch({
            type: T.SUBSCRIBE_TO_BBOX_RESULT,
            payload: err
          });
          dispatch({
            type: 'GROWLER__SHOW',
            growler: {
              text: 'Oups! Es ist ein Fehler aufgetreten...',
              type: 'growler--error'
            }
          });
        } else {
          dispatch({
            type: T.SUBSCRIBE_TO_BBOX_RESULT,
            payload: res
          });
          dispatch({
            type: 'GROWLER__SHOW',
            growler: {
              text: changeExistingBbox ? 'Abonnement wurde geändert.' 
                : 'Kartenausschnitt wurde abonniert.',
              type: 'growler--success'
            }
          });
          dispatch({
            type: 'UPDATE_SUBSCRIPTION_INFO',
            subscriptionExists: true
          })
        }
      })
  },

  unsubscribeFromBboxes: (u_id) =>
    (dispatch, getState) => {
      WebAPI.unsubscribeFromBboxes((err, res) => {
        if (err) {
          dispatch({
            type: 'GROWLER__SHOW',
            growler: {
              text: 'Oups! Es ist ein Fehler aufgetreten...',
              type: 'growler--error'
            }
          });
        } else {
          dispatch({
            type: 'GROWLER__SHOW',
            growler: {
              text: 'Abonnement wurde abbestellt',
              type: 'growler--success'
            }
          });
          dispatch({
            type: 'UPDATE_SUBSCRIPTION_INFO',
            subscriptionExists: false
          })
        }
      })
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
              type: T.URL_SET_CURRENT_ENTRY,
              entry: id,
              center: getState().map.center,
              zoom: getState().map.zoom,
              searchText: getState().search.text,
            });
            dispatch(initialize(EDIT.id, {}, EDIT.fields));
            if (!err) {
              dispatch({
                type: T.SET_CURRENT_ENTRY,
                entry: id,
                showLeft: true
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
                    text: 'Eintrag wurde gespeichert.',
                    type: 'growler--success'
                  }
                });
              }
            }
          });
        }
      });
    },

  createRating: (rating) =>
    (dispatch, getState) => {
      const r = {
        ...rating,
        value: Number.parseInt(rating.value)
      };
      WebAPI.createRating(r, (err, res) => {
        if (err) {
          dispatch(stopSubmit(RATING.id, {
            _error: err
          }));
        } else {
          WebAPI.getEntries([r.entry], (err, res) => {
            dispatch({
              type: T.ENTRIES_RESULT,
              payload: err || res,
              error: err != null
            });
            if (!err && res && res.length == 1) {
              dispatch({
                type: T.SET_CURRENT_ENTRY,
                entry: res[0].id,
                showLeft: true
              });
              dispatch(Actions.getRatings(res[0].ratings));
              dispatch({
                type: 'GROWLER__SHOW',
                growler: {
                  text: 'Bewertung wurde gespeichert.',
                  type: 'growler--success'
                }
              });
              dispatch(initialize(RATING.id, {}, RATING.fields));
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
      if (!getState().form.edit.kvm_flag_markerWasEnteredManually) {
        WebAPI.searchAddressNominatim(address, (err, res) => {
          if (!(err || getState().form.edit.kvm_flag_markerWasEnteredManually)) {
            if (res && res.length && res[0] && res[0].lat && res[0].lon) {
              dispatch({
                type: T.SET_MARKER,
                payload: {
                  lat: parseFloat(res[0].lat),
                  lng: parseFloat(res[0].lon)
                },
                manual: false,
                error: err != null
              });
            }
          }
        });
      }
    },

  login: (username, password) =>
    (dispatch, getState) => {
      dispatch({
        type: T.LOGIN_SUBMITTING
      });
      WebAPI.login({username, password}, (err, res) => {
        if (err) {
          dispatch(stopSubmit(LOGIN.id, {
            _error: err
          }));
        } else{
          WebAPI.getUser(username, (err, res) => {
            dispatch({
              type: T.LOGIN_RESULT,
              payload: err || res,
              error: err != null
            });
          });
          WebAPI.getBboxSubscriptions((err, res) => {
            if(!err){
              dispatch({
                type: T.UPDATE_SUBSCRIPTION_INFO,
                subscriptionExists: res.body.length > 0
              })
            }
          });
        }
      });
    },

  register: (username, password, email) =>
    (dispatch, getState) => {
      dispatch({
        type: T.REGISTER_SUBMITTING
      });
      WebAPI.register({username, password, email}, (err, res) => {
        if (err) {
          dispatch(stopSubmit(REGISTER.id, {
            _error: err
          }));
        } else{
          dispatch({
            type: T.REGISTER_RESULT,
            result: res,
            email: email 
          });
        }
      });
    },

  confirmEmail: (u_id) =>
    (dispatch, getState) => {
      WebAPI.confirmEmail(u_id, (err, res) => {
        if(err){
          dispatch({
            type: T.EMAIL_CONFIRMATION_RESULT,
            error: true
          })
        } else{
          dispatch({
            type: T.EMAIL_CONFIRMATION_RESULT,
            error: false
          })
        }
      })
    },

  deleteAccount: () => 
    (dispatch, getState) => {
      WebAPI.deleteAccount(getState().user.id, (err, res) => {
        if(!err){
          dispatch({
            type: T.LOGOUT
          });
        }
      });
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
            payload: state.server.entries[state.search.current]
          });
        } else {
          dispatch({
            type: T.EDIT_CURRENT_ENTRY,
            payload: err,
            error: true
          });
        }
      });
    }
}

module.exports = Actions;