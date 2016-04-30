# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
T         = React.PropTypes
Pure      = require "react-pure-render/mixin"
logo      = require "../img/logo.png"
CityList  = require "./CityList"

{ div, h1, h2, h3, h4, br, input, button, ul, li, a, img, p, strong, hr } = React.DOM

module.exports = React.createClass

  displayName: "LandingPage"

  mixins: [Pure]

  propTypes:
    searchText  : T.string
    cities      : T.array
    onChange    : T.func
    onEscape    : T.func
    onSelection : T.func

  onChange: (ev) ->
    return unless (v = ev.target?.value)?
    @props.onChange? v

  onKeyUp: (ev) ->
    ev.preventDefault()
    switch ev.key
      when "Escape" then @props.onEscape?()
      when "Enter"  then @props.onSelection? @props.cities?[0]

  render: ->
    { searchText, cities, onSelection } = @props
    onClick = @props.onMenuItemClick
    div className: "landing",
      div className: "banner",
        div className: "content pure-g",
          div className:"logo pure-u-2-5",
            img src: logo
          div className:"pure-u-3-5",
            div className:"menu pure-menu pure-menu-horizontal",
              ul className:"pure-menu-list",
                li className:"pure-menu-item",
                  a onClick: (-> onClick 'map'), href:"#", className:"pure-menu-link", "Karte"
                li className:"pure-menu-item", "|"
                li className:"pure-menu-item",
                  a onClick: (-> onClick 'new'), href:"#", className:"pure-menu-link", "Eintrag hinzufügen"
                li className:"pure-menu-item", "|"
                li className:"pure-menu-item",
                  a onClick: (-> onClick 'donate'), href:"#", className:"pure-menu-link", "Spenden"
                li className:"pure-menu-item", "|"
                li className:"pure-menu-item",
                  a onClick: (-> onClick 'info'), href:"#", className:"pure-menu-link", "Info"

      div className: "search",
        div className: "content",
          h1 null, "Alles Gute auf einer Karte"
          h2 null, "online vernetzen - offline handeln"
          div className:"place-search",
            div className: "pure-g pure-form",
              input
                className   : "pure-u-1"
                onChange    : @onChange
                onKeyUp     : @onKeyUp
                value       : searchText
                type        : 'text'
                placeholder : "Welchen Ort möchtest Du entdecken?"
              if cities?.length > 0
                div className: "pure-u-1",
                  React.createElement CityList,
                    cities  : cities
                    onClick : onSelection

      div className: "explain",
        a href: "#tutorial", className: "circleTutorial",
          strong null,
            "Tutorial",
          div style: paddingTop: "10px",
            "v"
        div className: "content",
          h3 null,
            "Unsere Partner",
          img className: "partnerLogo", src: require "../img/Pep.png"
          img className: "partnerLogo", src: require "../img/Heinrich_Böll.jpg"
          img className: "partnerLogo", style: {padding: "0 20px 0 10px"}, src: require "../img/Think_Big.jpg"
          hr id: "tutorial",
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
          hr null,

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
      div className: "footer",
        h3 null,
          "Wir zeigen Menschen, die Gutes tun wollen, wo es Gutes gibt."
        p null,
          "Kontakt: "
          a href:"mailto:info@kartevonmorgen.org",
            "info@kartevonmorgen.org"
          br null
          "Social Media: "
          a href:"http://www.facebook.com/vonmorgen",
            "facebook.com/vonmorgen"
        p null,
          a href:"#imprint",
            "Impressum"

