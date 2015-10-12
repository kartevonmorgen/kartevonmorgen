# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
PureMixin = require "react-pure-render/mixin"

{ div, i, a, ul, li } = React.DOM

module.exports = React.createClass

  displayName: "Menu"

  mixins: [ PureMixin ]

  render: ->
    buttons = for key,v of @props when typeof v is "object" then do (key,v) ->
      li { key, className :"pure-menu-item" },
        a { onClick: v.onClick, className: "pure-menu-link"},
          i className: "fa fa-#{v.icon}"
          v.label
    div className: "pure-menu pure-menu-horizontal",
      ul className:"pure-menu-list", buttons
