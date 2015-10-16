# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React = require "react"
Pure  = require "react-pure-render/mixin"
T     = React.PropTypes

REPOSITORY = 'https://github.com/flosse/kartevonmorgen'

{ div, p, a,  h3, h4, br }  = React.DOM

module.exports = React.createClass

  displayName: "Info"

  propTypes:
    clientVersion : T.string
    serverVersion : T.string

  mixins: [Pure]

  render: ->
    div className: "info",
      h3 null, "Über die Karte von Morgen"
      h4 null,
        "Die Welt steckt voller Entdecker."
        br null
        "Und voller Orte, die darauf warten entdeckt zu werden."

      p null,
        """
        von morgen fördert Menschlichkeit, Umweltfreundlichkeit und
        gemeinsames Handeln ‐ kurz gesagt:
        Alles was glücklich macht.
        """
      p null,
        """
        Mit der Karte von morgen, einer Website und App, sollen Menschen
        zusammen gebracht werden, die Gutes tun wollen, und Projekte,
        diebereits Gutes schaffen.
        Die interaktive Karte zeigt den Nutzern Orte in Ihrer Umgebung,
        die sich schon heute für eine Welt von morgen einsetzen.
        """
      h4 null, "Open Source"
      p null,
        """
        Wir wollen mit gutem Beispiel vorangehen und entwickeln daher
        die Software transparent und offen.
        Den Quellcode des Gemeinschaftsprojekts findest du unter:
        """
      p null, a href: REPOSITORY, REPOSITORY

      p className: "version",
        "Version dieses Clients: v#{@props.clientVersion}"
      if (sv = @props.serverVersion)?
        p className: "version",
          "Version des Servers: v#{sv}"
