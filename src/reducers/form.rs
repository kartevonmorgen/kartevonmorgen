use crate::{constants::Categories as C, Msg};
use seed::prelude::*;

#[derive(Debug, Default)]
pub struct Mdl;

// TODO: import { reducer as formReducer } from "redux-form";

pub fn update(action: &Msg, state: &mut Mdl, orders: &mut impl Orders<Msg>) {
    match action {
        // TODO:
        // TODO: const reducer = formReducer.plugin({
        // TODO:
        // TODO:   edit: (state={}, action={}) => {
        // TODO:
        // TODO:     switch (action.type) {
        // TODO:
        // TODO:       case T.SHOW_NEW_ENTRY:
        // TODO:         return {
        // TODO:           ...state,
        // TODO:           values: { },
        // TODO:           kvm_flag_id: null,
        // TODO:           kvm_flag_markerWasEnteredManually: false,
        // TODO:           kvm_flag_addressWasEnteredManually: false,
        // TODO:         };
        // TODO:
        // TODO:       case T.EDIT_CURRENT_ENTRY:
        // TODO:         return {
        // TODO:           ...state,
        // TODO:           values: {
        // TODO:             ...action.payload,
        // TODO:             license: null,
        // TODO:             tags: (action.payload.tags || []).join(','),
        // TODO:             category: action.payload.categories[0]
        // TODO:           },
        // TODO:           kvm_flag_id: action.payload.id
        // TODO:         }
        // TODO:       case T.SET_MARKER:
        // TODO:         if (action.manual) {
        // TODO:           return {
        // TODO:             ...state,
        // TODO:             values: {
        // TODO:               ...state.values,
        // TODO:               lat: action.payload.lat,
        // TODO:               lng: action.payload.lng
        // TODO:             },
        // TODO:             fields: {
        // TODO:               ...state.fields,
        // TODO:             },
        // TODO:             kvm_flag_markerWasEnteredManually: true
        // TODO:           }
        // TODO:         }
        // TODO:         return {
        // TODO:           ...state,
        // TODO:           values: {
        // TODO:             ...state.values,
        // TODO:             lat: action.payload.lat,
        // TODO:             lng: action.payload.lng
        // TODO:           }
        // TODO:         }
        // TODO:       case T.MARKER_ADDRESS_RESULT:
        // TODO:         if (!state.kvm_flag_addressWasEnteredManually && action.payload.address) {
        // TODO:           const addr = action.payload.address;
        // TODO:           return {
        // TODO:             ...state,
        // TODO:             values: {
        // TODO:               ...state.values,
        // TODO:               street: (addr.road ? addr.road : '').concat((addr.house_number ? ' ' + addr.house_number : '')),
        // TODO:               zip: addr.postcode ? addr.postcode : '',
        // TODO:               city: addr.city ? addr.city : addr.town ? addr.town : addr.village ? addr.village : ''
        // TODO:             }
        // TODO:           }
        // TODO:         }
        // TODO:         return state;
        // TODO:
        // TODO:       case "@@redux-form/CHANGE":
        // TODO:         const { field } = action.meta;
        // TODO:         if (action.payload) {
        // TODO:           if (field === "street" || field === "zip" || field === "city") {
        // TODO:             return {
        // TODO:               ...state,
        // TODO:               kvm_flag_addressWasEnteredManually: true
        // TODO:             }
        // TODO:           }
        // TODO:         }
        // TODO:         return state;
        // TODO:       default:
        // TODO:         return state;
        // TODO:     }
        // TODO:   },
        // TODO:
        // TODO:   rating: (state={}, action={}) => {
        // TODO:
        // TODO:     const { payload } = action;
        // TODO:
        // TODO:     switch (action.type) {
        // TODO:     case T.SHOW_NEW_RATING:
        // TODO:       return {
        // TODO:         ...state,
        // TODO:         kvm_flag_id: payload,
        // TODO:       };
        // TODO:     default:
        // TODO:       return state;
        // TODO:     }
        // TODO:   }
        // TODO:
        // TODO: });
        _ => {
            // do nothing
        }
    }
}
