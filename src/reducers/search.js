import u from "updeep";
import T from "../constants/ActionTypes";
import { MAIN_IDS, IDS } from "../constants/Categories";

const initialState = {
  text: null,
  city: null,
  result: [],
  current: null,
  categories: MAIN_IDS.filter((c) => c !== IDS.EVENT),
  highlight: [],
  invisible: [],
  addresses: [],
  cities: []
};

const isCity = (x) => {
  var a;
  return
   (
    (x["class"] === 'place' && (x.type === 'city' || x.type === 'village')) || 
    (x["class"] === 'boundary' && x.type === 'administrative')
   )
   &&
   ((a = x.address) != null)
   &&
   ((a.city != null) || (a.county != null) || (a.village != null));
};

module.exports = (state, action) => {
  var c, cats, d, o, p, x;
  if (state == null) {
    state = initialState;
  }
  if (action == null) {
    action = {};
  }
  switch (action.type) {
    case T.TOGGLE_SEARCH_CATEGORY:
      if ((c = action.payload) == null) {
        return state;
      }
      cats = indexOf.call(state.categories, c) >= 0 ? (() => {
        var i, len, ref1, results;
        ref1 = state.categories;
        results = [];
        for (i = 0, len = ref1.length; i < len; i++) {
          x = ref1[i];
          if (x !== c) {
            results.push(x);
          }
        }
        return results;
      })() : [c].concat(slice.call(state.categories));
      return u({
        categories: cats
      }, state);
    case T.SET_SEARCH_TEXT:
      return u({
        text: action.payload
      }, state);
    case T.SET_CITY_SEARCH_TEXT:
      return u({
        city: action.payload
      }, state);
    case T.SEARCH_RESULT:
      if (!action.error) {
        return u({
          result: action.payload.visible,
          invisible: action.payload.invisible
        }, state);
      } else {
        return state;
      }
      break;
    case T.SEARCH_ADDRESS_RESULT:
      if (!action.error) {
        d = action.payload || [];
        return u({
          addresses: d,
          cities: d.filter(isCity)
        }, state);
      } else {
        return u({
          addresses: [],
          cities: []
        }, state);
      }
      break;
    case T.NEW_ENTRY_RESULT:
      if (!action.error) {
        o = {};
        o[state.result.length] = action.payload;
        return u({
          result: o
        }, state);
      }
      break;
    case T.SET_CURRENT_ENTRY:
      if ((p = action.payload) != null) {
        return u({
          current: p,
          highlight: [p]
        }, state);
      } else {
        return u({
          current: null
        }, state);
      }
      break;
    case T.HIGHLIGHT_ENTRIES:
      return u({
        highlight: action.payload
      }, state);
    default:
      return state;
  }
};
