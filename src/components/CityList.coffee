# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React    = require "react"
Actions  = require "../Actions"
{ pure } = require "recompose"

{ div, ul, li, span, i } = React.DOM

CityListElement = pure React.createClass

  displayName: "CityListElement"

  render: ->
    { city, onClick } = @props
    li
      onClick: (ev) -> ev.preventDefault(); onClick city
      div className: "pure-g",
        div className: "pure-u-23-24",
          div null,
            if (c = city.address?.city)?
              span className: "city",c
            else
              c = city.address?.county or ''
              v = if (x=city.address.village)? then x + " " else ''
              [
                span key: 0, className: "prefix", "Landkreis"
                span key: 1, className: "county", v + c
              ]
          div null,
            span className: "state",  city.address?.state
            span className: "country", city.address?.country
        div className: "pure-u-1-24 chevron",
          i className: "fa fa-chevron-right"

module.exports = pure React.createClass

  displayName: "CityList"

  render: ->
    { cities } = @props
    lis = for c in cities
      React.createElement CityListElement,
        city        : c
        key         : c.osm_id
        onClick     : @props.onClick
    div className: "city-list",
      ul null, lis
