# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

u = require "updeep"

{
  SHOW_NEW_ENTRY
  CLOSE_NEW_ENTRY
  SET_MARKER
  SET_MAP_CENTER
  SET_ZOOM
  SET_BBOX
  NEW_ENTRY_RESULT
  EDIT_CURRENT_ENTRY

} = require "../constants/ActionTypes"

initialState =
  zoom   : 13
  center : { lat: 48.7784931, lng: 9.1800456 } # stuttgart
  marker : null
  bbox   : null

module.exports = (state=initialState, action={}) ->

  switch action.type

    when CLOSE_NEW_ENTRY, SHOW_NEW_ENTRY
      u marker: null, state

    when SET_MARKER
      u marker: action.payload, state

    when EDIT_CURRENT_ENTRY
      point = { lat: action.payload.lat, lng: action.payload.lon}
      u
        marker: point
        center: point
        state

    when SET_MAP_CENTER
      u center: action.payload, state

    when SET_ZOOM
      u zoom: action.payload, state

    when SET_BBOX
      u bbox: action.payload, state

    when NEW_ENTRY_RESULT
      unless action.error
        u marker: null, state
      else
        state

    else
      state
