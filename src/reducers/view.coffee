# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

u  = require "updeep"
T = require "../constants/ActionTypes"
V  = require "../constants/PanelView"

initialState =
  menu   : no
  panel  : null

module.exports = (state=initialState, action={}) ->

  switch action.type

    when T.TOGGLE_MENU
      u menu: not state.menu, state

    when T.SHOW_INFO
      u { menu: no, panel: V.INFO }, state

    when T.SHOW_IMPRINT
      u { menu: no, panel: V.IMPRINT }, state

    when T.SHOW_NEW_ENTRY, T.EDIT_CURRENT_ENTRY
      u { menu: no, panel: V.EDIT }, state

    when T.SHOW_IO_WAIT
      u panel: V.WAIT, state

    when T.CLOSE_NEW_ENTRY, T.CLOSE_PANEL, T.CANCEL_WAIT_IO
      u panel: null, state

    when T.NEW_ENTRY_RESULT
      unless action.error
        u panel: null, state
      else
        state

    when T.SEARCH_RESULT
      unless action.error or state.panel?
        u panel: V.RESULT, state
      else
        state

    when T.SET_CURRENT_ENTRY
      v = if action.payload? then V.ENTRY else V.RESULT
      u panel: v, state

    else
      state
