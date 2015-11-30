# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

u  = require "updeep"
T = require "../constants/ActionTypes"
V  = require "../constants/PanelView"

initialState =
  menu  : no
  left  : null
  right : null
  modal : null

module.exports = (state=initialState, action={}) ->

  switch action.type

    when T.TOGGLE_MENU
      m = not state.menu
      r = if m then state.right else null
      u {menu: m, right: r}, state

    when T.SHOW_MENU
      u {menu: yes, right: null}, state

    when T.SHOW_INFO
      newView = V[action.payload]
      newView = null if newView is undefined
      u { menu: newView isnt null, right: newView }, state

    when T.SHOW_IMPRINT
      u { menu: yes, right: V.IMPRINT }, state

    when T.SHOW_NEW_ENTRY
      u { menu: no, left: V.NEW }, state

    when T.EDIT_CURRENT_ENTRY
      unless action.error
        u { menu: no, left: V.EDIT }, state
      else
        u left: V.IO_ERROR, state

    when T.SHOW_IO_WAIT
      u left: V.WAIT, state

    when T.CANCEL_NEW, T.CANCEL_WAIT_IO
      u left: V.RESULT, state

    when T.CLOSE_IO_ERROR_MESSAGE
      u left: null, state

    when T.CANCEL_EDIT
      u left: V.ENTRY, state

    when T.NEW_ENTRY_RESULT
      unless action.error
        u left: V.ENTRY, state
      else
        state

    when T.SEARCH_RESULT
      if action.error
        u left: V.IO_ERROR, state
      else unless state.left? or action.noList
        u left: V.RESULT, state
      else
        state

    when T.SET_CURRENT_ENTRY
      v = if action.payload? then V.ENTRY else V.RESULT
      u left: v, state

    when T.SHOW_OWN_POSITION
      u modal: V.LOCATE, state

    when T.CANCEL_OWN_POSITION
      u modal: null, state

    when T.OWN_POSITION_RESULT
      if action.payload
        u modal: null, state
      else if state.modal is V.LOCATE
        u modal: V.LOCATE_DISABLED, state
      else
        state

    else
      state
