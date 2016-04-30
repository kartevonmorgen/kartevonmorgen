# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

form    = require "./form"
search  = require "./search"
map     = require "./map"
view    = require "./view"
entries = require "./entries"
server  = require "./server"
growler = (require "flash-notification-react-redux/index.js").GrowlerReducer

{ combineReducers } = require "redux"

module.exports = combineReducers { entries, form, search, map, view, server, growler }
