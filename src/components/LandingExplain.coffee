# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React     = require "react"
T         = React.PropTypes
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

      div style: overflow: "visible",
        img className: "pure-img", style: {width: "100%"}, src: require "../img/postkarte.jpg"

      h2 null, t "landingExplain.chapter3.heading"
      p null, t "landingExplain.chapter3.text.1"
      p null, t "landingExplain.chapter3.text.2"
      hr null
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

      div className: "teamMember",
        div className: "circle blue",
          img className: "teamImage", src: require "../img/team/Anja.jpg"
        div null, "Anja Dannemann -"
        div null, t "landingExplain.chapter5.graphic-design"
      div className: "teamMember",
        div className: "circle blue",
          img className: "teamImage", src: require "../img/team/Ben.jpg"
        div null, "Benedikt Roth -"
        div null, t "landingExplain.chapter5.network-development"
      div className: "teamMember",
        div className: "circle berry",
          img className: "teamImage", src: require "../img/team/David.jpg"
        div null, "David Ziegler -"
        div null, t "landingExplain.chapter5.software-development"
      div className: "teamMember",
        div className: "circle pink",
          img className: "teamImage", src: require "../img/team/placeholder_1.png"
        div null, "Florian Jostock -"
        div null, t "landingExplain.chapter5.software-development"
      div className: "teamMember",
        div className: "circle green",
          img className: "teamImage", src: require "../img/team/Frederik.jpg"
        div null, "Frederik Schütz -"
        div null, t "landingExplain.chapter5.business-finance"
      div className: "teamMember",
        div className: "circle pink",
          img className: "teamImage", src: require "../img/team/Helmut.jpg"
        div null, "Helmut Wolman -"
        div null, t "landingExplain.chapter5.network-development"
      div className: "teamMember",
        div className: "circle green",
          img className: "teamImage", src: require "../img/team/Lisa.jpg"
        div null, "Lisa Stehr -"
        div null, t "landingExplain.chapter5.funding-strategy"
      div className: "teamMember",
        div className: "circle green",
          img className: "teamImage", src: require "../img/team/Markus.jpg"
        div null, "Markus Kohlhase -"
        div null, t "landingExplain.chapter5.software-development"
      div className: "teamMember",
        div className: "circle yellow",
          img className: "teamImage", src: require "../img/team/placeholder_2.png"
        div null, "Nina Bärnreuther -"
        div null, t "landingExplain.chapter5.pr-marketing"
      div className: "teamMember",
        div className: "circle grayBlue",
          img className: "teamImage", src: require "../img/team/placeholder_3.png"
        div null, "Peter Gericke -"
        div null, t "landingExplain.chapter5.graphic-design"
      div className: "teamMember",
        div className: "circle yellow",
          img className: "teamImage", src: require "../img/team/Thao.jpg"
        div null, "Thao Tran - Brand &"
        div null, t "landingExplain.chapter5.project-management"
      div className: "teamMember",
        div className: "circle yellow",
          img className: "teamImage", src: require "../img/team/Tomas.jpg"
        div null, "Tomas Gerlitz -"
        div null, t "landingExplain.chapter5.business-finance"
      div className: "teamMember",
        div className: "circle berry",
          img className: "teamImage", src: require "../img/team/Xueqian.jpg"
        div null, "Xueqian Chen -"
        div null, t "landingExplain.chapter5.pr-marketing"
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
        a href:"https://www.engagement-global.de/rueckkehrende.html",
          img className: "partnerLogo", src: require "../img/EngagementGlobal.jpg"
        a href:"http://www.bmz.de/",
          img className: "partnerLogo", src: require "../img/BMZ.jpg"
        a href:"https://www.boell.de/de",
          img className: "partnerLogo", src: require "../img/Heinrich_Böll.jpg")
