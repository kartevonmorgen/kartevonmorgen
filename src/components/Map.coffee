# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

require "./Map.styl"

React     = require "react"
leaflet   = require "react-leaflet"
VMIcons   = require "vm-leaflet-icons"
T         = React.PropTypes
PureMixin = require "react-pure-render/mixin"

{ NAMES, CSS_CLASSES, IDS }    = require "../constants/Categories"
{ INITIATIVE, EVENT, COMPANY } = IDS

OSM_ATTR = '&copy; <a class="osm attr"' +
           ' href="http://osm.org/copyright">OpenStreetMap</a>'

{ Map, TileLayer, Marker } = leaflet

{
  div,
  header,
  i,
  a,
  ul,
  li
} = React.DOM

module.exports = React.createClass

  displayName: "Map"

  mixins: [ PureMixin ]

  propTypes:
    entries       : T.array
    highlight     : T.array
    center        : T.object
    zoom          : T.number
    marker        : T.object
    onClick       : T.func
    onMoveend     : T.func
    onZoomend     : T.func
    onMarkerClick : T.func

  getIconById: (id) ->
    switch id
      when INITIATIVE then VMIcons.initiative
      when EVENT      then VMIcons.event
      when COMPANY    then VMIcons.company
      else                 VMIcons.unknown

  componentDidMount: ->
    # workaround due to a bug in react-leaflet:
    if (map = @refs.map)?
      map.fireLeafletEvent 'load', map
      map.getLeafletElement().addControl(L.control.zoom position: 'bottomright')
      @props.onMoveend @getMapCoordinates()

  getMapCoordinates: ->
    m = @refs.map.getLeafletElement()
    center: m.getCenter()
    bbox  : m.getBounds()
    zoom  : m.getZoom()

  render: ->

    markers = []
    {
      entries,
      highlight,
      onMoveend,
      onZoomend,
      onClick,
      onMarkerClick
    } = @props

    if entries?.length > 0
      for e in entries then do (e) =>
        markers.push React.createElement Marker,
          onClick: -> onMarkerClick e.id
          key: e.id
          position:
            lat: e.lat
            lng: e.lng
          opacity:
            if (h = highlight).length > 0
              if e.id in h then 1 else 0.3
            else
              1
          icon: @getIconById e.categories?[0]

    React.createElement Map,
      style            : display: "flex", flex: "1 1 100%"
      ref              : 'map'
      center           : @props.center
      zoom             : @props.zoom
      zoomControl      : false
      className        : "map",
      onLeafletMoveend : (e) => onMoveend @getMapCoordinates()
      onLeafletZoomend : (e) => onZoomend @getMapCoordinates()
      onLeafletClick   : (e) -> onClick e.latlng
      React.createElement TileLayer,
        url: "http://{s}.tile.osm.org/{z}/{x}/{y}.png"
        attribution: OSM_ATTR
      markers
      if (p = @props.marker)?
        React.createElement Marker,
          position  : p
          icon      : @getIconById parseInt @props.category
