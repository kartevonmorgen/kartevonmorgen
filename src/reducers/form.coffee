# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

T = require "../constants/ActionTypes"
C = require "../constants/Categories"
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
        # TODO: fix dirty bad ugly workaround for bugs in API (#30)
        o.lng = { value: action.payload.lng }
        u o, state

      when T.SET_MARKER
        if action.manual
          u
            lat: { value: action.payload.lat }
            lng: { value: action.payload.lng }
            markerWasEnteredManually : true
            state
        else
          u
            lat: { value: action.payload.lat }
            lng: { value: action.payload.lng }
            state

      when T.MARKER_ADDRESS_RESULT
        unless state.addressWasEnteredManually
          if action.payload.address
            addr = action.payload.address
            u
              street: { value:
                (if addr.road then addr.road else '').concat(
                  (if addr.house_number then ' ' + addr.house_number else ''))}
              zip   : { value: if addr.postcode then addr.postcode else '' }
              city  : { value:
                if addr.city then addr.city
                else if addr.town then addr.town
                else if addr.village then addr.village else '' }
              state
          else state
        else state

      when "redux-form/CHANGE"
        field = action.field
        if field is "category" and action.value is C.IDS.EVENT
          u category : { value: -1 }, state
        if action.value and action.value.length
          if field is "street" or field is "zip" or field is "city"
            u addressWasEnteredManually: true, state
          else state
        else state

      else
        state
