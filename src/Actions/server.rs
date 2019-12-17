use crate::entities::*;
use seed::fetch::FailReason;

// TODO: import { NUM_ENTRIES_TO_FETCH }   from "../constants/Search";
// TODO: import WebAPI                     from "../WebAPI";
// TODO: import { EDIT, RATING, LOGIN, REGISTER } from "../constants/Form";
// TODO: import { NEW_ENTRY_LICENSE }      from "../constants/App";
// TODO: import { initialize, stopSubmit } from "redux-form";
// TODO: import mapConst                   from "../constants/Map";
// TODO: import appConst                   from "../constants/App";
// TODO: import { notificationSettings }   from "../constants/view";
// TODO: import LICENSES                   from "../constants/Licenses";
// TODO: import { MAIN_IDS, IDS }          from "../constants/Categories";
// TODO: import i18n                       from "../i18n";
// TODO: import { getMidnightUnixtime }    from "../util/datetime";
// TODO: import { notify }                 from "reapop";

// TODO: replace with real types
type UserId = String;
type Email = String;
type Password = String;
type Id = String;
type LatLng = String;
type Rating = String;
type Entry = String;
type Address = String;
type ChangeExistingBbox = String;
type BBox = String;
type Time = String;

type Result<T> = std::result::Result<T, FailReason<T>>;

#[derive(Debug, Clone)]
pub enum Msg {
    setSearchTime(Time), // TODO: T.SET_SEARCH_TIME,

