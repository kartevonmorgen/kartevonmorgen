# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React = require "react"
Pure  = require "react-pure-render/mixin"
T     = React.PropTypes

REPOSITORY = 'https://github.com/flosse/kartevonmorgen'

{ span, div, i, button}  = React.DOM

module.exports = React.createClass

  displayName: "Message"

  propTypes:
    clientVersion : T.string
    serverVersion : T.string

  mixins: [Pure]

  render: ->
    div null,
      div className: "message",
        i className: @props.iconClass
        @props.message
      div className: "close-button",
        button
          onClick: (ev) =>
            ev.preventDefault()
            @props.onCancel()
          className:"pure-button",
          i className: "fa fa-ban"
          @props.buttonLabel
        if @props.retryButtonLabel
          button
            onClick: (ev) =>
              ev.preventDefault()
              @props.onRetry()
            className:"pure-button",
            i className: "fa fa-repeat"
            @props.retryButtonLabel
