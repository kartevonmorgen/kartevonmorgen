# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

T = require "../constants/ActionTypes"
u = require "updeep"

initialState =
  zoom   : 13
  center : { lat: 48.7784931, lng: 9.1800456 } # stuttgart
  marker : null
  bbox   : null

module.exports = (state=initialState, action={}) ->

  switch action.type

    when T.CLOSE_NEW_ENTRY, T.SHOW_NEW_ENTRY
      u marker: null, state

    when T.SET_MARKER
      u marker: action.payload, state

    when T.EDIT_CURRENT_ENTRY
      point = { lat: action.payload.lat, lng: action.payload.lon}
      u
        marker: point
        center: point
        state

    when T.SET_MAP_CENTER
      u center: action.payload, state

    when T.SET_ZOOM
      u zoom: action.payload, state

    when T.SET_BBOX
      u bbox: action.payload, state

    when T.NEW_ENTRY_RESULT
      unless action.error
        u marker: null, state
      else state

    else state
