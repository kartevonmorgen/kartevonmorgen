# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React = require "react"
Pure  = require "react-pure-render/mixin"
T     = React.PropTypes

REPOSITORY = 'https://github.com/flosse/kartevonmorgen'

{ div, i, button}  = React.DOM

module.exports = React.createClass

  displayName: "Wait"

  propTypes:
    clientVersion : T.string
    serverVersion : T.string

  mixins: [Pure]

  render: ->
    div null,
      div className: "waiting-indicator",
        i className: "fa fa-spinner fa-pulse"
        " lade Daten vom Server ..."
      div className: "close-button",
        button
          onClick: (ev) =>
            ev.preventDefault()
            @props.onCancel()
          className:"pure-button",
          i className: "fa fa-ban"
          "abbrechen"