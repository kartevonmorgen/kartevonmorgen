use crate::{Mdl,Msg};
use seed::prelude::*;

// TODO: import { translate }        from "react-i18next";
// TODO: import V                    from "../../constants/PanelView";
// TODO:
// TODO: const teamArray = [
// TODO:   {
// TODO:     name: "Thao Tran",
// TODO:     color: "yellow",
// TODO:     image: require("../../img/team/Thao.jpg"),
// TODO:     position: ["landingExplain.chapter5.thao"]
// TODO:   },
// TODO:   {
// TODO:     name: "Helmut Wolman",
// TODO:     color: "pink",
// TODO:     homepage: "http://www.ideenhochdrei.org/de/verein/kennenlernen/menschen/helmut-wolmann/",
// TODO:     image: require("../../img/team/Helmut.jpg"),
// TODO:     position: ["landingExplain.chapter5.chair", "landingExplain.chapter5.project-development"]
// TODO:   },
// TODO:   {
// TODO:     name: "David Ziegler",
// TODO:     color: "berry",
// TODO:     homepage: "https://www.facebook.com/david.ziegler.33671",
// TODO:     image: require("../../img/team/David.jpg"),
// TODO:     position: ["landingExplain.chapter5.software-development"]
// TODO:   },
// TODO:   {
// TODO:     name: "Lisa Stehr",
// TODO:     color: "green",
// TODO:     image: require("../../img/team/Lisa.jpg"),
// TODO:     position: ["landingExplain.chapter5.lisa1", "landingExplain.chapter5.lisa2"]
// TODO:   },
// TODO:   {
// TODO:     name: "Marten Röbel",
// TODO:     color: "green",
// TODO:     homepage: "http://martenroebel.de/",
// TODO:     image: require("../../img/team/Marten.jpg"),
// TODO:     position: ["landingExplain.chapter5.marten"]
// TODO:   },
// TODO:   {
// TODO:     name: "Markus Kohlhase",
// TODO:     color: "green",
// TODO:     homepage: "https://slowtec.de/team.html#",
// TODO:     image: require("../../img/team/Markus.jpg"),
// TODO:     position: ["slowtec GmbH","landingExplain.chapter5.software-development"]
// TODO:   },
// TODO:   {
// TODO:     name: "Florian Jostock",
// TODO:     color: "pink",
// TODO:     image: require("../../img/team/placeholder_1.png"),
// TODO:     position: ["landingExplain.chapter5.florian"]
// TODO:   },
// TODO:   {
// TODO:     name: "Louisa Pieper",
// TODO:     color: "blue",
// TODO:     image: require("../../img/team/Louisa.jpg"),
// TODO:     position: ["landingExplain.chapter5.louisa", "landingExplain.chapter5.pr-marketing"]
// TODO:   },
// TODO:   {
// TODO:     name: "Anja Dannemann",
// TODO:     color: "blue",
// TODO:     image: require("../../img/team/Anja.jpg"),
// TODO:     position: ["landingExplain.chapter5.anja", "landingExplain.chapter5.graphic-design"]
// TODO:   },
// TODO:   {
// TODO:     name: "Xueqian Chen",
// TODO:     color: "berry",
// TODO:     image: require("../../img/team/Xueqian.jpg"),
// TODO:     position: ["landingExplain.chapter5.xueqian", "landingExplain.chapter5.pr-marketing"]
// TODO:   },
// TODO:   {
// TODO:     name: "Frederik Schütz",
// TODO:     color: "green",
// TODO:     image: require("../../img/team/Frederik.jpg"),
// TODO:     position: ["landingExplain.chapter5.project-development"]
// TODO:   },
// TODO:   {
// TODO:     name: "Linus Covic",
// TODO:     color: "green",
// TODO:     image: require("../../img/team/Linus.jpg"),
// TODO:     position: ["landingExplain.chapter5.linus", "landingExplain.chapter5.communication-marketing"]
// TODO:   },
// TODO:   {
// TODO:     color: "blue",
// TODO:     image: require("../../img/team/placeholder_4.png"),
// TODO:     position: ["landingExplain.chapter5.new-members"]
// TODO:   }
// TODO: ]
// TODO:
// TODO: const getTeamMembers = t =>
// TODO:   teamArray
// TODO:     .map( member => {
// TODO:       const link = !!member.homepage && member.image
// TODO:       const key = member.name ? member.name : member.position
// TODO:
// TODO:       return(
// TODO:         <div key={key} className="teamMember">
// TODO:           <div className={ "circle "+member.color }>
// TODO:             { link
// TODO:               ? <a target="_blank" href={member.homepage}><img className="teamImage" src={member.image} /></a>
// TODO:               : !!member.image && <img className="teamImage" src={member.image} />
// TODO:             }
// TODO:           </div>
// TODO:           <div className="team-member-name">{member.name}</div>
// TODO:           { member.position.map( pos =>
// TODO:             <div key={pos}>{ pos.startsWith('landingExplain.') ? t(pos) : pos  }</div>
// TODO:           )}
// TODO:         </div>
// TODO:       )
// TODO:     })

