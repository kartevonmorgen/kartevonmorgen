# Copyright (C) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

C       = require "./constants/ActionTypes"
WebAPI  = require "./WebAPI"
{ initialize, stopSubmit } = require "redux-form"

Actions =

  setSearchText: (txt) ->
    type    : C.SET_SEARCH_TEXT
    payload : txt

  search: ->
    (dispatch, getState) ->
      s = getState().search
      cats = s.categories

      return if (not s.text?) or (s.text.length < 1) or (cats.length < 1)

      WebAPI.search s.text, cats, (err, res) ->
        dispatch
          type    : C.SEARCH_RESULT
          payload : err or res?.body
          error   : err?

        if (Array.isArray (ids = res?.body)) and ids.length > 0
          { entries } = getState()
          fetch_ids = (id for id in ids when not entries[id]?)
          dispatch Actions.getEntries fetch_ids if fetch_ids.length > 0

  getEntries: (ids=[]) ->
    (dispatch) ->
      WebAPI.getEntries ids, (err, res) ->
        dispatch
          type    : C.ENTRIES_RESULT
          payload : err or res?.body
          error   : err?

  getAllCategories: ->
    (dispatch) ->
      WebAPI.getAllCategories (err, res) ->
        dispatch
          type    : C.CATEGORIES_RESULT
          payload : err or res?.body
          error   : err?

  toggleSearchCategory: (category) ->
    type: C.TOGGLE_SEARCH_CATEGORY
    payload: category

  toggleMenu: ->
    type: C.TOGGLE_MENU

  showNewEntry: ->
    type: C.SHOW_NEW_ENTRY

  showInfo: ->
    type: C.SHOW_INFO

  closeNewEntry: ->
    type: C.CLOSE_NEW_ENTRY

  saveNewEntry: (e) ->
    (dispatch) ->
      WebAPI.saveNewEntry e, (err, res) ->
        unless err?
          dispatch initialize 'new', {}
          dispatch
            type    : C.NEW_ENTRY_RESULT
            payload : err or res?.body
            error   : err?
        else
          dispatch stopSubmit 'new', { _error: err }

  setMarker: (latlng) ->
    type: C.SET_MARKER
    payload: latlng

  setCenter: (center) ->
    type: C.SET_MAP_CENTER
    payload: center

  setZoom: (zoom) ->
    type: C.SET_ZOOM
    payload: zoom

  setCurrentEntry: (id) ->
    type: C.SET_CURRENT_ENTRY
    payload: id

  highlight: (id=[]) ->
    id = [id] unless Array.isArray id
    type: C.HIGHLIGHT_ENTRIES
    payload: id

module.exports = Actions