    // TODO: ### ASYNC MESSAGES ###
    search,
    searchCity,
    // TODO:     (dispatch, getState) => {
    // TODO:       dispatch(Actions.setSearchTime(Date.now()));
    // TODO:       const s = getState().search;
    // TODO:       const searchFn = () => {
    // TODO:         dispatch(Actions.setSearchTime(null));
    // TODO:         WebAPI.searchAddressNominatim(s.city, (err, res) => {
    // TODO:           dispatch({
    // TODO:             type: T.SEARCH_ADDRESS_RESULT,
    // TODO:             payload: err || res,
    // TODO:             error: err != null
    // TODO:           });
    // TODO:         });
    // TODO:       };
    // TODO:
    // TODO:       const triggerSearch = () => {
    // TODO:         const { timedActions } = getState();
    // TODO:         const lastTriggered = timedActions.searchLastTriggered;
    // TODO:
    // TODO:         if (lastTriggered != null) {
    // TODO:           const duration = Date.now() - lastTriggered;
    // TODO:           if (duration > appConst.SEARCH_DELAY) {
    // TODO:             searchFn();
    // TODO:           } else {
    // TODO:             setTimeout(triggerSearch, appConst.SEARCH_DELAY);
    // TODO:           }
    // TODO:         }
    // TODO:       };
    // TODO:
    // TODO:       setTimeout(triggerSearch, appConst.SEARCH_DELAY+5);
    // TODO:     },
    getEntries(Vec<Id>),
    // TODO:     (dispatch, getState) => {
    // TODO:       let {
    // TODO:         fetchedAllEntries,
    // TODO:         moreEntriesAvailable
    // TODO:       } = getState().search;
    // TODO:       dispatch({
    // TODO:         type: T.SET_MORE_ENTRIES_AVAILABLE,
    // TODO:         payload: !fetchedAllEntries && (ids.length > NUM_ENTRIES_TO_FETCH)
    // TODO:       });
    // TODO:       ids = ids.slice(0, NUM_ENTRIES_TO_FETCH);
    // TODO:
    // TODO:       const entries = getState().server.entries;
    // TODO:       const fetch_ids_entries = ids.filter((x) => entries[x] == null);
    // TODO:       if (fetch_ids_entries.length > 0) {
    // TODO:         WebAPI.getEntries(ids, (err, res) => {
    // TODO:           dispatch({
    // TODO:             type: T.ENTRIES_RESULT,
    // TODO:             payload: err || res,
    // TODO:             error: err != null
    // TODO:           });
    // TODO:           if (!err) {
    // TODO:             const {
    // TODO:               ratings
    // TODO:             } = getState().server;
    // TODO:             const ids = flatten(res.map(e => e.ratings));
    // TODO:             const fetch_ids_ratings = ids.filter((x) => ratings[x] == null);
    // TODO:             if (fetch_ids_ratings.length > 0) {
    // TODO:               dispatch(Actions.getRatings(fetch_ids_ratings));
    // TODO:             }
    // TODO:           }
    // TODO:         });
    // TODO:       } else {
    // TODO:         const entr = Object.keys(entries).map((key) => entries[key])
    // TODO:         dispatch({
    // TODO:           type: T.ENTRIES_RESULT,
    // TODO:           payload: entr.filter((e) => ids.includes(e.id)),
    // TODO:           error: false
    // TODO:         })
    // TODO:       }
    // TODO:     },
    getEvent(Id),
    // TODO:     (dispatch) => {
    // TODO:       WebAPI.getEvent(id, (err, res) => {
    // TODO:         dispatch({
    // TODO:           type: T.SEARCH_RESULT_EVENTS,
    // TODO:           payload: err || [ res ],
    // TODO:           error: err != null
    // TODO:         });
    // TODO:       });
    // TODO:     },
    getRatings(Vec<Id>),
    // TODO:     (dispatch) => {
    // TODO:       WebAPI.getRatings(ids, (err, res) => {
    // TODO:         dispatch({
    // TODO:           type: T.RATINGS_RESULT,
    // TODO:           payload: err || res,
    // TODO:           error: err != null
    // TODO:         });
    // TODO:       });
    // TODO:     },
    getAllCategories,
    // TODO:     (dispatch) => {
    // TODO:       WebAPI.getAllCategories((err, res) => {
    // TODO:         dispatch({
    // TODO:           type: T.CATEGORIES_RESULT,
    // TODO:           payload: err || res,
    // TODO:           error: err != null
    // TODO:         });
    // TODO:       });
    // TODO:     },
    getServerInfo,
    // TODO:     (dispatch) => {
    // TODO:       WebAPI.getServerInfo((err, res) => {
    // TODO:         dispatch({
    // TODO:           type: T.SERVER_INFO_RESULT,
    // TODO:           payload: err || res,
    // TODO:           error: err != null
    // TODO:         });
    // TODO:       });
    // TODO:     },
    subscribeToBbox(BBox, ChangeExistingBbox),
    // TODO:     (dispatch) => {
    // TODO:       WebAPI.subscribeToBbox(bbox, (err, res) => {
    // TODO:         if (err) {
    // TODO:           dispatch({
    // TODO:             type: T.SUBSCRIBE_TO_BBOX_RESULT,
    // TODO:             payload: err
    // TODO:           });
    // TODO:
    // TODO:
    // TODO:           dispatch(notify({
    // TODO:             ...notificationSettings,
    // TODO:             message: i18n.t("growler.genericError"),
    // TODO:             status: "error"
    // TODO:           }));
    // TODO:         } else {
    // TODO:           dispatch({
    // TODO:             type: T.SUBSCRIBE_TO_BBOX_RESULT,
    // TODO:             payload: res
    // TODO:           });
    // TODO:           dispatch(notify({
    // TODO:             ...notificationSettings,
    // TODO:             message: changeExistingBbox ? i18n.t("growler.subscriptionChanged") : i18n.t("growler.subscriptionAdded"),
    // TODO:             status: "success"
    // TODO:           }));
    // TODO:           dispatch({
    // TODO:             type: 'UPDATE_SUBSCRIPTION_INFO',
    // TODO:             subscriptionExists: true
    // TODO:           })
    // TODO:         }
    // TODO:       })
    // TODO:     },
    unsubscribeFromBboxes(Email),
    // TODO:     (dispatch, getState) => {
    // TODO:       WebAPI.unsubscribeFromBboxes((err, res) => {
    // TODO:         if (err) {
    // TODO:           dispatch(notify({
    // TODO:             ...notificationSettings,
    // TODO:             message: i18n.t("growler.genericError"),
    // TODO:             status: "error"
    // TODO:           }));
    // TODO:         } else {
    // TODO:           dispatch(notify({
    // TODO:             ...notificationSettings,
    // TODO:             message: i18n.t("growler.unsubscribingSuccessfull"),
    // TODO:             status: "success"
    // TODO:           }));
    // TODO:           dispatch({
    // TODO:             type: 'UPDATE_SUBSCRIPTION_INFO',
    // TODO:             subscriptionExists: false
    // TODO:           })
    // TODO:         }
    // TODO:       })
    // TODO:     },
    saveEntry(Entry),
    // TODO:     (dispatch, getState) => {
    // TODO:       const entryExists = (e != null ? e.id : void 0);
    // TODO:       const saveFunc = entryExists ? WebAPI.saveEntry : WebAPI.saveNewEntry;
    // TODO:       e.license = getLicenseForEntry(e.license);
    // TODO:
    // TODO:       saveFunc(e, (err, res) => {
    // TODO:         if (err) {
    // TODO:           dispatch(stopSubmit(EDIT.id, {
    // TODO:             _error: err
    // TODO:           }));
    // TODO:           dispatch(notify({
    // TODO:             ...notificationSettings,
    // TODO:             message: i18n.t("growler.genericError"),
    // TODO:             status: "error"
    // TODO:           }));
    // TODO:         } else {
    // TODO:           const id = (e != null ? e.id : void 0) || res;
    // TODO:           WebAPI.getEntries([id], (err, res) => {
    // TODO:             dispatch(initialize(EDIT.id, {}, EDIT.fields));
    // TODO:             if (!err) {
    // TODO:               dispatch(notify({
    // TODO:                 ...notificationSettings,
    // TODO:                 message: i18n.t("growler.entrySaved"),
    // TODO:                 status: "success"
    // TODO:               }));
    // TODO:
    // TODO:               dispatch({
    // TODO:                 type: T.SET_CURRENT_ENTRY,
    // TODO:                 payload: id,
    // TODO:               });
    // TODO:
    // TODO:               if(!entryExists){
    // TODO:                 dispatch({
    // TODO:                   type: T.NEW_ENTRY_RESULT,
    // TODO:                   payload: res[0]
    // TODO:                 });
    // TODO:               } else {
    // TODO:                 dispatch({
    // TODO:                   type: T.SAVED_ENTRY_RESULT,
    // TODO:                   payload: res[0]
    // TODO:                 });
    // TODO:               }
    // TODO:             }
    // TODO:           });
    // TODO:         }
    // TODO:       });
    // TODO:     },
    createRating(Rating),
    // TODO:     (dispatch, getState) => {
    // TODO:       const r = {
    // TODO:         ...rating,
    // TODO:         value: Number.parseInt(rating.value)
    // TODO:       };
    // TODO:       WebAPI.createRating(r, (err, res) => {
    // TODO:         if (err) {
    // TODO:           dispatch(stopSubmit(RATING.id, {
    // TODO:             _error: err
    // TODO:           }));
    // TODO:         } else {
    // TODO:           WebAPI.getEntries([r.entry], (err, res) => {
    // TODO:             dispatch({
    // TODO:               type: T.ENTRIES_RESULT,
    // TODO:               payload: err || res,
    // TODO:               error: err != null
    // TODO:             });
    // TODO:             if (!err && res && res.length == 1) {
    // TODO:               dispatch({
    // TODO:                 type: T.SET_CURRENT_ENTRY,
    // TODO:                 payload: res[0].id,
    // TODO:               });
    // TODO:               dispatch(Actions.getRatings(res[0].ratings));
    // TODO:               dispatch(notify({
    // TODO:                 ...notificationSettings,
    // TODO:                 message: i18n.t("growler.ratingSaved"),
    // TODO:                 status: "success"
    // TODO:               }));
    // TODO:               dispatch(initialize(RATING.id, {}, RATING.fields));
    // TODO:             }
    // TODO:           });
    // TODO:         }
    // TODO:       });
    // TODO:     },
    setMarker(LatLng),
    // TODO:     (dispatch, getState) => {
    // TODO:       dispatch({
    // TODO:         type: T.SET_MARKER,
    // TODO:         payload: latlng,
    // TODO:         manual: true
    // TODO:       });
    // TODO:       WebAPI.searchGeolocation(latlng, (err, res) => {
    // TODO:         dispatch({
    // TODO:           type: T.MARKER_ADDRESS_RESULT,
    // TODO:           payload: err || res,
    // TODO:           error: err != null
    // TODO:         });
    // TODO:       });
    // TODO:     },
    geocodeAndSetMarker(Address),
    // TODO:     (dispatch, getState) => {
    // TODO:       if (!getState().form.edit.kvm_flag_markerWasEnteredManually) {
    // TODO:         WebAPI.searchAddressNominatim(address, (err, res) => {
    // TODO:           if (!(err || getState().form.edit.kvm_flag_markerWasEnteredManually)) {
    // TODO:             if (res && res.length && res[0] && res[0].lat && res[0].lon) {
    // TODO:               dispatch({
    // TODO:                 type: T.SET_MARKER,
    // TODO:                 payload: {
    // TODO:                   lat: parseFloat(res[0].lat),
    // TODO:                   lng: parseFloat(res[0].lon)
    // TODO:                 },
    // TODO:                 manual: false,
    // TODO:                 error: err != null
    // TODO:               });
    // TODO:               dispatch({
    // TODO:                 type: T.SET_ZOOM,
    // TODO:                 payload: parseFloat(mapConst.ENTRY_DEFAULT_ZOOM)
    // TODO:               });
    // TODO:             }
    // TODO:           }
    // TODO:         });
    // TODO:       }
    // TODO:     },
    login(Email, Password),
    // TODO:     (dispatch, getState) => {
    // TODO:       dispatch({
    // TODO:         type: T.LOGIN_SUBMITTING
    // TODO:       });
    // TODO:       WebAPI.login({
    // TODO:         email,
    // TODO:         password
    // TODO:       }, (err, res) => {
    // TODO:         if (err) {
    // TODO:           dispatch(stopSubmit(LOGIN.id, {
    // TODO:             _error: err
    // TODO:           }));
    // TODO:         } else {
    // TODO:           WebAPI.getUser(email, (err, res) => {
    // TODO:             dispatch({
    // TODO:               type: T.LOGIN_RESULT,
    // TODO:               payload: err || res,
    // TODO:               error: err != null
    // TODO:             });
    // TODO:           });
    // TODO:           WebAPI.getBboxSubscriptions((err, res) => {
    // TODO:             if (!err) {
    // TODO:               dispatch({
    // TODO:                 type: T.UPDATE_SUBSCRIPTION_INFO,
    // TODO:                 subscriptionExists: res.body.length > 0
    // TODO:               })
    // TODO:             }
    // TODO:           });
    // TODO:         }
    // TODO:       });
    // TODO:     },
    register(Email, Password),
    // TODO:     (dispatch, getState) => {
    // TODO:       dispatch({
    // TODO:         type: T.REGISTER_SUBMITTING
    // TODO:       });
    // TODO:       WebAPI.register({
    // TODO:         email,
    // TODO:         password,
    // TODO:       }, (err, res) => {
    // TODO:         if (err) {
    // TODO:           dispatch(stopSubmit(REGISTER.id, {
    // TODO:             _error: err
    // TODO:           }));
    // TODO:         } else {
    // TODO:           dispatch({
    // TODO:             type: T.REGISTER_RESULT,
    // TODO:             result: res,
    // TODO:             email: email
    // TODO:           });
    // TODO:         }
    // TODO:       });
    // TODO:     },
    confirmEmail(UserId),
    // TODO:     (dispatch, getState) => {
    // TODO:       WebAPI.confirmEmail(user_id, (err, res) => {
    // TODO:         if (err) {
    // TODO:           dispatch({
    // TODO:             type: T.EMAIL_CONFIRMATION_RESULT,
    // TODO:             error: true
    // TODO:           })
    // TODO:         } else {
    // TODO:           dispatch({
    // TODO:             type: T.EMAIL_CONFIRMATION_RESULT,
    // TODO:             error: false
    // TODO:           })
    // TODO:         }
    // TODO:       })
    // TODO:     },
    deleteAccount,
    // TODO:     (dispatch, getState) => {
    // TODO:       WebAPI.deleteAccount(getState().user.email, (err, res) => {
    // TODO:         if (!err) {
    // TODO:           dispatch({
    // TODO:             type: T.LOGOUT
    // TODO:           });
    // TODO:         }
    // TODO:       });
    // TODO:     },
    highlight(Id),
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
    // TODO:   }
    // TODO: }
    SEARCH_RESULT_ENTRIES(Result<SearchResponse>),
}

pub fn flatten<T>(/* nestedArray */) -> Vec<T> {
    // TODO: nestedArray.reduce(
    // TODO:   (a, next) => a.concat(Array.isArray(next) ? flatten(next) : next), []
    // TODO: )
    unimplemented!()
}

pub fn getLicenseForEntry(/* currentLicense */) {
    // TODO:   if (currentLicense && currentLicense == LICENSES.ODBL) {
    // TODO:     return currentLicense;
    // TODO:   } else {
    // TODO:     return NEW_ENTRY_LICENSE;
    // TODO:   }
    unimplemented!()
}
