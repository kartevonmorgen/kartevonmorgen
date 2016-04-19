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
pkg           = require "json!../../package.json"
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
    rightPanelIsOpen = view.menu or view.right?
    mapCenter =
     if (c=search.current)
       e = entries[c]
       lat: e?.lat
       lng: e?.lng
     else map.center

    div className:"app",

      div className:"main",

        if view.landing
          React.createElement LandingPage,
            onMenuItemClick: (id) -> switch id
              when 'map'
                dispatch Actions.toggleLandingPage()
              when 'new'
                dispatch Actions.toggleLandingPage()
                dispatch Actions.showNewEntry()
              when 'donate'
                dispatch Actions.toggleLandingPage()
                dispatch Actions.showInfo V.DONATE
              when 'info'
                dispatch Actions.toggleLandingPage()
                dispatch Actions.showInfo V.INFO
            onChange: (city) ->
              dispatch Actions.setCitySearchText city
              dispatch Actions.searchCity()
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

        div className:"left #{if view.left? and not view.landing then 'opened' else 'closed'}",

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
                div
                  className: "content pure-g",
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
          if rightPanelIsOpen
            div null,
              div
                className: "logo"
                onClick: ->
                  dispatch Actions.toggleLandingPage()
                  dispatch Actions.toggleMenu()
              if view.right != null
                div className:"content-toggle",
                  button
                    onClick: (-> dispatch Actions.showMenu()),
                    i className: "fa fa-bars"
              div className: "menu-content",
                if view.right is null
                  React.createElement Menu,
                    onClick : (key) -> ( ->
                      dispatch Actions.showInfo key
                      dispatch Actions.getServerInfo())
                    items:
                      MAP_INFO:
                        label   : "Über die Karte"
                        active  : view.right is V.MAP_INO
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
                          SUPPORTERS:
                            label   : "Unterstützer"
                            active  : view.right is V.PARTNER
                          OPEN_SOURCE:
                            label   : "Open Source"
                            active  : view.right is V.OPEN_SOURCE
                else
                  switch view.right
                    # TODO: move it all into the 'Info' component
                    when V.MAP_INFO
                      div null,
                        h3 null,
                          "Die Welt steckt voller Entdecker."
                          br null
                          "Und voller Orte, die darauf warten entdeckt zu werden."
                        p null
                          """
                          Unsere interaktive Karte zeigt dir Orte in deiner Umgebung,
                          an denen man sich schon heute für eine Welt von morgen einsetzt.
                          """
                        p null
                          """
                          Du hast eine Initiative, für die du Mitstreiter suchst?
                          Du kennst ein Unternehmen, das nachhaltig wirtschaftet?
                          """
                        p null
                          """
                          Auf unserer Website kannst du andere darauf
                          aufmerksam machen – und dich so für eine Sache
                          einsetzen, die dir persönlich am Herzen liegt.
                          """

                    when V.INFO
                      React.createElement Info

                    when V.OPEN_SOURCE
                      div className: "info",
                        h3 null, "Wir lieben Open Source!"
                        p null,
                          """
                          Wir wollen mit gutem Beispiel vorangehen und entwickeln daher
                          die Software transparent und offen.
                          Den Quellcode des Gemeinschaftsprojekts findest du unter:
                          """
                        p null, a href: URLs.REPOSITORY.link, URLs.REPOSITORY.name

                        p className: "version",
                          "Version dieses Clients: v#{pkg.version}"
                        if (sv = @props.server?.version)?
                          p className: "version",
                            "Version des Servers: v#{sv}"


                    when V.DONATE
                      div null,
                        h3 null, "Hier kannst du doppelte Wirkung zeigen."
                        p null,
                          """
                          Unsere Crowdfunding Kampagne auf www.betterplace.org
                          wird von Ashoka und dem Softwareunternehmen SAP
                          unterstützt.
                          Jede Spende bis zu 200 Euro wird in den nächsten
                          Wochen live und direkt verdoppelt.
                          """

                        p null,
                          """
                          Die Spenden sollen für die Weiterentwicklung der
                          Plattform von morgen verwendet werden.
                          Verschieden Feature sind in Planung,
                          u.a. die Themenkarte zur Einbettung in eigene
                          Webseiten und den Positivfaktoren der
                          gemeinwohl-orientierten Bewertung der einzelnen Orte.
                          """
                        p null,
                          "Hier geht es zur Kampagne: "
                          a href: URLs.DONATE.link, URLs.DONATE.name
                        p null,
                          """
                          Wir freuen uns über jeden kleinen und großen Beitrag
                          und hoffen auch bald in deiner Stadt verfügbar zu
                          sein.
                          """
                        p null, "Alles Liebe, das Team von morgen"

                    when V.JOIN
                      div null,
                        h3 null, "Werde Teil unseres Teams"

                        p null,
                          """
                          Wir sind ein deutschlandweites Team und immer auf der
                          Suche nach neuen Mitgliedern!
                          Unsere aktuellen Ausschreibungen findest du hier:
                          """
                        p null,
                          a href: URLs.JOB_ADS.link, URLs.JOB_ADS.name
                        p null,
                          """
                          Wir suchen Regional- und Themenpiloten
                          Stark lokal: als direkter Ansprechpartner vor Ort,
                          sicherst du die Qualität der Karteneinträge,
                          organisierst z.B. Aktionen und Workshops und zeigst
                          deine Stadt von ihrer besten Seite!
                          """

                        p null,
                          """
                          Du hast Fragen oder Interesse? Wir freuen uns von dir zu hören:
                          """
                          br null
                          a href: "mailto:netzwerk@kartevonmorgen.org",
                            "netzwerk@kartevonmorgen.org"

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
                        h3 null, "Mit Unterstützung von:"

                        p null, "Ashoka"

                        p null, "Heinrich Böll Stiftung"

                        p null, "Social Impact Hub"

                        p null, "Think Big"

                    when V.IMPRINT
                      React.createElement Imprint
              div className:"menu-footer",
                a onClick: (-> dispatch Actions.showImprint()),
                  "Kontakt // Impressum"


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

