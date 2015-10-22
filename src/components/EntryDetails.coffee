# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
PureMixin = require "react-pure-render/mixin"
Address   = require "./AddressLine"

{ NAMES, CSS_CLASSES } = require "../constants/Categories"

{ div, p, h3, button, span, i, a } = React.DOM

module.exports = React.createClass

  displayName: "EntryDetails"

  mixins: [ PureMixin ]

  render: ->
    { entry } = @props
    clz = CSS_CLASSES[entry.categories?[0]]
    div className: "entry-detail #{clz}",
      div className: "category",
        span null, NAMES[entry.categories?[0]]
      div null,
        h3 null, entry.title
        p null, entry.description
        p null,
          if entry.homepage
            div className: "pure-g",
              i className: "pure-u-2-24 fa fa-globe"
              a className: "pure-u-21-24", href: entry.homepage, entry.homepage
          if entry.email
            div className: "pure-g",
              i className: "pure-u-2-24 fa fa-envelope"
              a className: "pure-u-21-24", href: "mailto:#{entry.email}",
                entry.email
          if entry.telephone
            div className: "pure-g",
              i className: "pure-u-2-24 fa fa-phone"
              span className: "pure-u-21-24", entry.telephone
          if entry.street or entry.zip or entry.city
            div className: "address pure-g",
              i className: "pure-u-2-24 fa fa-map-marker"
              div className: "pure-u-21-24",
                React.createElement Address, entry
