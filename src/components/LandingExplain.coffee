# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
T         = React.PropTypes
V         = require "../constants/PanelView"
{ pure }  = require "recompose"

{ div, h1, h2, h3, h4, br, input, button, ul, li, a, img, p, strong, hr } = React.DOM

module.exports = pure React.createClass

  displayName: "LandingExplain"

  propTypes:
    onClick  : T.func

  render: ->
    { onClick } = @props
    div null,
      h2 null, "Die Welt steckt voller Entdecker. Und voller Orte, die darauf warten entdeckt zu werden."
      div
      img className: "pure-img", style: {float: "left"}, src: require "../img/lp_illu1.jpg"
      div style: {marginTop: "200px"},
        h3 null, "Entdecke Orte von ihren besten Seiten."
        p null, "Unsere Karte zeigt dir zukunftsorientierte Initiativen," +
            " Unternehmen und bald auch Events direkt in deiner Umgebung."
      div style: clear: "both"
      img className: "pure-img", style: {float: "right"}, src: require "../img/lp_illu2.jpg"
      div style: {marginTop: "200px"},
        h3 null, "Sei dabei!"
        p null, "Du hast an einer Initiative besonderes Interesse?" +
            " Bei uns findest du die nötigen Informationen," +
            " um Kontakt aufzunehmen und vorbei zu schauen."
      div style: clear: "both"
      img className: "pure-img", style: {float: "left"}, src: require "../img/lp_illu3.jpg"
      div style: {marginTop: "200px"},
        h3 null, "Gestalte die Welt von morgen."
        p null, "Gemeinsam mit dir möchten wir den positiven Wandel " +
            "unserer Gesellschaft sichtbar und erfahrbar machen."
      div style: clear: "both"

      a id: "tutorial"
      hr null

      h2 null, "Wie funktioniert die Karte von morgen?"
      div className: "tutorial",
        img src: require "../img/tutorial/1.jpg"
        img src: require "../img/tutorial/2.jpg"
        img src: require "../img/tutorial/3.jpg"
        img src: require "../img/tutorial/4.jpg"
        img src: require "../img/tutorial/5.jpg"
        img src: require "../img/tutorial/6.jpg"

      div style: overflow: "visible",
        img className: "pure-img", style: {width: "100%"}, src: require "../img/postkarte.jpg"

      h2 null, "Die Vision von morgen"
      p null,
        "von morgen fördert Kreativität, Umweltfreundlichkeit und"
        br null
        "gemeinsames Handeln im bunten Feld des gesellschaftlichen Wandels."
      p null,
        "von morgen hat die Vision einer intakten Welt, in der die Menschen"
        br null
        "miteinander ein selbstbestimmtes, glückliches und umweltbewusstes Leben führen."
        br null
        "Das Ziel: eine menschliche Zukunft."

      hr null
      h2 null,
        "Möchtest du dabei sein?",
      div style: float: "left", paddingTop: "1px",
        h4 null,
          "Unterstütze",
          br null
          "unser Projekt"
        p null, ""
        a href: "#", onClick: (-> onClick V.DONATE), "mehr erfahren"
      div style: float: "right", paddingTop: "1px",
        h4 null,
          "Wir suchen Regional-",
          br null
          "und Themenpiloten"
        p null, ""
        a href: "#", onClick: (-> onClick V.JOIN), "mehr erfahren"
      div style: paddingTop: "1px",
        h4 null,
          "Werde Teil",
          br null
          "unseres Teams"
        p null, ""
        a href: "#", onClick: (-> onClick V.JOIN), "mehr erfahren"

      hr null
      h2 null, "Das Team von morgen"
      p null,
        "Das Team von morgen ist so bunt wie der Wandel. Ehemalige entwicklungspolitische Freiwillige, Studierende, Wandelgestalter*innen und Stipendiaten - Menschen, die sich ehrenamtlich für die Gesellschaft von morgen einsetzen wollen."
       
      div className: "team",
        div className: "teamMember",
          div className: "circle yellow",
            img className: "teamImage", src: require "../img/team/Thao.jpg"
          div className: "team-member-name", "Thao Tran"
          div null, "Brand & Project Management"
        div className: "teamMember",
          div className: "circle pink",
            a href:"http://www.ideenhochdrei.org/de/verein/kennenlernen/menschen/helmut-wolmann/",
              img className: "teamImage", src: require "../img/team/Helmut.jpg"
          div className: "team-member-name", "Helmut Wolman"
          div null, "Vorstand von Ideen³ e.V." 
          div null, "Network & Development"
        div className: "teamMember",
          div className: "circle green",
            img className: "teamImage", src: require "../img/team/Lisa.jpg"
          div className: "team-member-name", "Lisa Stehr"
          div null, "Promoviert in Psychologie"
          div null, "Funding & Strategy"
         div className: "teamMember",
          div className: "circle berry",
            img className: "teamImage", src: require "../img/team/David.jpg"
          div className: "team-member-name", "David Ziegler"
          div null, "Software Development"
        div className: "teamMember",
          div className: "circle green",
           a href:"https://slowtec.de/team.html#",
             img className: "teamImage", src: require "../img/team/Markus.jpg"
          div className: "team-member-name", "Markus Kohlhase"
          div null, "slowtec GmbH"
          div null, "Software Development"
        div className: "teamMember",
          div className: "circle pink",
            img className: "teamImage", src: require "../img/team/placeholder_1.png"
          div className: "team-member-name", "Florian Jostock"
          div null, "Software Development"
        div className: "teamMember",
          div className: "circle blue",
            img className: "teamImage", src: require "../img/team/Anja.jpg"
          div className: "team-member-name", "Anja Dannemann"
          div null, "Designerin"
          div null, "Graphic Design"
        div className: "teamMember",
          div className: "circle blue",
            img className: "teamImage", src: require "../img/team/Ben.jpg"
          div className: "team-member-name", "Benedikt Roth"
          div null, "Organisationsgestalter"
          div null, "Network & Development"
        div className: "teamMember",
          div className: "circle green",
            img className: "teamImage", src: require "../img/team/Frederik.jpg"
          div className: "team-member-name", "Frederik Schütz"
          div null, "Netzwerk-Ass"
          div null, "Business & Finance"
        div className: "teamMember",
          div className: "circle berry",
            img className: "teamImage", src: require "../img/team/Xueqian.jpg"
          div className: "team-member-name", "Xueqian Chen"
          div null, "Unternehmensberaterin"
          div null, "PR & Marketing"
        div className: "teamMember",
          div className: "circle blue",
            img className: "teamImage", src: require "../img/team/placeholder_4.png"
          div className: "team-member-name", "Wir freuen uns über neue"
          div null, "Teammitglieder!"

      hr null

      h2 null, "Ein Projekt von"
        a href:"http://www.ideenhochdrei.org/de/",
          img className: "partnerLogo", src: require "../img/ideen.png"
        a href:"http://slowtec.de",
          img className: "partnerLogo", src: require "../img/slowtec.png"

      h2 null, "Unsere Partner",
        a href:"https://www.engagement-global.de/rueckkehrende.html",
          img className: "partnerLogo", src: require "../img/EngagementGlobal.jpg"
        a href:"http://www.bmz.de/",
          img className: "partnerLogo", src: require "../img/BMZ.jpg"
        a href:"https://www.boell.de/de",
          img className: "partnerLogo", src: require "../img/Heinrich_Böll.jpg"
