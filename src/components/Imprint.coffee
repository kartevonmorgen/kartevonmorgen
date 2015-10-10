# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React = require "react"
Pure  = require "react-pure-render/mixin"

{ div, p, a,  h3, br }  = React.DOM

module.exports = React.createClass

  displayName: "Imprint"

  mixins: [Pure]

  render: ->
    div className: "info",
      h3 null, "Impressum"

      p null,
        "Thao Tran", br null,
        "Gleimstraße 27", br null,
        "10437 Berlin", br null,
        a({href:"mailto:info@kartevonmorgen.org"}, "info@kartevonmorgen.org")

