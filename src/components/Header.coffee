require "./Header.styl"

React     = require "react"
SearchBar = require "./SearchBar"
Menu      = require "./Menu"
Pure      = require "react-pure-render/mixin"

{ div, header, i, a } = React.DOM

module.exports = React.createClass

  displayName: "Header"

  mixins: [ Pure ]

  render: ->
    { disabled, search, disabled } = @props
    header null,
      div className: "header-content pure-g",
        div className: "logo pure-u-2-24"
        div className: "pure-u-18-24",
          React.createElement SearchBar,
            searchText      : search.text
            categories      : search.categories
            disabled        : disabled
            toggleCat       : @props.onCatToggle
            onChange        : @props.onSearchTextChange
            onEscape        : @props.onSearchTextReset
            onEnter         : -> # currently not used
        a
          onClick: @props.onMenuToggle
          className: "menu pure-u-1-24 #{if disabled then 'disabled' else ''}",
            i className: "fa fa-bars"

      div className:"header-content pure-g menu-list",
        div className: "pure-u-21-24",
          React.createElement Menu,
            new:
              icon    : "plus-circle"
              label   : " Eintrag hinzufügen"
              onClick : @props.onNewEntry
            info:
              icon    : "info-circle"
              label   : " Info"
              onClick : @props.onShowInfo
