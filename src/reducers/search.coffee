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
        u result: action.payload, state
      else state

    when T.NEW_ENTRY_RESULT
      unless action.error
        o = {}
        o[state.result.length] = action.payload
        u result: o, state

    when T.SET_CURRENT_ENTRY
      if (p = action.payload)?
        u { current : p, highlight: [p] }, state
      else
        u current: null, state

    when T.HIGHLIGHT_ENTRIES
      u highlight: action.payload, state

    else state
