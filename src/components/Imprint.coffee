# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React = require "react"
Pure  = require "react-pure-render/mixin"

{ div, p, a,  h3, br, button, i }  = React.DOM

module.exports = React.createClass

  displayName: "Imprint"

  mixins: [Pure]

  render: ->
    div className: "info",
      h3 null, "Impressum"

      p null,
        "Markus Kohlhase", br null,
        "Julius-Hölder-Str. 48", br null,
        "7597 Stuttgart", br null,
        a({href:"mailto:info@kartevonmorgen.org"}, "info@kartevonmorgen.org")
