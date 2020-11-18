import update from 'immutability-helper'
import _ from 'lodash'
import T from "../constants/ActionTypes"
import defaultCustomization from "../customizations/default/config"


module.exports = (state=defaultCustomization, action={}) => {
  switch (action.type) {
    case T.SET_CUSTOMIZATIONS:
      return _.cloneDeep(action.payload)
    case T.SET_DROPDOWNS:
      return update(state, {
        dropdowns: {$set: action.payload}
      })
    default:
      return state
  }
}