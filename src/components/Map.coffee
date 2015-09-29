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
    entries   : T.array
    highlight : T.array
    center    : T.object
    zoom      : T.number
    marker    : T.object
    onClick   : T.func
    onMoveend : T.func
    onZoomend : T.func

  getIconById: (id) ->
    switch id
      when INITIATIVE then VMIcons.initiative
      when EVENT      then VMIcons.event
      when COMPANY    then VMIcons.company
      else                 VMIcons.unknown

  render: ->

    markers = []
    { entries, highlight, onMoveend, onZoomend, onClick } = @props

    if entries?.length > 0
      for e in entries
        markers.push React.createElement Marker,
          key: e.id
          position:
            lat: e.lat
            lng: e.lon
          opacity:
            if (h = highlight).length > 0
              if e.id in h then 1 else 0.3
            else 1
          icon: @getIconById e.categories?[0]

    React.createElement Map,
      center    : @props.center
      zoom      : @props.zoom
      className : "map",
      onLeafletMoveend: (ev) -> onMoveend ev.target.getCenter()
      onLeafletZoomend: (ev) -> onZoomend ev.target.getZoom()
      onLeafletClick: (ev) -> onClick ev.latlng
      React.createElement TileLayer,
        url: "http://{s}.tile.osm.org/{z}/{x}/{y}.png"
        attribution: OSM_ATTR
      markers
      if (p = @props.marker)?
        React.createElement Marker,
          position  : p
          icon      : @getIconById parseInt @props.category
