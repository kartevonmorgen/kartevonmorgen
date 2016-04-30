# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
T         = React.PropTypes
Pure      = require "react-pure-render/mixin"

{ div, h1, h2, h3, h4, br, input, button, ul, li, a, img, p, strong, hr } = React.DOM

module.exports = React.createClass

  displayName: "LandingExplain"

  mixins: [Pure]

  propTypes:
    searchText  : T.string

  render: ->
    { searchText, cities, onSelection } = @props
    div className: "explain",
      a href: "#tutorial", className: "circleTutorial",
        strong null,
          "Tutorial",
          div style: paddingTop: "10px",
            "v"
      div className: "content",
        h2 null, "So funktioniert`s"
        div
        img style: {float: "left"}, src: require "../img/lp_illu1.jpg"
        div style: {marginTop: "200px"},
          h3 null, "1. Entdecke Deine Orte von ihren besten Seiten"
          p null, "Unsere Karte zeigt dir zukunftsorientierte Initiativen," +
              " Unternehmen und Events direkt in Deiner Umgebung"
        div style: clear: "both"
        img style: {float: "right"}, src: require "../img/lp_illu2.jpg"
        div style: {marginTop: "200px"},
          h3 null, "2. Sei dabei!"
          p null, "Nimm Kontakt auf und schau vorbei!"
        div style: clear: "both"
        img style: {float: "left"}, src: require "../img/lp_illu3.jpg"
        div style: {marginTop: "200px"},
          h3 null, "3. Gestalte Deine Gemeinschaft"
          p null, "Sehe das Leben mit motivierten Augen und erfahre " +
              "bereits jetzt eine Welt von morgen."
        div style: clear: "both"
        hr id: "tutorial"

        h2 null, "Wie funktioniert die Karte von morgen?"
        div null,
          p null, "Suchbegriff in das Suchfeld eingeben"
          p null, "bei Bedarf nach Kategorien filtern (Initiativen, " +
              "Events, Unternehmen)"
          p null, "Suchergebnisse ansehen und auswählen"
          p null, "Visitenkarten ansehen"
          p null, "Orte eintragen und editieren"
          br null,
            div style: overflow: "visible",
              img style: {width: "100%"}, src: require "../img/postkarte.jpg"

        h2 null, "Worum geht es hier?"
        p null,
          "Die Welt steckt voller Entdecker. Und voller Orte,"
          br null
          "die darauf warten entdeckt zu werden."
        p null,
          "von morgen fördert Kreativität, Umweltfreundlichkeit und"
          br null
          "gemeinsames Handeln im bunten Feld des gesellschaftlichen Wandels."
          br null
          "Das Ziel: eine menschliche Zukunft."

        hr null,
        h2 null,
          "Mach mit und gestalte deine Welt von morgen",
        div style: float: "left", paddingTop: "1px",
          h4 null,
            "Unterstütze",
            br null,
              "unser Projekt"
          p null, ""
          a href: "#donate", "mehr erfahren"
        div style: float: "right", paddingTop: "1px",
          h4 null,
            "Wir suchen Regional-",
            br null,
              "und Themenpiloten"
          p null, ""
          a href: "#pilot", "mehr erfahren"
        div style: paddingTop: "1px",
          h4 null,
            "Werde Teil",
            br null,
              "unseres Teams"
          p null, ""
          a href: "#join", "mehr erfahren"

        hr null,
          h2 null, "Das Team von morgen"

          div className: "teamMember",
            div className: "circle pink"
            div null, "Helmut Wolman -"
            div null, "Project Management"
          div className: "teamMember",
            div className: "circle blue"
            div null, "Benedikt Roth -"
            div null, "Concept & Strategy"
          div className: "teamMember",
            div className: "circle green"
            div null, "Frederik Schütz -"
            div null, "Business & Finance"
          div className: "teamMember",
            div className: "circle yellow"
            div null, "Tomas Gerlitz -"
            div null, "Business & Finance"
          div className: "teamMember",
            div className: "circle green"
            div null, "Lisa Stehr -"
            div null, "Concept & Strategy"
          div className: "teamMember",
            div className: "circle berry"
            div null, "Xueqian Chen -"
            div null, "PR & Marketing"
          div className: "teamMember",
            div className: "circle yellow"
            div null, "Thao Tran - Brand &"
            div null, "Project Management"
          div className: "teamMember",
            div className: "circle grayBlue"
            div null, "Peter Gericke -"
            div null, "Graphic Design"
          div className: "teamMember",
            div className: "circle blue"
            div null, "Anja Dannemann -"
            div null, "Graphic Design"
          div className: "teamMember",
            div className: "circle green"
            div null, "Markus Kohlhase -"
            div null, "Software Development"
          div className: "teamMember",
            div className: "circle pink"
            div null, "Florian Jostock -"
            div null, "Software Development"
          div className: "teamMember",
            div className: "circle blue"
            div null, "Wir freuen uns über neue"
            div null, "Teammitglieder!"

        hr null,

        h2 null,
          "Unsere Partner",
        a href:"http://germany.ashoka.org",
          img className: "partnerLogo", src: require "../img/Pep.png"
        a href:"https://www.boell.de/de",
          img className: "partnerLogo", src: require "../img/Heinrich_Böll.jpg"
        a href:"https://www.think-big.org",
          img className: "partnerLogo", style: {padding: "0 20px 0 10px"}, src: require "../img/Think_Big.jpg"
        a href:"http://slowtec.de",
          img className: "partnerLogo", src: require "../img/Slowtec.png"
        hr null
