# Copyright (c) 2015 - 2017 Markus Kohlhase <mail@markus-kohlhase.de>

require "./App.styl"

React             = require "react"
T                 = React.PropTypes
V                 = require "../constants/PanelView"
C                 = require "../constants/Categories"
Actions           = require "../Actions"
EntryDetails      = require "./EntryDetails"
ResultList        = require "./ResultList"
CityList          = require "./CityList"
Info              = require "./Info"
EntryForm         = require "./EntryForm"
RatingForm        = require "./RatingForm"
Message           = require "./Message"
Modal             = require "./Modal"
Map               = require "./Map"
SearchBar         = require "./SearchBar"
LandingPage       = require "./LandingPage"
{ EDIT, RATING }  = require "../constants/Form"
URLs              = require "../constants/URLs"
{ pure }          = require "recompose"
{ initialize }    = require "redux-form"
mapConst          = require "../constants/Map"
Router            = require "../Router"

{ GrowlerContainer } = require "flash-notification-react-redux"

{ div, span, button, nav, li, i, a, br, h3, p } = React.DOM

Main = React.createClass

  displayName: "Main"

  propTypes:
    view    : T.object.isRequired
    server  : T.object.isRequired
    map     : T.object.isRequired
    search  : T.object.isRequired
    form    : T.object.isRequired
    server  : T.object.isRequired
    growler : T.object.isRequired
    url : T.object.isRequired

  render: ->

    { dispatch, search, view, server, map, form, growler, url } = @props

    { highlight, addresses, cities } = search
    { entries, ratings } = server
    { waiting_for_search_results } = view

    resultEntries    =
      (x for id in search.result when (x=entries[id])?)
    invisibleEntries =
      (x for id in search.invisible when(x=entries[id])?)
    rightPanelIsOpen = false #right panel moved into landingpage
    mapCenter = 
      if e?.lat and e?.lng and c=search.current
        e = entries[c]
        lat: e?.lat
        lng: e?.lng
      else
        map.center

    div className:"app",

      div className:"main",

        React.createElement GrowlerContainer,
          growler: growler

        if view.menu
          React.createElement LandingPage,
            onMenuItemClick: (id) -> switch id
              when 'map'
                dispatch Actions.urlSetCenter(mapConst.DEFAULT_CENTER)
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
                dispatch Actions.urlSetCenter
                  lat: city.lat
                  lng: city.lon
                dispatch Actions.toggleLandingPage()
                dispatch Actions.setSearchText ''
            onLogin: (data) ->
                dispatch Actions.login(data)
            onRegister: (data) ->
                dispatch Actions.register(data)

        if view.modal?
          React.createElement Modal, { view, dispatch }

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
                dispatch Actions.urlSetCurrentEntry()
                dispatch Actions.urlSetSearch txt
                dispatch Actions.setSearchText txt
                # dispatch Actions.search()
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
                      onClick: -> 
                        dispatch Actions.urlSetCurrentEntry("NONE")
                        dispatch Actions.showSearchResults()
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
                when V.NEW_RATING
                  [
                    li
                      key: "save"
                      className:"pure-u-1-2",
                      onClick: (=>
                        @refs.rating.submit()
                      ),
                        i className: "fa fa-floppy-o"
                        "bewerten"
                    li
                      key: "cancel"
                      className:"pure-u-1-2",
                      onClick: (->
                        dispatch initialize RATING.id, {}, RATING.fields
                        dispatch Actions.cancelRating()
                      ),
                        i className: "fa fa-ban"
                        "abbrechen"
                  ]
          div className:"content",

            switch view.left

              when V.RESULT
                div className: "result",
                  React.createElement ResultList,
                    waiting     : waiting_for_search_results
                    entries     : resultEntries
                    ratings     : ratings
                    highlight   : highlight
                    onClick     : (id) -> dispatch Actions.urlSetCurrentEntry id
                    onMouseEnter: (id) -> dispatch Actions.highlight id
                    onMouseLeave: (id) -> dispatch Actions.highlight()

                  if cities.length > 0
                    div null,
                      div className: 'group-header', "Städte:"
                      React.createElement CityList,
                        cities  : cities
                        onClick : (city) ->
                          dispatch Actions.urlSetCenter
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
                        ratings     : ratings
                        highlight   : highlight
                        onClick     :
                          (id) -> dispatch Actions.urlSetCurrentEntry id
                        onMouseEnter: (id) -> dispatch Actions.highlight id
                        onMouseLeave: (id) -> dispatch Actions.highlight()
              when V.ENTRY
                div null,
                  React.createElement EntryDetails,
                    entry   : entries[search.current] || null
                    ratings : (if entries[search.current] then (entries[search.current].ratings || []) else []).map((id) -> ratings[id])
                    onRate  : (id) => dispatch Actions.showNewRating id

              when V.EDIT, V.NEW
                React.createElement EntryForm,
                  ref: 'form'
                  isEdit: form[EDIT.id]?.kvm_flag_id?
                  onSubmit: (data) ->
                    dispatch Actions.saveEntry
                      id          : form[EDIT.id]?.kvm_flag_id
                      title       : data.title
                      description : data.description
                      tags        : data.tags?.split(',')
                      homepage    : data.homepage
                      telephone   : data.telephone
                      lat         : data.lat
                      lng         : data.lng
                      street      : data.street
                      city        : data.city
                      email       : data.email
                      zip         : data.zip
                      version     : (form[EDIT.id]?.values?.version or 0) + 1
                      categories  : [data.category]
              when V.NEW_RATING
                React.createElement RatingForm,
                  ref         : 'rating'
                  entryid     : form[RATING.id]?.kvm_flag_id
                  entryTitle  : entries[form[RATING.id]?.kvm_flag_id]?.title
                  onSubmit: (data) ->
                    dispatch Actions.createRating
                      entry   : form[RATING.id]?.kvm_flag_id
                      title   : data.title
                      context : data.context
                      value   : data.value
                      comment : data.comment
                      source : data.source
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
            onMarkerClick : (id) -> dispatch Actions.urlSetCurrentEntry id
            onMoveend     : (coordinates) ->
              console.log("moveend");
              dispatch Actions.updateStateFromURL window.location.hash  # because onMoveEnd is triggered when rendering initially and subsequently any URL would be overwritten
              dispatch Actions.setBbox coordinates.bbox
              dispatch Actions.urlSetCenter coordinates.center
              dispatch Actions.search()
              
            onZoomend     : (coordinates) ->
              if coordinates.zoom != map.zoom
                dispatch Actions.urlSetZoom coordinates.zoom
                dispatch Actions.setBbox coordinates.bbox
              
module.exports = pure(Main)
