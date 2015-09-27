# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React   = require "react"
Actions = require "../Actions"
Pure    = require "react-pure-render/mixin"

{ NAMES, CSS_CLASSES } = require "../constants/Categories"

{ div, ul, li, p, span } = React.DOM

ResultListElement = React.createClass

  displayName: "ResultListElement"

  mixins: [Pure]

  render: ->
    { id, highlight, title, description, category } = @props
    { onClick, onMouseEnter, onMouseLeave } = @props
    clz = if highlight then 'highlight-entry ' else ''
    clz += CSS_CLASSES[category]
    li
      className     : clz
      onClick       : (ev) -> ev.preventDefault(); onClick      id
      onMouseEnter  : (ev) -> ev.preventDefault(); onMouseEnter id
      onMouseLeave  : (ev) -> ev.preventDefault(); onMouseLeave id
      div null,
        span className: "category", NAMES[category]
      div null,
        span className: "title", title
        span className: "subtitle", description

module.exports = React.createClass

  displayName: "ResultList"

  mixins: [Pure]

  render: ->
    { entries, highlight } = @props
    results = for e in entries
      React.createElement ResultListElement,
        id          : e.id
        title       : e.title
        description : e.description
        category    : e.categories?[0]
        key         : e.id,
        highlight   : e.id in highlight
        onClick     : @props.onClick
        onMouseEnter: @props.onMouseEnter
        onMouseLeave: @props.onMouseLeave

    div className: "result-list",
      if results.length > 0
        ul null, results
      else
        p className: "no-results",
          "Es konnten keine Einträge gefunden werden :("
