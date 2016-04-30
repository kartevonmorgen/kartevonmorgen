# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
T         = React.PropTypes
Pure      = require "react-pure-render/mixin"
logo      = require "../img/logo.png"
CityList  = require "./CityList"
Info  = require "./Info"
Imprint  = require "./Imprint"
LandingExplain   = require "./LandingExplain"
URLs  = require "../constants/URLs"
V  = require "../constants/PanelView"

{ div, h1, h2, h3, h4, br, input, button, ul, li, a, img, p, strong, hr } = React.DOM

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
                  a onClick: (-> onClick V.DONATE), href:"#", className:"pure-menu-link", "Spenden"
                li className:"pure-menu-item", "|"
                li className:"pure-menu-item",
                  a onClick: (-> onClick V.INFO), href:"#", className:"pure-menu-link", "Info"

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
        if content is null
          a href: "#tutorial", className: "circleTutorial",
            strong null,
              "Tutorial",
              div style: paddingTop: "10px",
                "v"
        div className: "content",

          if content is null
            React.createElement LandingExplain,
              onClick: onClick
          else
            div null,
              if content is null
                div
                  className: "logo"
                  onClick: ->
                    dispatch Actions.toggleLandingPage()
                    dispatch Actions.toggleMenu()
                div className:"content-toggle",
                  button
                    onClick: (-> dispatch Actions.showMenu()),
                    i className: "fa fa-bars"
              div className: "menu-content",
                if content is null
                  React.createElement Menu,
                    onClick : (key) -> ( ->
                      dispatch Actions.showInfo key
                      dispatch Actions.getServerInfo())
                    items:
                      MAP_INFO:
                        label   : "Über die Karte"
                        active  : content is V.MAP_INFO
                      DONATE:
                        label   : "Spenden"
                        active  : content is V.DONATE
                      JOIN:
                        label   : "Mitmachen"
                        active  : content is V.JOIN
                      INFO:
                        label   : "Info"
                        items:
                          INFO:
                            label   : "Das Projekt"
                            active  : content is V.INFO
                          SUPPORTERS:
                            label   : "Unterstützer"
                            active  : content is V.PARTNER
                          OPEN_SOURCE:
                            label   : "Open Source"
                            active  : content is V.OPEN_SOURCE
                else
                  switch content
    # TODO: move it all into the 'Info' component
                    when V.MAP_INFO
                      div null,
                        h3 null,
                          "Die Welt steckt voller Entdecker."
                          br null
                          "Und voller Orte, die darauf warten entdeckt zu werden."
                        p null
                          """
                          Unsere interaktive Karte zeigt dir Orte in deiner Umgebung,
                          an denen man sich schon heute für eine Welt von morgen einsetzt.
                          """
                        p null
                          """
                          Du hast eine Initiative, für die du Mitstreiter suchst?
                          Du kennst ein Unternehmen, das nachhaltig wirtschaftet?
                          """
                        p null
                          """
                          Auf unserer Website kannst du andere darauf
                          aufmerksam machen – und dich so für eine Sache
                          einsetzen, die dir persönlich am Herzen liegt.
                          """

                    when V.INFO
                      React.createElement Info

                    when V.OPEN_SOURCE
                      div className: "info",
                        h3 null, "Wir lieben Open Source!"
                        p null,
                          """
                          Wir wollen mit gutem Beispiel vorangehen und entwickeln daher
                          die Software transparent und offen.
                          Den Quellcode des Gemeinschaftsprojekts findest du unter:
                          """
                        p null, a href: URLs.REPOSITORY.link, URLs.REPOSITORY.name

                        p className: "version",
                          "Version dieses Clients: v#{pkg.version}"
                        if (sv = @props.server?.version)?
                          p className: "version",
                            "Version des Servers: v#{sv}"


                    when V.DONATE
                      div null,
                        h3 null, "Hier kannst du doppelte Wirkung zeigen."
                        p null,
                          """
                          Unsere Crowdfunding Kampagne auf www.betterplace.org
                          wird von Ashoka und dem Softwareunternehmen SAP
                          unterstützt.
                          Jede Spende bis zu 200 Euro wird in den nächsten
                          Wochen live und direkt verdoppelt.
                          """

                        p null,
                          """
                          Die Spenden sollen für die Weiterentwicklung der
                          Plattform von morgen verwendet werden.
                          Verschieden Feature sind in Planung,
                          u.a. die Themenkarte zur Einbettung in eigene
                          Webseiten und den Positivfaktoren der
                          gemeinwohl-orientierten Bewertung der einzelnen Orte.
                          """
                        p null,
                          "Hier geht es zur Kampagne: "
                          a href: URLs.DONATE.link, URLs.DONATE.name
                        p null,
                          """
                          Wir freuen uns über jeden kleinen und großen Beitrag
                          und hoffen auch bald in deiner Stadt verfügbar zu
                          sein.
                          """
                        p null, "Alles Liebe, das Team von morgen"

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

                    when V.TEAM
                      div null,
                        p null, "Anja"
                        p null, "Benedikt"
                        p null, "Florian"
                        p null, "Frederik"
                        p null, "Helmut"
                        p null, "Lisa"
                        p null, "Markus"
                        p null, "Peter"
                        p null, "Thao"
                        p null, "Xueqian"
                        p null, "Tomas"
                    when V.SUPPORTERS
                      div null,
                        h3 null, "Mit Unterstützung von:"

                        p null, "Ashoka"

                        p null, "Heinrich Böll Stiftung"

                        p null, "Social Impact Hub"

                        p null, "Think Big"

                    when V.IMPRINT
                      React.createElement Imprint
              div className:"menu-footer",
                a onClick: (-> onClick V.IMPRINT),
                  "Kontakt // Impressum"

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

