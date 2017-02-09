import T            from "../constants/ActionTypes";
import C            from "../constants/Categories";
import u            from "updeep";
import normalize    from "../util/normalize";
import { reducer  } from "redux-form";

let kvm_reducer = reducer.plugin({
  edit: function(state, action) {
    var addr, field, k, o, ref, v;
    switch (action.type) {
      case T.SHOW_NEW_ENTRY:
        return {};
      case T.EDIT_CURRENT_ENTRY:
        o = {};
        ref = action.payload;
        for (k in ref) {
          v = ref[k];
          o[k] = {
            value: v
          };
        }
        o.category = {
          value: action.payload.categories[0]
        };
        o.lng = {
          value: action.payload.lng
        };
        return u(o, state);
      case T.SET_MARKER:
        if (action.manual) {
          return u({
            lat: {
              value: action.payload.lat
            },
            lng: {
              value: action.payload.lng
            },
            markerWasEnteredManually: true
          }, state);
        } else {
          return u({
            lat: {
              value: action.payload.lat
            },
            lng: {
              value: action.payload.lng
            }
          }, state);
        }
        break;
      case T.MARKER_ADDRESS_RESULT:
        if (!state.addressWasEnteredManually) {
          if (action.payload.address) {
            addr = action.payload.address;
            return u({
              street: {
                value: (addr.road ? addr.road : '').concat((addr.house_number ? ' ' + addr.house_number : ''))
              },
              zip: {
                value: addr.postcode ? addr.postcode : ''
              },
              city: {
                value: addr.city ? addr.city : addr.town ? addr.town : addr.village ? addr.village : ''
              }
            }, state);
          } else {
            return state;
          }
        } else {
          return state;
        }
        break;
      case "redux-form/CHANGE":
        field = action.field;
        if (field === "category" && action.value === C.IDS.EVENT) {
          u({
            category: {
              value: -1
            }
          }, state);
        }
        if (action.value && action.value.length) {
          if (field === "street" || field === "zip" || field === "city") {
            return u({
              addressWasEnteredManually: true
            }, state);
          } else {
            return state;
          }
        } else {
          return state;
        }
        break;
      default:
        return state;
    }
  }
});

kvm_reducer = kvm_reducer.normalize({
  edit: {
    homepage: normalize.url
  }
});

module.exports = kvm_reducer;
