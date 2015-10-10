# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

T = require "../constants/ActionTypes"
u = require "updeep"

module.exports = (require "redux-form").reducer.plugin

  edit: (state, action) ->

    switch action.type
      when T.SHOW_NEW_ENTRY
        {}
      when T.EDIT_CURRENT_ENTRY
        o = {}
        o[k] = { value: v } for k,v of action.payload
        o.category = { value: action.payload.categories[0] }
        o.lng = { value: action.payload.lon } # XXX dirty bad ugly workaround for bugs in api
        u o, state

      when T.SET_MARKER
        u
          lat: { value: action.payload.lat }
          lng: { value: action.payload.lng }
          state
      else
        state
