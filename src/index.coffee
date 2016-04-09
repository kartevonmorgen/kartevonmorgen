###
Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>
###

(require 'es6-promise').polyfill() # required for redux-form

React       = require "react"
ReactDOM    = require "react-dom"
App         = require "./components/App"
store       = require "./Store"

{ Provider, connect } = require "react-redux"

if __DEVELOPMENT__
  window.React = React

ConnectedApp = (connect (s) -> s) App

rootElement  = document.querySelector '#app'

# inject the 'dispatch' method and the state
Wrapper = React.createElement Provider, { store },
  React.createElement ConnectedApp

ReactDOM.render Wrapper, rootElement