pub fn view(mdl: &Mdl) -> Node<Msg> {

             div![
               h2![
                    // TODO: t("landingExplain.chapter1.heading")
                    "The world is full of explorers, and full of things to be explored."
               ],
               div![],
// TODO:       <img className="pure-img" style={{float: "left"}} src={require("../../img/lp_illu1.jpg")}/>
// TODO:       <div style={{marginTop: "200px"}}>
// TODO:         <h3>{t("landingExplain.chapter1.paragraph1.heading")}</h3>
// TODO:         <p>{t("landingExplain.chapter1.paragraph1.text")}</p>
// TODO:       </div>
// TODO:       <div style={{clear:"both"}} />
// TODO:       <img className="pure-img" style={{float: "right"}} src={require("../../img/lp_illu2.jpg")}/>
// TODO:       <div style={{marginTop: "200px"}}>
// TODO:         <h3> {t("landingExplain.chapter1.paragraph2.heading")}</h3>
// TODO:         <p>{t("landingExplain.chapter1.paragraph2.text")}</p>
// TODO:       </div>
// TODO:       <div style={{clear:"both"}} />
// TODO:       <img className="pure-img" style={{float: "left"}} src={require("../../img/lp_illu3.jpg")}/>
// TODO:       <div style={{marginTop: "200px"}}>
// TODO:         <h3>{t("landingExplain.chapter1.paragraph3.heading")}</h3>
// TODO:         <p>{t("landingExplain.chapter1.paragraph3.text")}</p>
// TODO:       </div>
// TODO:       <div style={{clear:"both"}} />
// TODO:
// TODO:       <a id="tutorial" />
// TODO:       <hr />
// TODO:       <h2>{t("landingExplain.chapter2.heading")}</h2>
// TODO:       <div className="tutorial">
// TODO:         <img src={require("../../img/tutorial/1.jpg")} />
// TODO:         <img src={require("../../img/tutorial/2.jpg")} />
// TODO:         <img src={require("../../img/tutorial/3.jpg")} />
// TODO:         <img src={require("../../img/tutorial/4.jpg")} />
// TODO:         <img src={require("../../img/tutorial/5.jpg")} />
// TODO:         <img src={require("../../img/tutorial/6.jpg")} />
// TODO:       </div>
// TODO:       <h2>{t("landingExplain.chapter3.heading")}</h2>
// TODO:       <p>{t("landingExplain.chapter3.text.1")}</p>
// TODO:       <p>{t("landingExplain.chapter3.text.2")}</p>
// TODO:       <div style={{overflow: "visible"}}>
// TODO:         <img className="pure-img" style={{width: "100%"}} src={require("../../img/postkarte.jpg")} />
// TODO:       </div>
// TODO:       <br />
// TODO:       <br />
// TODO:
// TODO:       <h2>{t("landingExplain.chapter4.heading")}</h2>
// TODO:       <div style={{float: "left", paddingTop: "1px"}} >
// TODO:         <h4>{t("landingExplain.chapter4.text.1")}</h4>
// TODO:         <a href="#" onClick={() => {onClick(V.DONATE)}} >{t("landingExplain.chapter4.learnMore")}</a>
// TODO:       </div>
// TODO:       <div style={{float: "right", paddingTop: "1px"}} >
// TODO:         <h4>{t("landingExplain.chapter4.text.2")}</h4>
// TODO:         <a href="#" onClick={() => {onClick(V.JOIN)}}>{t("landingExplain.chapter4.learnMore")}</a>
// TODO:       </div>
// TODO:       <div style={{paddingTop: "1px"}}>
// TODO:         <h4>{t("landingExplain.chapter4.text.3")}</h4>
// TODO:         <a href="#" onClick={() => {onClick(V.JOIN)}}>{t("landingExplain.chapter4.learnMore")}</a>
// TODO:       </div>
// TODO:       <hr />
// TODO:       <h2>{t("landingExplain.chapter5.heading")}</h2>
// TODO:
// TODO:       <div className="team">
// TODO:         {getTeamMembers(t)}
// TODO:       </div>
// TODO:
// TODO:       <hr />
// TODO:
// TODO:       <h2>{t("landingExplain.chapter6.heading")}</h2>
// TODO:       <a href="http://www.ideenhochdrei.org/de/">
// TODO:         <img className="partnerLogo" src={require("../../img/ideen.png")} />
// TODO:       </a>
// TODO:       <a href="http://slowtec.de">
// TODO:         <img className="partnerLogo" src={require("../../img/slowtec.png")} />
// TODO:       </a>
// TODO:
// TODO:       <hr />
// TODO:
// TODO:       <h2>{t("landingExplain.chapter7.heading")}</h2>
// TODO:       <div>
// TODO:         <a href="https://www.mannheim.de/">
// TODO:           <img className="partnerLogo" src={require("../../img/mannheim.jpg")}/>
// TODO:         </a>
// TODO:         <a href="https://www.engagement-global.de/rueckkehrende.html">
// TODO:           <img className="partnerLogo" src={require("../../img/EngagementGlobal.jpg")}/>
// TODO:         </a>
// TODO:         <a href="http://www.bmz.de/">
// TODO:           <img className="partnerLogo" src={require("../../img/BMZ.jpg")}/>
// TODO:         </a>
// TODO:       </div>
// TODO:       <p>{t("landingExplain.chapter7.boell-foundation")}</p>
// TODO:
             ]
}
