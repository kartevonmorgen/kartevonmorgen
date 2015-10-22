# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

u  = require "updeep"
T = require "../constants/ActionTypes"
V  = require "../constants/PanelView"

initialState =
  menu  : no
  left  : null
  right : null

module.exports = (state=initialState, action={}) ->

  switch action.type

    when T.TOGGLE_MENU
      m = not state.menu
      r = if m then state.right else null
      u {menu: m, right: r}, state

    when T.SHOW_INFO
      u { menu: yes, right: V.INFO }, state

    when T.SHOW_IMPRINT
      u { menu: yes, right: V.IMPRINT }, state

    when T.SHOW_NEW_ENTRY
      u { menu: no, left: V.NEW }, state

    when T.EDIT_CURRENT_ENTRY
      u { menu: no, left: V.EDIT }, state

    when T.SHOW_IO_WAIT
      u left: V.WAIT, state

    when T.CANCEL_NEW, T.CANCEL_WAIT_IO
      u left: V.RESULT, state

    when T.CANCEL_WAIT_IO
      u left: V.RESULT, state

    when T.CANCEL_EDIT
      u left: V.ENTRY, state

    when T.NEW_ENTRY_RESULT
      unless action.error
        u left: V.RESULT, state
      else
        state

    when T.SEARCH_RESULT
      unless action.error or state.left?
        u left: V.RESULT, state
      else
        state

    when T.SET_CURRENT_ENTRY
      v = if action.payload? then V.ENTRY else V.RESULT
      u left: v, state

    else
      state
