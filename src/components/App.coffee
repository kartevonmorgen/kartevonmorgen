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
Imprint       = require "./Imprint"
EntryForm     = require "./EntryForm"
Wait          = require "./Wait"
Map           = require "./Map"
pkg           = require "json!../../package.json"

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
    server  : T.object.isRequired

  render: ->

    { dispatch, search, view, entries, map, form } = @props

    { highlight } = search

    resultEntries   = (x for id in search.result when (x=@props.entries[id])?)
    invisibleEntries= (x for id in search.invisible when(x=@props.entries[id])?)
    disabledHeader  = view.panel is V.EDIT
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
        onShowInfo          : ->
          dispatch Actions.showInfo()
          dispatch Actions.getServerInfo()
        onNewEntry          : -> dispatch Actions.showNewEntry()
        onShowImprint       : -> dispatch Actions.showImprint()

      div className: "main",

        React.createElement Map,
          marker    : (map.marker if view.panel is V.EDIT)
          center    : map.center
          zoom      : map.zoom
          category  : form.edit?.category?.value
          highlight : highlight
          entries   : (resultEntries unless view.panel is V.EDIT)
          onClick   : (latlng) -> dispatch Actions.setMarker latlng
          onMoveend : (center, bbox) ->
            dispatch Actions.setCenter center
            dispatch Actions.setBbox bbox
            dispatch Actions.search()
          onZoomend : (zoom, bbox) ->
            dispatch Actions.setZoom zoom
            dispatch Actions.setBbox bbox
            dispatch Actions.search()

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
                if invisibleEntries and invisibleEntries.length
                  div null,
                    div className: 'hdr-invisible',
                      """
                      Weitere Ergebnisse außerhalb
                      des sichtbaren Bereichs der Karte:
                      """
                    React.createElement ResultList,
                      entries     : invisibleEntries
                      highlight   : highlight
                      onClick     :
                        (id) -> dispatch Actions.setCurrentEntry id
                      onMouseEnter: (id) -> dispatch Actions.highlight id
                      onMouseLeave: (id) -> dispatch Actions.highlight()

            when V.ENTRY
              div null,
                React.createElement EntryDetails,
                  entry   : entries[search.current]
                  onClose : -> dispatch Actions.setCurrentEntry()
                  onEdit  : -> dispatch Actions.editCurrentEntry()

            when V.INFO
              div null,
                React.createElement Info,
                  clientVersion: pkg.version
                  serverVersion: @props.server.version
                  onClose: ->
                    dispatch Actions.closePanel()

            when V.IMPRINT
              div null,
                React.createElement Imprint,
                  onClose: ->
                    dispatch Actions.closePanel()

            when V.EDIT
              div className: "content pure-g",
                React.createElement EntryForm,
                  isEdit: form.edit.id?
                  onSubmit: (data) ->
                    dispatch Actions.saveEntry
                      id          : form.edit?.id?.value
                      title       : data.title
                      description : data.description
                      homepage    : data.homepage
                      telephone   : data.telephone
                      lat         : data.lat
                      lon         : data.lng
                      categories  : [data.category]
                  onCancel: ->
                    dispatch initialize 'edit', {}
                    dispatch Actions.closeNewEntry()
            when V.WAIT
              React.createElement Wait,
                onCancel: ->
                  dispatch Actions.cancelWait()
