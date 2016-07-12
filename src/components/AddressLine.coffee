# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

require './AddressLine.styl'

React         = require "react"
{ pure }      = require "recompose"
{ div, span } = React.DOM

module.exports = pure React.createClass

  displayName: "AddressLine"

  render: ->
    div className: "AddressLine",
      if @props.street
        span null, @props.street
      if @props.street && (@props.zip or @props.city)
        span className: "delimiter", ","
      if @props.zip
        span null, @props.zip
      if @props.city
        span null, @props.city
