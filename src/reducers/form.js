import T            from "../constants/ActionTypes";
import C            from "../constants/Categories";

import { reducer as formReducer } from "redux-form";

const reducer = formReducer.plugin({

  edit: (state={}, action={}) => {

    switch (action.type) {

      case T.SHOW_NEW_ENTRY:
        return {
          ...state,
          values: { },
          kvm_flag_id: null,
          kvm_flag_markerWasEnteredManually: false,
          kvm_flag_addressWasEnteredManually: false,
        };

      case T.EDIT_CURRENT_ENTRY:
        return {
          ...state,
          values: {
            ...action.payload,
            license: null,
            tags: (action.payload.tags || []).join(','),
            category: action.payload.categories[0]
          },
          kvm_flag_id: action.payload.id
        }
      case T.SET_MARKER:
        if (action.manual) {
          return {
            ...state,
            values: {
              ...state.values,
              lat: action.payload.lat,
              lng: action.payload.lng
            },
            fields: {
              ...state.fields,
            },
            kvm_flag_markerWasEnteredManually: true
          }
        }
        return {
          ...state,
          values: {
            ...state.values,
            lat: action.payload.lat,
            lng: action.payload.lng
          }
        }
      case T.MARKER_ADDRESS_RESULT:
        if (!state.kvm_flag_addressWasEnteredManually && action.payload.address) {
          const addr = action.payload.address;
          return {
            ...state,
            values: {
              ...state.values,
              street: (addr.road ? addr.road : '').concat((addr.house_number ? ' ' + addr.house_number : '')),
              zip: addr.postcode ? addr.postcode : '',
              city: addr.city ? addr.city : addr.town ? addr.town : addr.village ? addr.village : ''
            }
          }
        }
        return state;

      case "@@redux-form/CHANGE":
        const { field } = action.meta;
        if (field === "category" && action.payload === C.IDS.EVENT) {
          return {
            ...state,
            values: {
              ...state.values,
              category: -1
            }
          }
        }
        if (action.payload) {
          if (field === "street" || field === "zip" || field === "city") {
            return {
              ...state,
              kvm_flag_addressWasEnteredManually: true
            }
          }
        }
        return state;
      default:
        return state;
    }
  },

  rating: (state={}, action={}) => {

    const { payload } = action;

    switch (action.type) {
    case T.SHOW_NEW_RATING:
      return {
        ...state,
        kvm_flag_id: payload,
      };
    default:
      return state;
    }
  }

});

module.exports = reducer
