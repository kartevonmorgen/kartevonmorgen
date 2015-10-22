# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

require "./App.styl"

React         = require "react"
T             = React.PropTypes
Pure          = require "react-pure-render/mixin"
V             = require "../constants/PanelView"
Actions       = require "../Actions"
EntryDetails  = require "./EntryDetails"
ResultList    = require "./ResultList"
Info          = require "./Info"
Imprint       = require "./Imprint"
EntryForm     = require "./EntryForm"
Wait          = require "./Wait"
Map           = require "./Map"
SearchBar     = require "./SearchBar"
Menu          = require "./Menu"
pkg           = require "json!../../package.json"

{ initialize, touch       }  = require "redux-form"
{ div, button, nav, li, i }  = React.DOM

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

    resultEntries    = (x for id in search.result when (x=@props.entries[id])?)
    invisibleEntries = (x for id in search.invisible when(x=@props.entries[id])?)
    rightPanelIsOpen = view.menu or view.right?

    div className:"app",

      div className:"main",

        div className:"center",
          React.createElement Map,
            marker        : (map.marker if view.panel in [V.EDIT, V.NEW])
            center        : map.center
            zoom          : map.zoom
            category      : form.edit?.category?.value
            highlight     : highlight
            entries       : (resultEntries unless view.panel in [V.EDIT, V.NEW])
            onClick       : (latlng) -> dispatch Actions.setMarker latlng
            onMarkerClick : (id) -> dispatch Actions.setCurrentEntry id
            onMoveend     : (center, bbox) ->
              dispatch Actions.setCenter center
              dispatch Actions.setBbox bbox
              dispatch Actions.search()
            onZoomend     : (zoom, bbox) ->
              dispatch Actions.setZoom zoom
              dispatch Actions.setBbox bbox
              dispatch Actions.search()

        div className:"left #{if view.left? then 'opened' else 'closed'}",

          div className: "search #{if view.left? then 'integrated' else 'standalone' }",
            React.createElement SearchBar,
              searchText      : search.text
              categories      : search.categories
              disabled        : view.left in [V.ENTRY, V.EDIT, V.NEW]
              toggleCat       : (c) ->
                dispatch Actions.toggleSearchCategory c
                dispatch Actions.search()
              onChange       : (txt='') ->
                dispatch Actions.setSearchText txt
                dispatch Actions.search() if txt.length > 0
              onEscape        : -> dispatch Actions.setSearchText ''
              onEnter         : -> # currently not used

          if view.left?
            nav className: "menu pure-g",
              switch view.left
                when V.RESULT
                  li
                    onClick: -> dispatch Actions.showNewEntry()
                    className:"pure-u-1",
                      i className: "fa fa-plus"
                      "Eintrag hinzufügen"
                when V.ENTRY
                  [
                    li
                      onClick: -> dispatch Actions.setCurrentEntry()
                      key: "back"
                      className:"pure-u-1-2",
                        i className: "fa fa-chevron-left"
                        "zurück"
                    li
                     onClick: -> dispatch Actions.editCurrentEntry()
                     key: "edit"
                     className:"pure-u-1-2",
                       i className: "fa fa-pencil"
                       "bearbeiten"
                  ]

                when V.EDIT, V.NEW
                  [
                    li
                      key: "save"
                      className:"pure-u-1-2",
                      onClick: (=>
                        # dirty hack
                        @refs.form
                          .getDOMNode()
                          .querySelector 'form'
                          .dispatchEvent new Event "submit"
                      ),
                        i className: "fa fa-floppy-o"
                        "speichern"
                    li
                      key: "cancel"
                      className:"pure-u-1-2",
                      onClick: (->
                        dispatch initialize 'edit', {}
                        dispatch switch view.left
                          when V.NEW  then Actions.cancelNew()
                          when V.EDIT then Actions.cancelEdit()
                      ),
                        i className: "fa fa-ban"
                        "abbrechen"
                  ]
          div className:"content",

            switch view.left

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

              when V.EDIT, V.NEW
                div
                  className: "content pure-g"
                  ref: 'form',
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
              when V.WAIT
                React.createElement Wait,
                  onCancel: ->
                    dispatch Actions.cancelWait()

        div className:"right #{if rightPanelIsOpen then 'opened' else 'closed'}",
          div className:"menu-toggle",
            button
              onClick: (-> dispatch Actions.toggleMenu()) ,
              (if rightPanelIsOpen then "" else "Menu"),
                i className: "fa fa-#{if rightPanelIsOpen then 'times' else 'bars'}"

          if rightPanelIsOpen
            div null,
              div className: "logo"

              div null,
                React.createElement Menu,
                  info:
                    label   : " Info"
                    active  : view.right is V.INFO
                    onClick : ->
                      dispatch Actions.showInfo()
                      dispatch Actions.getServerInfo()
                  imprint:
                    label   : " Impressum"
                    active  : view.right is V.IMPRINT
                    onClick : -> dispatch Actions.showImprint()
              div className: "content",
                switch view.right
                  when V.INFO
                    React.createElement Info,
                      clientVersion: pkg.version
                      serverVersion: @props.server.version

                  when V.IMPRINT
                    React.createElement Imprint
