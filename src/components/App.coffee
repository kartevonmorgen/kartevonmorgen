# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

require "./App.styl"

React         = require "react"
T             = React.PropTypes
Pure          = require "react-pure-render/mixin"
V             = require "../constants/PanelView"
C             = require "../constants/Categories"
Actions       = require "../Actions"
EntryDetails  = require "./EntryDetails"
ResultList    = require "./ResultList"
CityList      = require "./CityList"
Info          = require "./Info"
Imprint       = require "./Imprint"
EntryForm     = require "./EntryForm"
Message       = require "./Message"
Map           = require "./Map"
SearchBar     = require "./SearchBar"
LandingPage   = require "./LandingPage"
Menu          = require "./Menu"
{ EDIT }      = require "../constants/Form"
URLs          = require "../constants/URLs"

{ initialize, touch }  = require "redux-form"
{ div, span, button, nav, li, i, a, br, h3, p } = React.DOM

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

    { highlight, addresses, cities } = search

    resultEntries    =
      (x for id in search.result when (x=@props.entries[id])?)
    invisibleEntries =
      (x for id in search.invisible when(x=@props.entries[id])?)
    rightPanelIsOpen = false #right panel moved into landingpage
    mapCenter =
     if (c=search.current)
       e = entries[c]
       lat: e?.lat
       lng: e?.lng
     else map.center

    div className:"app",

      div className:"main",

        if view.menu
          React.createElement LandingPage,
            onMenuItemClick: (id) -> switch id
              when 'map'
                dispatch Actions.toggleLandingPage()
                dispatch Actions.setSearchText ''
                dispatch Actions.search()
              when 'new'
                dispatch Actions.toggleLandingPage()
                dispatch Actions.showNewEntry()
              when 'landing'
                dispatch Actions.showInfo null
                dispatch Actions.toggleLandingPage()
              else
                dispatch Actions.showInfo id
            onChange: (city) ->
              dispatch Actions.setCitySearchText city
              dispatch Actions.searchCity()
            content: view.right
            searchText: search.city
            cities: search.cities
            onEscape: -> dispatch Actions.setCitySearchText ''

            onSelection: (city) ->
              if city
                dispatch Actions.setCenter
                  lat: city.lat
                  lng: city.lon
                dispatch Actions.toggleLandingPage()
                dispatch Actions.setSearchText ''

        if view.modal?
          switch view.modal

            when V.LOCATE
              div className: 'modal',
                React.createElement Message,
                  iconClass: "fa fa-spinner fa-pulse"
                  message: " Dein aktueller Standort wird gesucht ..."
                  cancelButtonLabel: "abbrechen"
                  onCancel: -> dispatch Actions.cancelOwnPosition()

            when V.LOCATE_DISABLED
              div className: 'modal',
                React.createElement Message,
                  iconClass: "fa fa-exclamation-triangle"
                  message: " " + '''
                    Der Standort kann nicht ermittelt werden.
                    Die Standortbestimmung ist in den Browser-
                    oder System-Einstellungen deaktiviert, oder
                    das GPS hat keinen Empfang.
                  ''',
                  cancelButtonLabel: "schließen",
                  onCancel: -> dispatch Actions.cancelOwnPosition(),
                  actionButtonLabel: "nochmal versuchen",
                  actionButtonIcon: "fa fa-repeat",
                  onAction: -> dispatch Actions.showOwnPosition15minutes()

            when V.DONATE_FOR_EVENTS
              div className: 'modal',
                React.createElement Message,
                  iconClass: "fa fa-info-circle"
                  message: " " + '''
                    Events werden zur Zeit noch nicht unterstützt.

                    Ob Tagung, Konferenz oder Festival - auf der Karte von morgen
                    sollen auch bald Events eingetragen werden.
                    Wir planen außerdem einen Veranstaltungskalender,
                    der die Ergebnisse anzeigt und exportiert.

                    Helfe mit, damit diese Funktion schon bald verfügbar ist
                    und beteilige Dich an der Spendenaktion auf betterplace.org!
                  ''',
                  cancelButtonLabel: "schließen",
                  onCancel: -> dispatch Actions.showFeatureToDonate null
                  actionButtonLabel: "Spenden",
                  actionButtonIcon: "fa fa-external-link",
                  onAction: -> (window.open URLs.DONATE.link, '_blank').focus()

        div className:"left #{if view.left? and not view.menu then 'opened' else 'closed'}",

          div className: "search #{
            if view.left? then 'integrated' else 'standalone'
          }",
            React.createElement SearchBar,
              searchText      : search.text
              categories      : search.categories
              disabled        : view.left in [V.EDIT, V.NEW]
              toggleCat       : (c) ->
                if c is C.IDS.EVENT
                  dispatch Actions.showFeatureToDonate "events"
                else
                  dispatch Actions.toggleSearchCategory c
                  dispatch Actions.search()
              onChange        : (txt="") ->
                dispatch Actions.setCurrentEntry()
                dispatch Actions.setSearchText txt
                dispatch Actions.search()
              onLenseClick    : ->
                switch view.left
                  when V.ENTRY
                    dispatch Actions.setCurrentEntry()
                  else
                    dispatch Actions.setSearchText ''
                    dispatch Actions.search()
              onEscape        : -> dispatch Actions.setSearchText ''
              onEnter         : -> # currently not used
              onLocate        : -> dispatch Actions.showOwnPosition()

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
                        @refs.form.submit()
                      ),
                        i className: "fa fa-floppy-o"
                        "speichern"
                    li
                      key: "cancel"
                      className:"pure-u-1-2",
                      onClick: (->
                        dispatch initialize EDIT.id, {}, EDIT.fields
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
                div className: "result",
                  React.createElement ResultList,
                    entries     : resultEntries
                    highlight   : highlight
                    onClick     : (id) -> dispatch Actions.setCurrentEntry id
                    onMouseEnter: (id) -> dispatch Actions.highlight id
                    onMouseLeave: (id) -> dispatch Actions.highlight()

                  if cities.length > 0
                    div null,
                      div className: 'group-header', "Städte:"
                      React.createElement CityList,
                        cities  : cities
                        onClick : (city) ->
                          dispatch Actions.setCenter
                            lat: city.lat
                            lng: city.lon
                          dispatch Actions.setSearchText ''

                  if invisibleEntries and invisibleEntries.length
                    div null,
                      div className: 'group-header',
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
                React.createElement EntryForm,
                  ref: 'form'
                  isEdit: form[EDIT.id]?.id?
                  onSubmit: (data) ->
                    dispatch Actions.saveEntry
                      id          : form[EDIT.id]?.id?.value
                      title       : data.title
                      description : data.description
                      homepage    : data.homepage
                      telephone   : data.telephone
                      lat         : data.lat
                      lng         : data.lng
                      street      : data.street
                      city        : data.city
                      email       : data.email
                      zip         : data.zip
                      version     : (form[EDIT.id]?.version?.value or 0) + 1
                      categories  : [data.category]
              when V.WAIT
                React.createElement Message,
                  iconClass: "fa fa-spinner fa-pulse"
                  message: " lade Daten vom Server ..."
                  buttonLabel: "abbrechen"
                  onCancel: ->
                    dispatch Actions.cancelWait()
              when V.IO_ERROR
                React.createElement Message,
                  iconClass: "fa fa-exclamation-triangle"
                  message: " Server nicht erreichbar. " +
                    "Bitte prüfe Deine Internetverbindung " +
                    "oder versuche es später nochmal. "
                  buttonLabel: "schließen"
                  onCancel: ->
                    dispatch Actions.closeIoErrorMessage()

        div className:"right #{
          if rightPanelIsOpen then 'opened' else 'closed'
        }",
          div className:"menu-toggle",
            button
              onClick: (-> dispatch Actions.toggleMenu()) ,
              span className: "pincloud",
                i className: "fa fa-#{
                  if rightPanelIsOpen then 'times' else 'bars'
                }"

        div className:"center",
          React.createElement Map,
            marker        : (map.marker if view.left in [V.EDIT, V.NEW])
            size          : if view.left? then (if rightPanelIsOpen then 3 else 2) else if rightPanelIsOpen then 1 else 0
            center        : mapCenter
            zoom          : map.zoom
            category      : form[EDIT.id]?.category?.value
            highlight     : highlight
            entries       : (resultEntries unless view.left in [V.EDIT, V.NEW])
            onClick       : (latlng) -> dispatch Actions.setMarker latlng
            onMarkerClick : (id) -> dispatch Actions.setCurrentEntry id
            onMoveend     : (coordinates) ->
              dispatch Actions.setCenter coordinates.center
              dispatch Actions.setBbox coordinates.bbox
              dispatch Actions.search()
            onZoomend     : (coordinates) ->
              dispatch Actions.setZoom coordinates.zoom
              dispatch Actions.setBbox coordinates.bbox
              dispatch Actions.search()

