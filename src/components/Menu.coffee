# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
PureMixin = require "react-pure-render/mixin"

{ div, i, a, ul, li, span, br } = React.DOM

module.exports = React.createClass

  displayName: "Menu"

  mixins: [ PureMixin ]

  render: ->
    onClick = @props.onClick
    buttons =
      for key,v of @props.items when typeof v is "object" then do (key,v) ->
        submenu =
          for key2,v2 of v.items when typeof v.items is "object" then do
            (key2,v2) ->
              li { key: key2, className: if v2.active then 'active' },
                a { onClick: onClick key2 }, v2.label
        li { key, className: if v.active then 'active' },
          a { onClick: onClick key }, v.label
          if submenu and submenu.length
            i className: "fa fa-angle-down", style: {paddingLeft: "5px"}
          if submenu and submenu.length
            ul className:"submenu",
              submenu
    ul className:"menu", buttons
