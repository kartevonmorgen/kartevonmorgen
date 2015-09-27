# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
PureMixin = require "react-pure-render/mixin"

{ NAMES, CSS_CLASSES } = require "../constants/Categories"

{ div, p, h3, button, span } = React.DOM

module.exports = React.createClass

  displayName: "EntryDetails"

  mixins: [ PureMixin ]

  render: ->
    { entry } = @props
    clz = CSS_CLASSES[entry.categories?[0]]
    div className: "entry-detail #{clz}",
      div className: "category",
        span null, NAMES[entry.categories?[0]]
      div null,
        h3 null, entry.title
        p null, entry.description
        div null,
          button
            onClick: @props.onClose
            className: "pure-button",
               "zurück"
