# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

require './SearchBar.styl'

React     = require "react"
T         = React.PropTypes
{ pure }  = require "recompose"

{ MAIN_IDS, NAMES, CSS_CLASSES, CSS_CLASS_SIZE } =
  require "../constants/Categories.coffee"

{ div, input, button, i, span, a } = React.DOM

CategoryButtons = pure React.createClass

  displayName: "CategoryButtons"

  propTypes:
    active     : T.array
    disabled   : T.bool
    onToggle   : T.func

  render: ->
    { disabled, active, onToggle } = @props
    buttons = for c in MAIN_IDS then do (c) ->
      act = if c in (active or []) then ' active' else ''
      button
        key       : c
        disabled  : disabled
        onClick   : -> onToggle c
        className : "#{CSS_CLASSES[c]} #{CSS_CLASS_SIZE[c]}#{act}",
        NAMES[c]
        i className: 'toggle',
          i null
    div null, buttons

module.exports = pure React.createClass

  displayName: "SearchBar"

  propTypes:
    searchText  : T.string
    categories  : T.array
    disabled    : T.bool
    toggleCat   : T.func
    onChange    : T.func
    onEnter     : T.func
    onEscape    : T.func
    onLocate    : T.func

  onChange: (ev) ->
    return unless (v = ev.target?.value)?
    @props.onChange v

  onKeyUp: (ev) ->
    ev.preventDefault()
    switch ev.key
      when "Escape" then @props.onEscape()
      when "Enter"  then @props.onEnter()

  render: ->

    { categories, disabled, toggleCat, searchText } = @props

    div className:"SearchBar pure-g",

      div className: "main-categories pure-u-1 pure-g",
        React.createElement CategoryButtons,
          active    : categories
          disabled  : disabled
          onToggle  : toggleCat

      div className: "pure-u-1",
        a
          onClick     : @props.onLenseClick
          className   : "search-icon",
          i className : "fa fa-search"
        input
          onChange    : @onChange
          disabled    : disabled
          onKeyUp     : @onKeyUp
          value       : searchText or ''
          className   : "pure-u-1"
          placeholder : "Wonach suchst du?"
        a
          className   : "locate-icon"
          onClick     : @props.onLocate
          title       : "Zeige meine Position"
          i className : "fa fa-location-arrow"
