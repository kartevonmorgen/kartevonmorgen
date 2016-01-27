# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>
#
React = require "react"
Pure  = require "react-pure-render/mixin"

{ div, span } = React.DOM

module.exports = React.createClass

  displayName: "AddressLine"

  mixins: [Pure]

  render: ->
    div className: "address",
      if @props.street
        span null, @props.street
      if @props.street && (@props.zip or @props.city)
        span className: "delimiter", ","
      if @props.zip
        span null, @props.zip
      if @props.city
        span null, @props.city
