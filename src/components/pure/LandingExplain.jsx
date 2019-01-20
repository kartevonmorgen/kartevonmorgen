import React, { Component } from "react";
import T                    from "prop-types";
import { translate }        from "react-i18next";
import V                    from "../../constants/PanelView";

const teamArray = [
  {
    name: "Thao Tran",
    color: "yellow",
    image: require("../../img/team/Thao.jpg"),
    position: ["landingExplain.chapter5.thao"]
  },
  {
    name: "Helmut Wolman",
    color: "pink",
    homepage: "http://www.ideenhochdrei.org/de/verein/kennenlernen/menschen/helmut-wolmann/",
    image: require("../../img/team/Helmut.jpg"),
    position: ["landingExplain.chapter5.chair", "landingExplain.chapter5.project-development"]
  },
  {
    name: "David Ziegler",
    color: "berry",
    homepage: "https://slowtec.de/team.html#",
    image: require("../../img/team/David.jpg"),
    position: ["slowtec GmbH","landingExplain.chapter5.software-development"]
  },
  {
    name: "Lisa Stehr",
    color: "green",
    image: require("../../img/team/Lisa.jpg"),
    position: ["landingExplain.chapter5.lisa1", "landingExplain.chapter5.lisa2"]
  },
  {
    name: "Marten Röbel",
    color: "green",
    homepage: "http://martenroebel.de/",
    image: require("../../img/team/Marten.jpg"),
    position: ["landingExplain.chapter5.marten"]
  },
  {
    name: "Markus Kohlhase",
    color: "green",
    homepage: "https://slowtec.de/team.html#",
    image: require("../../img/team/Markus.jpg"),
    position: ["slowtec GmbH","landingExplain.chapter5.software-development"]
  },
  {
    name: "Florian Jostock",
    color: "pink",
    image: require("../../img/team/placeholder_1.png"),
    position: ["landingExplain.chapter5.florian"]
  },
  {
    name: "Louisa Pieper",
    color: "blue",
    image: require("../../img/team/Louisa.jpg"),
    position: ["landingExplain.chapter5.louisa", "landingExplain.chapter5.pr-marketing"]
  },
  {
    name: "Anja Dannemann",
    color: "blue",
    image: require("../../img/team/Anja.jpg"),
    position: ["landingExplain.chapter5.anja", "landingExplain.chapter5.graphic-design"]
  },
  {
    name: "Xueqian Chen",
    color: "berry",
    image: require("../../img/team/Xueqian.jpg"),
    position: ["landingExplain.chapter5.xueqian", "landingExplain.chapter5.pr-marketing"]
  },
  {
    name: "Frederik Schütz",
    color: "green",
    image: require("../../img/team/Frederik.jpg"),
    position: ["landingExplain.chapter5.project-development"]
  },
  {
    name: "Linus Covic",
    color: "green",
    image: require("../../img/team/Linus.jpg"),
    position: ["landingExplain.chapter5.linus", "landingExplain.chapter5.communication-marketing"]
  },
  {
    color: "blue",
    image: require("../../img/team/placeholder_4.png"),
    position: ["landingExplain.chapter5.new-members"]
  }
]

const getTeamMembers = t =>
  teamArray
    .map( member => {
      const link = !!member.homepage && member.image
      const key = member.name ? member.name : member.position

      return(
        <div key={key} className="teamMember">
          <div className={ "circle "+member.color }>
            { link
              ? <a target="_blank" href={member.homepage}><img className="teamImage" src={member.image} /></a>
              : !!member.image && <img className="teamImage" src={member.image} />
            }
          </div>
          <div className="team-member-name">{member.name}</div>
          { member.position.map( pos =>
            <div key={pos}>{ pos.startsWith('landingExplain.') ? t(pos) : pos  }</div>
          )}
        </div>
      )
    })

