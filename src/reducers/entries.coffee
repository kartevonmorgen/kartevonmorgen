# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

T = require "../constants/ActionTypes"
u = require "updeep"

module.exports = (state={}, action={}) ->

  switch action.type
    when T.ENTRIES_RESULT
      unless action.error or not (p = action.payload)?
        o = {}
        if Array.isArray p
          o[e.id] = e for e in p when e?
        else
          o[p.id] = p
        u o, state
      else
        state
    else
      state
