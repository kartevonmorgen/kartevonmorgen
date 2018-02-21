# Copyright (c) 2015 - 2017 Markus Kohlhase <mail@markus-kohlhase.de>

require "./App.styl"

React             = require "react"
T                 = require "prop-types"
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
SubscribeToBbox   = require "./SubscribeToBbox"
Ratings           = require "./Ratings"
{ EDIT, RATING }  = require "../constants/Form"
URLs              = require "../constants/URLs"
{ pure }          = require "recompose"
{ initialize }    = require "redux-form"
mapConst          = require "../constants/Map"
{ translate }     = require "react-i18next"

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
    url     : T.object.isRequired
    user    : T.object.isRequired
    timedActions : T.object.isRequired

  render: ->

    { dispatch, search, view, server, map, form, growler, url, user, timedActions, t } = @props

    { highlight, addresses, cities } = search
    { entries, ratings } = server
    { waiting_for_search_results, explainRatingContext, selectedContext } = view

    if url.hash != window.location.hash
      console.log "URL CHANGE FROM APP: " + window.location.hash + " --> " + url.hash
      window.history.pushState(null, null, window.location.pathname + url.hash);

    resultEntries    =
      (x for entry in search.result when (x=entries[entry.id])?)
    invisibleEntries =
      (x for entry in search.invisible when(x=entries[entry.id])?)
    rightPanelIsOpen = false  # right panel moved into landingpage
    mapCenter = 
      if e?.lat and e?.lng and c=search.current
        e = entries[c]
        lat: e?.lat
        lng: e?.lng
      else
        map.center
    loggedIn = if user.id then true else false

    div className:"app",

      div className:"main",

        React.createElement GrowlerContainer,
          growler: growler
          shownFor: 2000

        if view.menu
          React.createElement LandingPage,
            onMenuItemClick: (id) -> 
              switch id
                when 'map'
                  dispatch Actions.toggleLandingPage()
                when 'new'
                  dispatch Actions.toggleLandingPage()
                  dispatch Actions.showNewEntry()
                when 'landing'
                  dispatch Actions.showInfo null
                  dispatch Actions.toggleLandingPage()
                when V.LOGOUT
                  dispatch Actions.logout()
                  dispatch Actions.showInfo V.LOGOUT
                when V.SUBSCRIBE_TO_BBOX
                  dispatch Actions.showSubscribeToBbox()
                else
                  dispatch Actions.showInfo id
            onChange: (city) ->
              dispatch Actions.setCitySearchText city
              if city and city.length > 3
                dispatch Actions.searchCity()
            content: view.right
            searchText: search.city
            searchError: search.error
            cities: search.cities
            onEscape: -> dispatch Actions.setCitySearchText ''

            onSelection: (city) ->
              if city
                dispatch Actions.setCenter
                  lat: city.lat
                  lng: city.lon
                dispatch Actions.setZoom mapConst.CITY_DEFAULT_ZOOM
                dispatch Actions.toggleLandingPage()
                dispatch Actions.setSearchText ''
                dispatch Actions.finishCitySearch()
            onLogin: (data) ->
                {username, password} = data
                dispatch Actions.login(username, password)
            onRegister: (data) ->
                {username, password, email} = data
                dispatch Actions.register(username, password, email)
            loggedIn: loggedIn
            user: user
            onDeleteAccount: -> dispatch Actions.deleteAccount()

        if view.modal?
          React.createElement Modal, { view, dispatch }

        div className:"left #{if view.showLeftPanel and not view.menu then 'opened' else 'closed'}",

          div className: "search integrated #{
            if view.left in [V.RESULT] then 'open' else 'closed'
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
                dispatch Actions.setSearchText txt
                dispatch Actions.search()
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
                      t "addEntry"
                when V.ENTRY
                  [
                    li
                      onClick: -> 
                        dispatch Actions.setCurrentEntry null, null
                        dispatch Actions.showSearchResults()
                        dispatch Actions.setCenterInUrl map.center
                      key: "back"
                      className:"pure-u-1-2",
                        i className: "fa fa-chevron-left"
                        t "entryForm.back"
                    li
                      onClick: -> dispatch Actions.editCurrentEntry()
                      key: "edit"
                      className:"pure-u-1-2",
                        i className: "fa fa-pencil"
                        t "entryForm.edit"
                  ]

                when V.EDIT, V.NEW
                  [
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
                        t "entryForm.cancel"
                    li
                      key: "save"
                      className:"pure-u-1-2",
                      onClick: (=>
                        @refs.form.submit()
                      ),
                        i className: "fa fa-floppy-o"
                        t "entryForm.save"
                  ]
                when V.NEW_RATING
                  [
                    li
                      key: "cancel"
                      className:"pure-u-1-2",
                      onClick: (->
                        dispatch initialize RATING.id, {}, RATING.fields
                        dispatch Actions.cancelRating()
                      ),
                        i className: "fa fa-ban"
                        t "ratingForm.cancel"
                    li
                      key: "save"
                      className:"pure-u-1-2",
                      onClick: (=>
                        @refs.rating.submit()
                      ),
                        i className: "fa fa-floppy-o"
                        t "ratingForm.save-rating"
                  ]
                when V.SUBSCRIBE_TO_BBOX
                  if user.subscriptionExists
                    [
                      li
                        key: "back"
                        className:"pure-u-1-2",
                        onClick: (->
                          dispatch Actions.showSearchResults()
                        ),
                          i className: "fa fa-chevron-left"
                          t "subscribeToBbox.back"
                      li
                        key: "save"
                        className:"pure-u-1-2",
                        onClick: (=>
                          dispatch Actions.subscribeToBbox(map.bbox, true)
                        ),
                          i className: "fa fa-envelope"
                          t "subscribeToBbox.edit"
                      li
                        key: "delete"
                        className:"pure-u-1-1",
                        onClick: (->
                          dispatch Actions.unsubscribeFromBboxes(user.id)
                        ),
                          i className: "fa fa-trash"
                          t "subscribeToBbox.unsubscribe"
                    ]
                  else
                    [
                      li
                        key: "back"
                        className:"pure-u-1-2",
                        onClick: (->
                          dispatch Actions.showSearchResults()
                          dispatch Actions.setCenterInUrl map.center
                        ),
                          i className: "fa fa-chevron-left"
                          t "subscribeToBbox.back"
                      li
                        key: "save"
                        className:"pure-u-1-2",
                        onClick: (=>
                          dispatch Actions.subscribeToBbox(map.bbox, false)
                        ),
                          i className: "fa fa-envelope"
                          t "subscribeToBbox.subscribe"
                    ]

          div className: "content-wrapper",

            switch view.left

              when V.RESULT
                div className: "result",
                  React.createElement ResultList,
                    waiting     : waiting_for_search_results
                    entries     : resultEntries
                    ratings     : ratings
                    highlight   : highlight
                    onClick     : (id, center) -> dispatch Actions.setCurrentEntry id, center
                    onMouseEnter: (id) -> dispatch Actions.highlight id
                    onMouseLeave: (id) -> dispatch Actions.highlight()
                    moreEntriesAvailable: search.moreEntriesAvailable
                    onMoreEntriesClick: () -> dispatch Actions.showAllEntries()

                  if cities.length > 0
                    div null,
                      div className: 'group-header', t "search-results.cities"
                      React.createElement CityList,
                        cities  : cities
                        onClick : (city) ->
                          dispatch Actions.setCenter
                            lat: city.lat
                            lng: city.lon,
                          dispatch Actions.setSearchText ''

                  if invisibleEntries and invisibleEntries.length
                    div null,
                      div className: 'group-header', t "search-results.results-out-of-bbox"
                      React.createElement ResultList,
                        entries     : invisibleEntries
                        ratings     : ratings
                        highlight   : highlight
                        onClick     : (id, center) -> dispatch Actions.setCurrentEntry id, center
                        onMouseEnter: (id) -> dispatch Actions.highlight id
                        onMouseLeave: (id) -> dispatch Actions.highlight()
              when V.ENTRY
                div className: "content",
                  React.createElement EntryDetails,
                    entry   : entries[search.current] || null
                  React.createElement Ratings,
                    entry   : entries[search.current] || null
                    ratings : (if entries[search.current] then (entries[search.current].ratings || []) else []).map((id) -> ratings[id])
                    onRate  : (id) => dispatch Actions.showNewRating id

              when V.EDIT, V.NEW
                div className: "content",
                  React.createElement EntryForm,
                    ref: 'form'
                    isEdit: form[EDIT.id]?.kvm_flag_id?
                    license: entries[search.current]?.license
                    onSubmit: (data) ->
                      dispatch Actions.saveEntry
                        id          : form[EDIT.id]?.kvm_flag_id
                        title       : data.title
                        description : data.description
                        tags        : data.tags?.split(',')
                        homepage    : data.homepage
                        telephone   : data.telephone
                        lat         : Number data.lat
                        lng         : Number data.lng
                        street      : data.street
                        city        : data.city
                        email       : data.email
                        zip         : data.zip
                        version     : (form[EDIT.id]?.values?.version or 0) + 1
                        categories  : [data.category]
              when V.NEW_RATING
                div className: "content",
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
                    contextToExplain: explainRatingContext
                    selectedContext: selectedContext
                    changeContext: (ratingContext) ->
                      dispatch Actions.explainRatingContext(ratingContext)
              when V.WAIT
                div className: "content",
                  React.createElement Message,
                    iconClass: "fa fa-spinner fa-pulse"
                    message: " lade Daten vom Server ..."
                    buttonLabel: t "loading-entries.cancel"
                    onCancel: ->
                      dispatch Actions.cancelWait()
              when V.IO_ERROR
                div className: "content",
                  React.createElement Message,
                    iconClass: "fa fa-exclamation-triangle"
                    message: t "io-error.message"
                    buttonLabel: t "io-error.close"
                    onCancel: ->
                      dispatch Actions.closeIoErrorMessage()
              when V.SUBSCRIBE_TO_BBOX
                div className: "content subscribe-to-bbox",
                  React.createElement SubscribeToBbox,
                    subscriptionExists: user.subscriptionExists
        div className:"hide-sidebar",
          button
            onClick: (-> if view.showLeftPanel then dispatch Actions.hideLeftPanel() else dispatch Actions.showLeftPanel()),
            i className: "fa fa-angle-double-#{
                  if view.showLeftPanel then 'left' else 'right'
                }"
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
            entries       : resultEntries
            ratings       : ratings
            onClick       : (latlng) -> dispatch Actions.setMarker latlng
            onMarkerClick : (id) -> 
              dispatch Actions.setCurrentEntry id, null
              dispatch Actions.showLeftPanel()
            onMoveend     : (coordinates) ->
              dispatch Actions.onMoveend(coordinates, map.center)
            onZoomend     : (coordinates) ->
              dispatch Actions.onZoomend(coordinates, map.zoom)
            onLocate      : -> dispatch Actions.showOwnPosition()
            showLocateButton : true
              
module.exports = translate('translation')(pure(Main))
