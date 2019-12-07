// TODO: import pkg      from "../../../package.json";
// TODO: import team1    from "../../img/team_am_tisch.jpg";
// TODO: import team2    from "../../img/team_in_action.jpg";
// TODO: import slider   from "../../img/Slider.jpg";
// TODO: import URLs     from "../../constants/URLs";
// TODO: import i18n     from "../../i18n";
// TODO: import React    from "react";
// TODO: 
// TODO: import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
// TODO: 
// TODO: const t = (key) => i18n.t("info." + key)
// TODO: 
// TODO: module.exports = ({serverVersion}) =>
// TODO:     <div className="info">
// TODO:         <h2>{t("heading1")}</h2>
// TODO:         <p>
// TODO:             {t("facebook")} <a target="_blank" href='https://www.facebook.com/vonmorgen'>Facebook</a><br />
// TODO:             {t("betterplace")} <a target="_blank" href='https://www.betterplace.org/de/projects/36213/newsroom'>{t("betterplace-link")}</a>
// TODO:         </p>
// TODO:         <br />
// TODO: 
// TODO:         <p>
// TODO:           {t("text1.1")}
// TODO:         </p>
// TODO:         <p>
// TODO:           {t("text1.2")}<br />
// TODO:           {t("text1.3")}<br />
// TODO:           {t("text1.4")}
// TODO:         </p>
// TODO:         <p>{t("text1.5")}</p>
// TODO:         <p>{t("text1.6")}</p>
// TODO:         <p>{t("text1.7")}</p>
// TODO:     <img className="landing-img" src={team1}/><br /><br />
// TODO:       <h3>{t("heading2")}</h3>
// TODO:         <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/'>{t("text2.goalLink")}</a><br />
// TODO:         <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/2/'>{t("text2.ratingsLink")}</a><br />
// TODO:         <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/3/'>{t("text2.regionalpilotLink")}</a><br />
// TODO:         <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/3/#Widget_zum_Einbetten'>{t("text2.embedMapLink")}</a><br />
// TODO:         <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/4/'>{t("text2.joinLink")}</a><br />
// TODO:         <p>
// TODO:         <br />
// TODO:         <FontAwesomeIcon icon={['fab', 'facebook']} />&nbsp;
// TODO:         {" "}<a target="_blank" href = { URLs.FACEBOOK.link }>{ URLs.FACEBOOK.name }</a>
// TODO:         <br />
// TODO:         <FontAwesomeIcon icon="envelope" />&nbsp;
// TODO:         {" "}<a target="_blank" href = {URLs.MAIL.link}>{ URLs.MAIL.name }</a>
// TODO:         <br />
// TODO: 
// TODO:         </p>
// TODO:         <br />
// TODO:         <br />
// TODO:         <h3>{t("heading3")}</h3>
// TODO:         <p>
// TODO:           {t("text3")}
// TODO:         </p>
// TODO:         <p>
// TODO:           <FontAwesomeIcon icon={['fab', 'github']} />
// TODO:           {" "}<a target="_blank" href = {URLs.REPOSITORY.link}>{ URLs.REPOSITORY.name }</a>
// TODO:         </p>
// TODO: 
// TODO: 
// TODO:         <img className="landing-img" src={team2} /><br /><br />
// TODO:         <h3>{t("heading4")}</h3>
// TODO:             <p>
// TODO:                 {t("text4")}<br />
// TODO:                 <a target="_blank" href="http://bildungsagenten.org">www.bildungsagenten.org</a>
// TODO:             </p>
// TODO: 
// TODO:         <img className="landing-img" src={slider} />
// TODO:         <p className="version">{
// TODO:             t("clientVersion") + " " + pkg.version
// TODO:         }
// TODO:         </p>
// TODO:         {serverVersion
// TODO:             ?   <p className="version">
// TODO:                     {t("serverVersion") + " " + serverVersion}
// TODO:                 </p>
// TODO:             : ""
// TODO:         }
// TODO:     </div>
