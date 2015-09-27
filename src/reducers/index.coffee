# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

form    = require "./form"
search  = require "./search"
map     = require "./map"
view    = require "./view"
entries = require "./entries"

{ combineReducers } = require "redux"

module.exports = combineReducers { entries, form, search, map, view }
