# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

u = require "updeep"

{ MAIN_IDS } = require "../constants/Categories"

{
  TOGGLE_SEARCH_CATEGORY
  SET_SEARCH_TEXT
  SEARCH_RESULT
  SET_CURRENT_ENTRY
  HIGHLIGHT_ENTRIES

} = require "../constants/ActionTypes"

initialState =
  text       : null
  result     : []
  current    : null
  categories : MAIN_IDS
  highlight  : []

module.exports = (state=initialState, action={}) ->

  switch action.type

    when TOGGLE_SEARCH_CATEGORY
      return state unless (c=action.payload)?
      cats =
        if c in state.categories
          (x for x in state.categories when x isnt c)
        else
          [c, state.categories...]
      u categories: cats, state

    when SET_SEARCH_TEXT
      u text: action.payload, state

    when SEARCH_RESULT
      unless action.error
        u result: action.payload, state
      else state

    when SET_CURRENT_ENTRY
      if (p = action.payload)?
        u { current : p, highlight: [p] }, state
      else
        u current: null, state

    when HIGHLIGHT_ENTRIES
      u highlight: action.payload, state

    else state
