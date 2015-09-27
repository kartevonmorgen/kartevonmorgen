# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

V  = require "../constants/PanelView"
u  = require "updeep"

{
  TOGGLE_MENU
  SHOW_NEW_ENTRY
  NEW_ENTRY_RESULT
  CLOSE_NEW_ENTRY
  SHOW_INFO
  SET_CURRENT_ENTRY
  SEARCH_RESULT

} = require "../constants/ActionTypes"

initialState =
  menu   : no
  panel  : null

module.exports = (state=initialState, action={}) ->

  switch action.type

    when TOGGLE_MENU
      u menu: not state.menu, state

    when SHOW_INFO
      u { menu: no, panel: V.INFO }, state

    when SHOW_NEW_ENTRY
      u { menu: no, panel: V.NEW }, state

    when CLOSE_NEW_ENTRY
      u panel: null, state

    when NEW_ENTRY_RESULT
      unless action.error
        u panel: null, state
      else state

    when SEARCH_RESULT
      unless action.error
        u panel: V.RESULT, state
      else state

    when SET_CURRENT_ENTRY
      v = if action.payload? then V.ENTRY else V.RESULT
      u panel: v, state

    else
      state
