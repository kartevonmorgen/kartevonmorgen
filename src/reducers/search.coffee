# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

u = require "updeep"
T = require "../constants/ActionTypes"

{ MAIN_IDS } = require "../constants/Categories"

initialState =
  text       : null
  result     : []
  current    : null
  categories : MAIN_IDS
  highlight  : []
  invisible  : []
  addresses  : []
  cities     : []

isCity = (x) ->
  (
    (x.class is 'place'    and (x.type is 'city' or x.type is 'village')) or
    (x.class is 'boundary' and x.type is 'administrative')
  ) and (a = x.address)? and (a.city? or a.county? or a.village?)


module.exports = (state=initialState, action={}) ->

  switch action.type

    when T.TOGGLE_SEARCH_CATEGORY
      return state unless (c=action.payload)?
      cats =
        if c in state.categories
          (x for x in state.categories when x isnt c)
        else
          [c, state.categories...]
      u categories: cats, state

    when T.SET_SEARCH_TEXT
      u text: action.payload, state

    when T.SEARCH_RESULT
      unless action.error
        u result: action.payload.visible, invisible: action.payload.invisible,
          state
      else
        state

    when T.SEARCH_ADDRESS_RESULT
      unless action.error
        d = action.payload or []
        u { addresses: d, cities: d.filter isCity }, state
      else
        u { addresses: [], cities: [] }, state

    when T.NEW_ENTRY_RESULT
      unless action.error
        o = {}
        o[state.result.length] = action.payload
        u { result: o }, state

    when T.SET_CURRENT_ENTRY
      if (p = action.payload)?
        u { current : p, highlight: [p] }, state
      else
        u current: null, state

    when T.HIGHLIGHT_ENTRIES
      u highlight: action.payload, state

    else
      state
