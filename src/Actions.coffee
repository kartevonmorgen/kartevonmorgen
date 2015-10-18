# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

T       = require "./constants/ActionTypes"
WebAPI  = require "./WebAPI"
{ initialize, stopSubmit } = require "redux-form"

Actions =

  setSearchText: (txt) ->
    type    : T.SET_SEARCH_TEXT
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
          type    : T.SEARCH_RESULT
          payload : err or res
          error   : err?

        ids = if Array.isArray (res?.visible)
                if Array.isArray(res?.invisible) then res.visible.concat(res.invisible) else res.visible
              else res?.invisible
        if (Array.isArray (ids)) and ids.length > 0
          { entries } = getState()
          fetch_ids = (id for id in ids when not entries[id]?)
          dispatch Actions.getEntries fetch_ids if fetch_ids.length > 0

  getEntries: (ids=[]) ->
    (dispatch) ->
      WebAPI.getEntries ids, (err, res) ->
        dispatch
          type    : T.ENTRIES_RESULT
          payload : err or res
          error   : err?

  getAllCategories: ->
    (dispatch) ->
      WebAPI.getAllCategories (err, res) ->
        dispatch
          type    : T.CATEGORIES_RESULT
          payload : err or res
          error   : err?

  getServerInfo: ->
    (dispatch) ->
      WebAPI.getServerInfo (err, res) ->
        dispatch
          type    : T.SERVER_INFO_RESULT
          payload : err or res
          error   : err?

  toggleSearchCategory: (category) ->
    type: T.TOGGLE_SEARCH_CATEGORY
    payload: category

  toggleMenu: ->
    type: T.TOGGLE_MENU

  showNewEntry: ->
    type: T.SHOW_NEW_ENTRY

  showInfo: ->
    type: T.SHOW_INFO

  showImprint: ->
    type: T.SHOW_IMPRINT

  closeNewEntry: ->
    type: T.CLOSE_NEW_ENTRY

  saveEntry: (e) ->
    saveFunc = if e?.id then WebAPI.saveEntry else WebAPI.saveNewEntry
    (dispatch, getState) ->
      saveFunc e, (err, res) ->
        if err
          dispatch stopSubmit 'edit', { _error: err }
        else
          id = e?.id or res
          WebAPI.getEntries [id], (err, res) ->
            dispatch
              type    : T.ENTRIES_RESULT
              payload : err or res
              error   : err?
            dispatch initialize 'edit', {}
            dispatch
              type    : T.SET_CURRENT_ENTRY
              payload : id
            unless e?.id
              dispatch
                type    : T.NEW_ENTRY_RESULT
                payload : id

  setMarker: (latlng) ->
    type: T.SET_MARKER
    payload: latlng

  setCenter: (center) ->
    type: T.SET_MAP_CENTER
    payload: center

  setZoom: (zoom) ->
    type: T.SET_ZOOM
    payload: zoom

  setBbox: (bbox) ->
    type: T.SET_BBOX
    payload: bbox

  setCurrentEntry: (id) ->
    type: T.SET_CURRENT_ENTRY
    payload: id

  highlight: (id=[]) ->
    id = [id] unless Array.isArray id
    type: T.HIGHLIGHT_ENTRIES
    payload: id

  editCurrentEntry: () ->
    (dispatch, getState) ->
      dispatch type: T.SHOW_IO_WAIT
      WebAPI.getEntries [getState().search.current], (err, res) ->
        unless err?
          dispatch
            type    : T.ENTRIES_RESULT
            payload : res
          state = getState()
          dispatch
            type: T.EDIT_CURRENT_ENTRY
            payload : state.entries[state.search.current]
        else
          dispatch type: T.SHOW_MESSAGE, payload: 'could connect to server'

module.exports = Actions
