# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

require "./App.styl"

React         = require "react"
T             = React.PropTypes
Pure          = require "react-pure-render/mixin"
V             = require "../constants/PanelView"
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
Menu          = require "./Menu"
pkg           = require "json!../../package.json"
DONATE_URL    = "https://www.betterplace.org/de/projects/36213"

{ initialize, touch       }  = require "redux-form"
{ div, span, button, nav, li, i, a, br, p }  = React.DOM

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
    rightPanelIsOpen = view.menu or view.right?
    mapCenter =
     if (c=search.current)
       e = entries[c]
       lat: e?.lat
       lng: e?.lng
     else map.center

    div className:"app",

      div className:"main",

        if view.modal?
          switch view.modal

            when V.LOCATE
              div className: 'modal',
                React.createElement Message,
                  iconClass: "fa fa-spinner fa-pulse"
                  message: " Dein aktueller Standort wird gesucht ..."
                  buttonLabel: "abbrechen"
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
                  buttonLabel: "schließen",
                  onCancel: -> dispatch Actions.cancelOwnPosition(),
                  retryButtonLabel: "nochmal versuchen",
                  onRetry: -> dispatch Actions.showOwnPosition15minutes()

        div className:"center",
          React.createElement Map,
            marker        : (map.marker if view.left in [V.EDIT, V.NEW])
            center        : mapCenter
            zoom          : map.zoom
            category      : form.edit?.category?.value
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

        div className:"left #{if view.left? then 'opened' else 'closed'}",

          div className: "search #{
            if view.left? then 'integrated' else 'standalone'
          }",
            React.createElement SearchBar,
              searchText      : search.text
              categories      : search.categories
              disabled        : view.left in [V.EDIT, V.NEW]
              toggleCat       : (c) ->
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
                        # dirty hack
                        @refs.form
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
                        onClick : (center) -> dispatch Actions.setCenter center

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
                          lng         : data.lng
                          street      : data.street
                          city        : data.city
                          email       : data.email
                          zip         : data.zip
                          version     : (form.edit?.version?.value or 0) + 1
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
          if rightPanelIsOpen
            div null,
              div className: "logo"
              if view.right != null
                div className:"content-toggle",
                  button
                    onClick: (-> dispatch Actions.showMenu()),
                    i className: "fa fa-bars"
              div className: "menu-content",
                if view.right is null
                  React.createElement Menu,
                    onClick : (key) -> ( ->
                      dispatch Actions.showInfo(key)
                      dispatch Actions.getServerInfo())
                    items:
                      MAP:
                        label   : "Karte"
                        active  : view.right is null
                      DONATE:
                        label   : "Spenden"
                        active  : view.right is V.DONATE
                      JOIN:
                        label   : "Mitmachen"
                        active  : view.right is V.JOIN
                      INFO:
                        label   : "Info"
                        items:
                          INFO:
                            label   : "Das Projekt"
                            active  : view.right is V.INFO
                          TEAM:
                            label   : "Team / Über Uns"
                            active  : view.right is V.TEAM
                          SUPPORTERS:
                            label   : "Partner / Unterstützer"
                            active  : view.right is V.PARTNER
                else
                  switch view.right
                    when V.INFO
                      React.createElement Info,
                        clientVersion: pkg.version
                        serverVersion: @props.server.version
                    when V.DONATE
                      div null,
                        p null,
                          "Du kannst uns mit Spenden ab sofort über unser "
                          a href: DONATE_URL, "Crowdfunding Projekt"
                          " auf "
                          a href: DONATE_URL, "www.betterplace.org"
                          " unterstützen."
                        br null
                        br null
                    when V.JOIN
                      div null,
                        "Bitte schreibt eine E-Mail an: "
                        a href: "mailto:team@kartevonmorgen.org",
                          "team@kartevonmorgen.org"
                    when V.TEAM
                      div null,
                        p null, "Anja"
                        p null, "Benedikt"
                        p null, "Florian"
                        p null, "Frederik"
                        p null, "Helmut"
                        p null, "Lisa"
                        p null, "Markus"
                        p null, "Peter"
                        p null, "Thao"
                        p null, "Xueqian"
                        p null, "Tomas"
                    when V.SUPPORTERS
                      div null,
                        p null, "Think BIG"
                        p null, "Heinrich Böll Stiftung"

                    when V.IMPRINT
                      React.createElement Imprint
              div className:"menu-footer",
                a onClick: (-> dispatch Actions.showImprint()),
                  "Kontakt // Impressum"
