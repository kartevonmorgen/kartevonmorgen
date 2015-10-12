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
      m = getState().map
      cats = s.categories
      sw = m.bbox.getSouthWest()
      ne = m.bbox.getNorthEast()
      bbox = [sw.lat, sw.lng, ne.lat, ne.lng]

      return if (not s.text?) or (s.text.length < 1) or (cats.length < 1)

      WebAPI.search s.text, cats, bbox, (err, res) ->
        dispatch
          type    : C.SEARCH_RESULT
          payload : err or res?.body?.visible
          error   : err?

        if (Array.isArray (ids = res?.body?.visible)) and ids.length > 0
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

  showImprint: ->
    type: C.SHOW_IMPRINT

  closeNewEntry: ->
    type: C.CLOSE_NEW_ENTRY

  saveEntry: (e) ->
    saveFunc = if e?.id then WebAPI.saveEntry else WebAPI.saveNewEntry
    (dispatch, getState) ->
      saveFunc e, (err, res) ->
        unless err?
          dispatch initialize 'edit', {}
          dispatch Actions.getEntries [res?.text] if !err
          dispatch
            type    : C.NEW_ENTRY_RESULT
            payload : res?.text
          dispatch
            type    : C.SET_CURRENT_ENTRY
            payload : getState().search.result.length - 1
        else
          dispatch stopSubmit 'edit', { _error: err }

  setMarker: (latlng) ->
    type: C.SET_MARKER
    payload: latlng

  setCenter: (center) ->
    type: C.SET_MAP_CENTER
    payload: center

  setZoom: (zoom) ->
    type: C.SET_ZOOM
    payload: zoom

  setBbox: (bbox) ->
    type: C.SET_BBOX
    payload: bbox

  setCurrentEntry: (id) ->
    type: C.SET_CURRENT_ENTRY
    payload: id

  highlight: (id=[]) ->
    id = [id] unless Array.isArray id
    type: C.HIGHLIGHT_ENTRIES
    payload: id

  editCurrentEntry: () ->
    (dispatch, getState) ->
      dispatch type: C.SHOW_IO_WAIT
      WebAPI.getEntries [getState().search.current], (err, res) ->
        unless err?
          dispatch
            type    : C.ENTRIES_RESULT
            payload : res?.body
          state = getState()
          dispatch
            type: C.EDIT_CURRENT_ENTRY
            payload : state.entries[state.search.current]
        else
          dispatch type: C.SHOW_MESSAGE, payload: 'could connect to server'

module.exports = Actions
