# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

T = require "../constants/ActionTypes"
u = require "updeep"

initialState = version: null

module.exports = (state=initialState, action={}) ->

  switch action.type
    when T.SERVER_INFO_RESULT
      u version: action.payload.version, state
    else
      state
