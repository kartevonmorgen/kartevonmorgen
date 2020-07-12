import update from "immutability-helper"
import T from "../constants/ActionTypes";


const initialState = {
  "showSearchBar": true,
  "showAddEntryButton": true
}

module.exports = (state=initialState, action={}) => {
  switch (action.type) {
    case T.SET_CUSTOMIZATIONS:
      return update(
        state, {
          showSearchBar: {$set: action.payload.showSearchBar},
          showAddEntryButton: {$set: action.payload.showAddEntryButton},
        }
      )
    default:
      return state
  }
}