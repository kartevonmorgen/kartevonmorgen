# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

reducers    = require "./reducers"
middlewares = [require "redux-thunk"] # lets us dispatch() functions

{ createStore, applyMiddleware, compose } = require "redux"

if __DEVELOPMENT__
  middlewares.push (require "redux-logger")()

# https://github.com/zalmoxisus/redux-devtools-extension
createStoreWrapper =
 if window.devToolsExtension
   window.devToolsExtension createStore
 else
   createStore

store = (applyMiddleware middlewares...)(createStoreWrapper) reducers

if module.hot
  # Enable Webpack hot module replacement for reducers
  module.hot.accept './reducers', ->
    nextRootReducer = require './reducers'
    store.replaceReducer nextRootReducer

module.exports = store
