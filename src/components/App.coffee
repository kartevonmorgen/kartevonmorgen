# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

require "./App.styl"

React         = require "react"
T             = React.PropTypes
Pure          = require "react-pure-render/mixin"
V             = require "../constants/PanelView"
Actions       = require "../Actions"
EntryDetails  = require "./EntryDetails"
ResultList    = require "./ResultList"
Header        = require "./Header"
Info          = require "./Info"
EntryForm     = require "./EntryForm"
Map           = require "./Map"

{ initialize }  = require "redux-form"
{ div }         = React.DOM

module.exports = React.createClass

  displayName: "Main"

  mixins: [ Pure ]

  propTypes:
    entries : T.object.isRequired
    view    : T.object.isRequired
    map     : T.object.isRequired
    search  : T.object.isRequired
    form    : T.object.isRequired

  render: ->

    { dispatch, search, view, entries, map, form } = @props

    { highlight } = search

    resultEntries   = (x for id in search.result when (x=@props.entries[id])?)
    disabledHeader  = view.panel is V.NEW
    menuClz         = if view.menu then 'active-menu' else ''

    div className:"kvm app #{menuClz}",

      React.createElement Header,
        search              : search
        disabled            : disabledHeader
        onMenuToggle        : ->
          dispatch Actions.toggleMenu() unless disabledHeader
        onCatToggle         : (c) ->
          dispatch Actions.toggleSearchCategory c
          dispatch Actions.search()
        onSearchTextChange  : (txt='') ->
          dispatch Actions.setSearchText txt
          dispatch Actions.search() if txt.length > 0
        onSearchTextReset   : -> dispatch Actions.setSearchText ''
        onShowInfo          : -> dispatch Actions.showInfo()
        onNewEntry          : -> dispatch Actions.showNewEntry()

      div className: "main",

        React.createElement Map,
          marker    : (map.marker if view.panel is V.NEW)
          center    : map.center
          zoom      : map.zoom
          category  : form.new?.category?.value
          highlight : highlight
          entries   : (resultEntries unless view.panel is V.NEW)
          onClick   : (latlng) -> dispatch Actions.setMarker latlng
          onMoveend : (center) -> dispatch Actions.setCenter center
          onZoomend : (zoom)   -> dispatch Actions.setZoom zoom

        div className:"right",
          switch view.panel

            when V.RESULT
              div null,
                React.createElement ResultList,
                  entries     : resultEntries
                  highlight   : highlight
                  onClick     : (id) -> dispatch Actions.setCurrentEntry id
                  onMouseEnter: (id) -> dispatch Actions.highlight id
                  onMouseLeave: (id) -> dispatch Actions.highlight()

            when V.ENTRY
              div null,
                React.createElement EntryDetails,
                  entry   : entries[search.current]
                  onClose : -> dispatch Actions.setCurrentEntry()

            when V.INFO
              div null,
                React.createElement Info

            when V.NEW
              div className: "content pure-g",
                React.createElement EntryForm,
                  onSubmit: (data) ->
                    dispatch Actions.saveNewEntry
                      title       : data.title
                      description : data.description
                      lat         : data.lat
                      lon         : data.lng
                      categories  : [data.category]
                  onCancel: ->
                    dispatch initialize 'new', {}
                    dispatch Actions.closeNewEntry()
