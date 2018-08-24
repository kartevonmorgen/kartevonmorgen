# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
T         = require "prop-types"
V         = require "../constants/PanelView"
{ pure }  = require "recompose"
{ translate } = require "react-i18next"

{ div, h1, h2, h3, h4, br, input, button, ul, li, a, img, p, strong, hr } = React.DOM

module.exports = translate('translation')(pure React.createClass

  displayName: "LandingExplain"

  propTypes:
    onClick  : T.func

  render: ->
    { onClick, t } = @props
    div null,
      h2 null, t "landingExplain.chapter1.heading"
      div
      img className: "pure-img", style: {float: "left"}, src: require "../img/lp_illu1.jpg"
      div style: {marginTop: "200px"},
        h3 null, t "landingExplain.chapter1.paragraph1.heading"
        p null, t "landingExplain.chapter1.paragraph1.text"
      div style: clear: "both"
      img className: "pure-img", style: {float: "right"}, src: require "../img/lp_illu2.jpg"
      div style: {marginTop: "200px"},
        h3 null,  t "landingExplain.chapter1.paragraph2.heading"
        p null, t "landingExplain.chapter1.paragraph2.text"
      div style: clear: "both"
      img className: "pure-img", style: {float: "left"}, src: require "../img/lp_illu3.jpg"
      div style: {marginTop: "200px"},
        h3 null, t "landingExplain.chapter1.paragraph3.heading"
        p null, t "landingExplain.chapter1.paragraph3.text"
      div style: clear: "both"

      a id: "tutorial"
      hr null

      h2 null, t "landingExplain.chapter2.heading"
      div className: "tutorial",
        img src: require "../img/tutorial/1.jpg"
        img src: require "../img/tutorial/2.jpg"
        img src: require "../img/tutorial/3.jpg"
        img src: require "../img/tutorial/4.jpg"
        img src: require "../img/tutorial/5.jpg"
        img src: require "../img/tutorial/6.jpg"

      h2 null, t "landingExplain.chapter3.heading"
      p null, t "landingExplain.chapter3.text.1"
      p null, t "landingExplain.chapter3.text.2"
      div style: overflow: "visible",
        img className: "pure-img", style: {width: "100%"}, src: require "../img/postkarte.jpg"
      br null
      br null

      h2 null, t "landingExplain.chapter4.heading"
      div style: float: "left", paddingTop: "1px",
        h4 null, t "landingExplain.chapter4.text.1"
        a href: "#", onClick: (-> onClick V.DONATE), t "landingExplain.chapter4.learnMore"
      div style: float: "right", paddingTop: "1px",
        h4 null, t "landingExplain.chapter4.text.2"
        a href: "#", onClick: (-> onClick V.JOIN), t "landingExplain.chapter4.learnMore"
      div style: paddingTop: "1px",
        h4 null, t "landingExplain.chapter4.text.3"
        a href: "#", onClick: (-> onClick V.JOIN), t "landingExplain.chapter4.learnMore"

      hr null
      h2 null, t "landingExplain.chapter5.heading"

      div className: "team",
        div className: "teamMember",
          div className: "circle yellow",
            img className: "teamImage", src: require "../img/team/Thao.jpg"
          div className: "team-member-name", "Thao Tran"
          div null, t "landingExplain.chapter5.thao"
        div className: "teamMember",
          div className: "circle pink",
            a target: "_blank", href:"http://www.ideenhochdrei.org/de/verein/kennenlernen/menschen/helmut-wolmann/",
              img className: "teamImage", src: require "../img/team/Helmut.jpg"
          div className: "team-member-name", "Helmut Wolman"
          div null, (t "landingExplain.chapter5.chair") + " Ideen³ e.V."
          div null, t "landingExplain.chapter5.project-development"
        div className: "teamMember",
          div className: "circle berry",
          a target: "_blank", href:"https://slowtec.de/team.html#",
            img className: "teamImage", src: require "../img/team/David.jpg"
          div className: "team-member-name", "David Ziegler"
          div null, "slowtec GmbH" 
          div null, t "landingExplain.chapter5.software-development"
        div className: "teamMember",
          div className: "circle green",
            img className: "teamImage", src: require "../img/team/Lisa.jpg"
          div className: "team-member-name", "Lisa Stehr"
          div null, t "landingExplain.chapter5.lisa1"
          div null, t "landingExplain.chapter5.lisa2"
        div className: "teamMember",
          div className: "circle green",
           a target: "_blank", href:"http://martenroebel.de/",
             img className: "teamImage", src: require "../img/team/Marten.jpg"
          div className: "team-member-name", "Marten Röbel"
          div null, t "landingExplain.chapter5.marten"
        div className: "teamMember",
          div className: "circle green",
           a target: "_blank", href:"https://slowtec.de/team.html#",
             img className: "teamImage", src: require "../img/team/Markus.jpg"
          div className: "team-member-name", "Markus Kohlhase"
          div null, "slowtec GmbH"
          div null, t "landingExplain.chapter5.software-development"
        div className: "teamMember",
          div className: "circle pink",
            img className: "teamImage", src: require "../img/team/placeholder_1.png"
          div className: "team-member-name", "Florian Jostock"
          div null, t "landingExplain.chapter5.florian"
        div className: "teamMember",
          div className: "circle blue",
            img className: "teamImage", src: require "../img/team/Louisa.jpg"
          div className: "team-member-name", "Louisa Pieper"
          div null, t "landingExplain.chapter5.louisa"
          div null, t "landingExplain.chapter5.pr-marketing"
        div className: "teamMember",
          div className: "circle blue",
            img className: "teamImage", src: require "../img/team/Anja.jpg"
          div className: "team-member-name", "Anja Dannemann"
          div null, t "landingExplain.chapter5.anja"
          div null, t "landingExplain.chapter5.graphic-design"
        div className: "teamMember",
          div className: "circle berry",
            img className: "teamImage", src: require "../img/team/Xueqian.jpg"
          div className: "team-member-name", "Xueqian Chen"
          div null, t "landingExplain.chapter5.xueqian"
          div null, t "landingExplain.chapter5.pr-marketing"
        div className: "teamMember",
          div className: "circle green",
            img className: "teamImage", src: require "../img/team/Frederik.jpg"
          div className: "team-member-name", "Frederik Schütz"
          div null, t "landingExplain.chapter5.project-development"
        div className: "teamMember",
          div className: "circle green",
            img className: "teamImage", src: require "../img/team/Linus.jpg"
          div className: "team-member-name", "Linus Covic"
          div null, t "landingExplain.chapter5.linus"
          div null, t "landingExplain.chapter5.communication-marketing"
        div className: "teamMember",
          div className: "circle blue",
            img className: "teamImage", src: require "../img/team/placeholder_4.png"
          div null, t "landingExplain.chapter5.new-members"

      hr null

      h2 null, t "landingExplain.chapter6.heading"
        a href:"http://www.ideenhochdrei.org/de/",
          img className: "partnerLogo", src: require "../img/ideen.png"
        a href:"http://slowtec.de",
          img className: "partnerLogo", src: require "../img/slowtec.png"

      hr null

      h2 null, t "landingExplain.chapter7.heading"
        div null,
          a href:"https://www.mannheim.de/",
            img className: "partnerLogo", src: require "../img/mannheim.jpg"
          a href:"https://www.engagement-global.de/rueckkehrende.html",
            img className: "partnerLogo", src: require "../img/EngagementGlobal.jpg"
          a href:"http://www.bmz.de/",
            img className: "partnerLogo", src: require "../img/BMZ.jpg"
        p null, t "landingExplain.chapter7.boell-foundation"
)
