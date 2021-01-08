import update from 'immutability-helper'
import cloneDeep from 'lodash/cloneDeep'
import T from "../constants/ActionTypes"
import defaultCustomization from "../customizations/default/config"


export default (state=defaultCustomization, action={}) => {
  switch (action.type) {
    case T.SET_CUSTOMIZATIONS:
      const newState = cloneDeep(action.payload)
      return update(newState, {
        dropdowns: {$set: state.dropdowns}
      })
    case T.SET_DROPDOWNS:
      return update(state, {
        dropdowns: {$set: action.payload}
      })
    default:
      return state
  }
}