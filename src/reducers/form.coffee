# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

T = require "../constants/ActionTypes"
u = require "updeep"

module.exports = (require "redux-form").reducer.plugin

  new: (state, action) ->

    switch action.type
      when T.SET_MARKER
        u
          lat: { value: action.payload.lat }
          lng: { value: action.payload.lng }
          state
      else
        state
