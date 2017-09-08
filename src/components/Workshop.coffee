# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>
# Geändert durch Helmut 2017
React    = require "react"
T        = React.PropTypes
URLs     = require "../constants/URLs"
pkg      = require "../../package.json"
{ pure } = require "recompose"

{ div, p, a, h2, h3, h4, br, button, i} = React.DOM

module.exports = pure React.createClass

  displayName: "Workshops"

  render: ->
    div className: "info",
      h3 null,
        "Workshops von morgen"
        br null
        "Gemeinsam mit unserem Partner, dem gemeinnützigen Verein Ideen Hoch Drei und deren Bildungsprogramm „Bildungsagenten” bieten wir Workshops zu verschiedenen Themen an," +
        "u.a. Solidarisches Wirtschaften, Friedliches Ressourcenteilen und Globale Zusammenarbeit.  Stellt uns gerne eine Anfrage und wir konzipieren unsere Workshops nach euren Wünschen!"

      h2 null, "Die Bildungsagenten stellen sich vor:"

      p null,
        """
        Die Ideenwerkstatt Bildungsagenten ist eine Initiative von ehemaligen internationalen Freiwilligen.
        Wir wollen globale- und wirtschaftliche Zusammenhänge in interaktiven Workshops an Schulen und mit
        Jugendgruppen erlebbar zu machen und durch künstlerische Aktionen ins öffentliche Bewusstsein zu bringen.
        Unsere Vision ist eine friedliche, bunte Welt in der sich alle Menschen frei begegnen können.
        """

      p null,
        """
        Vorallem entdecken unsere Teilnehmer_Innen in Workshops und Vorträgen positive Beispiele und
        erfolgreiche Projekte aus der ganzen Welt und entwickeln durch unsere interaktiven Methoden und
        der Begleitung im Projektmanagement eigene Leuchtturmprojekte auf regionaler Ebene.
        Dazu gehört das Besuchen von Initativen auf der Karte von morgen,
        das verzeichnen der eigenen Region oder das Gründen von Projekten
        und die dann auf der Karte von morgen erscheinen werden.
        """

      p null,
        """
        Auf der Suche nach der Welt von morgen? Suchen Sie mit uns gemeinsam!
        Hier geht es zur Webseite der Bildungsagenten: www.bildungsagenten.org
        Und hier beschreiben wir Hintergründe zum Projekt Karte von morgen: www.bildungsagenten.org/kartevonmorgen
        """

      p className: "version",
        "Version dieses Clients: v#{pkg.version}"
      if (sv = @props.server?.version)?
        p className: "version",
          "Version des Servers: v#{sv}"
