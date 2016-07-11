# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
T         = React.PropTypes
Pure      = require "react-pure-render/mixin"
V  = require "../constants/PanelView"

{ div, h1, h2, h3, h4, br, input, button, ul, li, a, img, p, strong, hr } = React.DOM

module.exports = React.createClass

  displayName: "LandingExplain"

  mixins: [Pure]

  propTypes:
    onClick  : T.func

  render: ->
    { onClick } = @props
    div null,
      h2 null, "Die Welt steckt voller Entdecker. Und voller Orte, die darauf warten entdeckt zu werden."
      div
      img style: {float: "left"}, src: require "../img/lp_illu1.jpg"
      div style: {marginTop: "200px"},
        h3 null, "Entdecke Orte von ihren besten Seiten."
        p null, "Unsere Karte zeigt dir zukunftsorientierte Initiativen," +
            "Unternehmen und bald auch Events direkt in deiner Umgebung."
      div style: clear: "both"
      img style: {float: "right"}, src: require "../img/lp_illu2.jpg"
      div style: {marginTop: "200px"},
        h3 null, "Sei dabei!"
        p null, "Du hast an einer Initiative besonderes Interesse?" +
            "Bei uns findest du die nötigen Informationen," +
            "um Kontakt aufzunehmen und vorbei zu schauen."
      div style: clear: "both"
      img style: {float: "left"}, src: require "../img/lp_illu3.jpg"
      div style: {marginTop: "200px"},
        h3 null, "Gestalte die Welt von morgen."
        p null, "Gemeinsam mit dir möchten wir den positiven Wandel" +
            "unserer Gesellschaft sichtbar und erfahrbar machen."
      div style: clear: "both"
      hr id: "tutorial"

      h2 null, "Wie funktioniert die Karte von morgen?"
      div null,
        p null, "1. Erkunde mit der Karte von morgen deine Umgebung. Nutze hierfür das Suchfeld - wo befindest du dich?"
        p null, "2. Über die Kategorien \"Initiativen und Unternehmen\" grenzt du die Suchergebnisse ein."
        p null, "3. Nähere Informationen über jeden Eintrag befinden sich in der Visitenkarte, die sich bei der Auswahl aufklappt."
        p null, "4. Du hast einen Ort, der auf der Karte nicht fehlen darf? Trage ihn gern über die Eingabemaske ein."
        p null, "5. Möchtest du einen bestehenden Eintrag korrigieren oder ergänzen? Hierfür dient die Editierfunktion."
        p null, "online suchen - offline handeln"
        br null
          div style: overflow: "visible",
            img style: {width: "100%"}, src: require "../img/postkarte.jpg"

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

      div className: "teamMember",
        div className: "circle blue",
          img className: "teamImage", src: require "../img/team/Anja.jpg"
        div null, "Anja Dannemann -"
        div null, "Graphic Design"
      div className: "teamMember",
        div className: "circle blue",
          img className: "teamImage", src: require "../img/team/Ben.jpg"
        div null, "Benedikt Roth -"
        div null, "Network & Development"
      div className: "teamMember",
        div className: "circle berry",
          img className: "teamImage", src: require "../img/team/David.jpg"
        div null, "David Ziegler -"
        div null, "Softwaredevelopment"
      div className: "teamMember",
        div className: "circle pink",
          img className: "teamImage", src: require "../img/team/placeholder_1.png"
        div null, "Florian Jostock -"
        div null, "Software Development"
      div className: "teamMember",
        div className: "circle green",
          img className: "teamImage", src: require "../img/team/Frederik.jpg"
        div null, "Frederik Schütz -"
        div null, "Business & Finance"
      div className: "teamMember",
        div className: "circle pink",
          img className: "teamImage", src: require "../img/team/Helmut.jpg"
        div null, "Helmut Wolman -"
        div null, "Network & Development"
      div className: "teamMember",
        div className: "circle green",
          img className: "teamImage", src: require "../img/team/Lisa.jpg"
        div null, "Lisa Stehr -"
        div null, "Funding & Strategy"
      div className: "teamMember",
        div className: "circle green",
          img className: "teamImage", src: require "../img/team/Markus.jpg"
        div null, "Markus Kohlhase -"
        div null, "Software Development"
      div className: "teamMember",
        div className: "circle yellow",
          img className: "teamImage", src: require "../img/team/placeholder_2.png"
        div null, "Nina Bärnreuther -"
        div null, "PR & Marketing"
      div className: "teamMember",
        div className: "circle grayBlue",
          img className: "teamImage", src: require "../img/team/placeholder_3.png"
        div null, "Peter Gericke -"
        div null, "Graphic Design"
      div className: "teamMember",
        div className: "circle yellow",
          img className: "teamImage", src: require "../img/team/Thao.jpg"
        div null, "Thao Tran - Brand &"
        div null, "Project Management"
      div className: "teamMember",
        div className: "circle yellow",
          img className: "teamImage", src: require "../img/team/Tomas.jpg"
        div null, "Tomas Gerlitz -"
        div null, "Business & Finance"
      div className: "teamMember",
        div className: "circle berry",
          img className: "teamImage", src: require "../img/team/Xueqian.jpg"
        div null, "Xueqian Chen -"
        div null, "PR & Marketing"
      div className: "teamMember",
        div className: "circle blue"
          img className: "teamImage", src: require "../img/team/placeholder_4.png"
        div null, "Wir freuen uns über neue"
        div null, "Teammitglieder!"

      hr null

      h2 null,
        "Unsere Partner",
      a href:"http://germany.ashoka.org",
        img className: "partnerLogo", src: require "../img/Pep.png"
      a href:"https://www.boell.de/de",
        img className: "partnerLogo", src: require "../img/Heinrich_Böll.jpg"
      a href:"https://www.think-big.org",
        img className: "partnerLogo", style: {padding: "0 20px 0 10px"}, src: require "../img/Think_Big.jpg"
      a href:"http://slowtec.de",
        img className: "partnerLogo", src: require "../img/slowtec.png"
      a href:"http://www.ideenhochdrei.org/de/",
        img className: "partnerLogo", src: require "../img/ideen.png"
      hr null
