# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

reducers    = require "./reducers"
middlewares = [require "redux-thunk"] # lets us dispatch() functions

{ createStore, applyMiddleware, compose } = require "redux"

if __DEVELOPMENT__
  middlewares.push require "redux-logger"

storeHooks =
  if __DEVTOOLS__
    { devTools, persistState } = require 'redux-devtools'
    [
      applyMiddleware middlewares...
      devTools()
      persistState window.location.href.match /[?&]debug_session=([^&]+)\b/
    ]
  else
    [ applyMiddleware middlewares... ]

store = (compose storeHooks...)(createStore) reducers

if module.hot
  # Enable Webpack hot module replacement for reducers
  module.hot.accept './reducers', ->
    nextRootReducer = require './reducers'
    store.replaceReducer nextRootReducer

module.exports = store
