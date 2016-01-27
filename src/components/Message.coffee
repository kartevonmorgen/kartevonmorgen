# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React = require "react"
Pure  = require "react-pure-render/mixin"
T     = React.PropTypes

{ span, div, i, button}  = React.DOM

module.exports = React.createClass

  displayName: "Message"

  propTypes:
    onCancel            : T.func
    onAction            : T.func
    actionButtonLabel   : T.string
    cancelButtonLabel   : T.string

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
          @props.cancelButtonLabel
        if l = @props.actionButtonLabel
          button
            onClick: (ev) =>
              ev.preventDefault()
              @props.onAction()
            className:"pure-button",
            i className: @props.actionButtonIcon
            l
