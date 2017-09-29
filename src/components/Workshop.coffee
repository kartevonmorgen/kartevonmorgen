# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React    = require "react"
T        = React.PropTypes
URLs     = require "../constants/URLs"
pkg      = require "../../package.json"
{ pure } = require "recompose"

{ div, p, a, h2, h3, h4, br, button, i} = React.DOM

module.exports = pure React.createClass

  displayName: "Hintergrund Infos"

  render: ->
    div className: "info",
    h2 null,
        "Weiterführende Infos zur Karte von morgen"
        br null
    h3 null,
        "Aktuelles"
        br null
        p null
    a href: "", onClick: (-> onClick V.JOIN), ""
        # "Neuigkeiten und aktuelles auf <a href='https://www.facebook.com/vonmorgen'>Facebook</a>"
        # "Fortschrittsberichte auf <a href='https://www.betterplace.org/de/projects/36213/newsroom'>unserem Blog auf Betterplace</a>"
        br null
     h3 null,
        "Hintergründe und Visionen"
        br null
        p null
        "Was will die <a href='http://bildungsagenten.org/kartevonmorgen/'>Karte von morgen?</a>"
        "- Was sind die <a href='http://bildungsagenten.org/kartevonmorgen/2/'>Positivfaktoren?</a>"
        "- Was sind <a href='http://bildungsagenten.org/kartevonmorgen/3/'>Regionalpiloten bzw.  Themenpiloten? Wie nutze ich Widgets?</a>"
        "- Wie kann ich <a href='http://bildungsagenten.org/kartevonmorgen/4/'>mitmachen oder die Karte von morgen unterstützen?</a>"
    img style: {float: "left"}, src: require "../img/Team an Tisch.jpg"
        
    h3 null,
        "Spenden"
        br null
        p null
        "Einfach online Spenden über <a href='https://www.betterplace.org/de/projects/36213>Betterplace</a>"
         br null
        "Etwas Gutes für morgen tun: Die Plattform von morgen finanziert sich über Fördermittel verschiedener Programme 
        und Wettbewerbe aber zum Großteil über Spenden."
        p null
        "Wir, das Team von morgen, arbeiten ehrenamtlich."
        "Wir freuen uns über jeden kleinen und großen Beitrag und hoffen auch bald in deiner Stadt verfügbar zu sein. Auf bald!"
        p null
        "Dankend, das Team von morgen"
    img style: {float: "left"}, src: require "../img/Eam-in-Action.jpg"
    h3 null,
        "Workshops von morgen"
        br null
        "Gemeinsam mit unserem Partner, dem gemeinnützigen Verein Ideen³ e.V. und der „Ideenwerkstatt Bildungsagenten”, 
        bieten wir Workshops zu verschiedenen Themen an.
        www.bildungsagenten.org"
    img style: {float: "left"}, src: require "../img/Slider.jpg "
        p className: "version",
        "Version dieses Clients: v#{pkg.version}"
      if (sv = @props.server?.version)?
        p className: "version",
        "Version des Servers: v#{sv}"
