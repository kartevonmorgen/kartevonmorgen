# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
T         = React.PropTypes
Pure      = require "react-pure-render/mixin"
logo      = require "../img/logo.png"
CityList  = require "./CityList"
Info      = require "./Info"
Workshop  = require "./Workshop"
Imprint   = require "./Imprint"
LandingExplain   = require "./LandingExplain"
URLs  = require "../constants/URLs"
V  = require "../constants/PanelView"

{ div, h1, h2, h3, h4, br, input, button, ul, li, a, img, p, strong, hr, i } = React.DOM

module.exports = React.createClass

  displayName: "LandingPage"

  mixins: [Pure]

  propTypes:
    content     : T.string
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
    { content, searchText, cities, onSelection } = @props
    onClick = @props.onMenuItemClick
    div className: "landing",
      div className: "banner",
        div className: "content pure-g",
          div className:"logo pure-u-2-5",
            a onClick: (-> onClick 'landing'), href:"#",
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
                  a onClick: (-> onClick V.WORKSHOP), href:"#", className:"pure-menu-link", "Workshops"
                li className:"pure-menu-item", "|"
                li className:"pure-menu-item",
                  a href:"https://www.facebook.com/vonmorgen", className:"pure-menu-link", "News"
                li className:"pure-menu-item", "|"
                li className:"pure-menu-item",
                  a onClick: (-> onClick V.INFO), href:"#", className:"pure-menu-link", "Kontakt"
                li className:"pure-menu-item", "|"
                li className:"pure-menu-item",
                  a onClick: (-> onClick V.DONATE), href:"#", className:"pure-menu-link", "Spenden"

      div className: "search",
        div className: "content",
          h1 null, "Alles Gute auf einer Karte"
          div className:"place-search",
            div className: "pure-g pure-form",
              input
                className   : "pure-u-1"
                onChange    : @onChange
                onKeyUp     : @onKeyUp
                value       : searchText
                type        : 'text'
                placeholder : "Welchen Ort möchtest du entdecken?"
              if cities?.length > 0
                div className: "pure-u-1",
                  React.createElement CityList,
                    cities  : cities
                    onClick : onSelection

      div className: "explain",
        if content is null
          a href: "#tutorial", className: "circleTutorial",
            strong null,
              "Tutorial",
              div style: paddingTop: "10px; font-size:12px;",
                i className: "fa fa-chevron-down"
        div className: "content",

          if content is null
            React.createElement LandingExplain,
              onClick: onClick
          else
            switch content

              when V.TEAM
                React.createElement LandingExplain,
                  onClick: onClick
              when V.SUPPORTERS
                React.createElement LandingExplain,
                  onClick: onClick

              when V.IMPRINT
                React.createElement Imprint

              when V.INFO
                React.createElement Info

              when V.WORKSHOP
                React.createElement Workshop

              when V.MAP_INFO
                React.createElement Info

              when V.OPEN_SOURCE
                React.createElement Info

              when V.DONATE
                div null,
                  h2 null, "Etwas Gutes für morgen tun."
                  p null,
                    """
                    Die Plattform von morgen finanziert sich über Fördermittel
                    verschiedener Programme und Wettbewerbe, als auch über Spenden.
                    Wir, das Team von morgen, arbeiten ehrenamtlich.
                    """

                  p null,
                    """
                    Die Beiträge möchten wir für die Weiterentwicklung
                    der Plattform verwenden.
                    Verschieden Features sind in Planung,
                    u.a. die Themenkarte zur Einbettung in eigene
                    Websites und den Positivfaktoren - dem
                    gemeinwohl-orientierten Bewertungssytem der einzelnen Orte.
                    """
                  p null,
                    "Hier geht es zu unserer Crowdfunding-Kampagne: "
                    a href: URLs.DONATE.link, URLs.DONATE.name
                  p null,
                    """
                    Wir freuen uns über jeden kleinen und großen Beitrag
                    und hoffen auch bald in deiner Stadt verfügbar zu
                    sein. Auf bald!
                    """
                  p null, "Dankend, das Team von morgen"

              when V.JOIN
                div null,
                  h3 null, "Werde Teil unseres Teams"

                  p null,
                    """
                    Wir sind ein deutschlandweites Team und immer auf der
                    Suche nach neuen Mitgliedern!
                    Unsere aktuellen Ausschreibungen findest du hier:
                    """
                  p null,
                    a href: URLs.JOB_ADS.link, URLs.JOB_ADS.name
                  p null,
                    """
                    Wir suchen Regional- und Themenpiloten
                    Stark lokal: als direkter Ansprechpartner vor Ort,
                    sicherst du die Qualität der Karteneinträge,
                    organisierst z.B. Aktionen und Workshops und zeigst
                    deine Stadt von ihrer besten Seite!
                    """

                  p null,
                    """
                    Du hast Fragen oder Interesse? Wir freuen uns von dir zu hören:
                    """
                    br null
                    a href: "mailto:netzwerk@kartevonmorgen.org",
                      "netzwerk@kartevonmorgen.org"

      div className: "footer",
        h3 null,
          "Wir zeigen Menschen, die Gutes tun wollen, wo es Gutes gibt."
        p null,
          "Kontakt: "
          a href: URLs.MAIL.link, URLs.MAIL.name
          br null
          "Social Media: "
          a href: URLs.FACEBOOK.link, URLs.FACEBOOK.name,
          br null
          "Open Source: "
          a href: URLs.REPOSITORY.link, URLs.REPOSITORY.name
        p null,
          a href:"#", onClick: (-> onClick V.IMPRINT),
            "Impressum"