const LandingExplain = props => {

  const { onClick, t } = props;

  return(
    <div>
      <h2>{t("landingExplain.chapter1.heading")}</h2>
      <div />
      <img className="pure-img" style={{float: "left"}} src={require("../../img/lp_illu1.jpg")}/>
      <div style={{marginTop: "200px"}}>
        <h3>{t("landingExplain.chapter1.paragraph1.heading")}</h3>
        <p>{t("landingExplain.chapter1.paragraph1.text")}</p>
      </div>
      <div style={{clear:"both"}} />
      <img className="pure-img" style={{float: "right"}} src={require("../../img/lp_illu2.jpg")}/>
      <div style={{marginTop: "200px"}}>
        <h3> {t("landingExplain.chapter1.paragraph2.heading")}</h3>
        <p>{t("landingExplain.chapter1.paragraph2.text")}</p>
      </div>
      <div style={{clear:"both"}} />
      <img className="pure-img" style={{float: "left"}} src={require("../../img/lp_illu3.jpg")}/>
      <div style={{marginTop: "200px"}}>
        <h3>{t("landingExplain.chapter1.paragraph3.heading")}</h3>
        <p>{t("landingExplain.chapter1.paragraph3.text")}</p>
      </div>
      <div style={{clear:"both"}} />

      <a id="tutorial" />
      <hr />
      <h2>{t("landingExplain.chapter2.heading")}</h2>
      <div className="tutorial">
        <img src={require("../../img/tutorial/1.jpg")} />
        <img src={require("../../img/tutorial/2.jpg")} />
        <img src={require("../../img/tutorial/3.jpg")} />
        <img src={require("../../img/tutorial/4.jpg")} />
        <img src={require("../../img/tutorial/5.jpg")} />
        <img src={require("../../img/tutorial/6.jpg")} />
      </div>
      <h2>{t("landingExplain.chapter3.heading")}</h2>
      <p>{t("landingExplain.chapter3.text.1")}</p>
      <p>{t("landingExplain.chapter3.text.2")}</p>
      <div style={{overflow: "visible"}}>
        <img className="pure-img" style={{width: "100%"}} src={require("../../img/postkarte.jpg")} />
      </div>
      <br />
      <br />

      <h2>{t("landingExplain.chapter4.heading")}</h2>
      <div style={{float: "left", paddingTop: "1px"}} >
        <h4>{t("landingExplain.chapter4.text.1")}</h4>
        <a href="#" onClick={() => {onClick(V.DONATE)}} >{t("landingExplain.chapter4.learnMore")}</a>
      </div>
      <div style={{float: "right", paddingTop: "1px"}} >
        <h4>{t("landingExplain.chapter4.text.2")}</h4>
        <a href="#" onClick={() => {onClick(V.JOIN)}}>{t("landingExplain.chapter4.learnMore")}</a>
      </div>
      <div style={{paddingTop: "1px"}}>
        <h4>{t("landingExplain.chapter4.text.3")}</h4>
        <a href="#" onClick={() => {onClick(V.JOIN)}}>{t("landingExplain.chapter4.learnMore")}</a>
      </div>
      <hr />
      <h2>{t("landingExplain.chapter5.heading")}</h2>

      <div className="team">
        {getTeamMembers(t)}
      </div>

      <hr />

      <h2>{t("landingExplain.chapter6.heading")}</h2>
      <a href="http://www.ideenhochdrei.org/de/">
        <img className="partnerLogo" src={require("../../img/ideen.png")} />
      </a>
      <a href="http://slowtec.de">
        <img className="partnerLogo" src={require("../../img/slowtec.png")} />
      </a>

      <hr />

      <h2>{t("landingExplain.chapter7.heading")}</h2>
      <div>
        <a href="https://www.mannheim.de/">
          <img className="partnerLogo" src={require("../../img/mannheim.jpg")}/>
        </a>
        <a href="https://www.engagement-global.de/rueckkehrende.html">
          <img className="partnerLogo" src={require("../../img/EngagementGlobal.jpg")}/>
        </a>
        <a href="http://www.bmz.de/">
          <img className="partnerLogo" src={require("../../img/BMZ.jpg")}/>
        </a>
      </div>
      <p>{t("landingExplain.chapter7.boell-foundation")}</p>

    </div>
  )

}

LandingExplain.propTypes = {
  onClick  : T.func
}

module.exports = translate('translation')(LandingExplain)
