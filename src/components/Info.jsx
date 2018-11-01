import React, { Component } from "react";
import pkg      from "../../package.json";
import team1    from "../img/team_am_tisch.jpg";
import team2    from "../img/team_in_action.jpg";
import slider   from "../img/Slider.jpg";
import URLs     from "../constants/URLs";
import i18n     from "../i18n";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const t = (key) => {
  return i18n.t("info." + key);
}

module.exports = ({serverVersion}) =>
    <div className="info">
        <h2>{t("heading1")}</h2>
        <p>
            {t("facebook")} <a target="_blank" href='https://www.facebook.com/vonmorgen'>Facebook</a><br />
            {t("betterplace")} <a target="_blank" href='https://www.betterplace.org/de/projects/36213/newsroom'>{t("betterplace-link")}</a>
        </p>
        <br />

        <p>
          {t("text1.1")}
        </p>
        <p>
          {t("text1.2")}<br />
          {t("text1.3")}<br />
          {t("text1.4")}
        </p>
        <p>{t("text1.5")}</p>
        <p>{t("text1.6")}</p>
        <p>{t("text1.7")}</p>
    <img className="landing-img" src={team1}/><br /><br />
      <h3>{t("heading2")}</h3>
        <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/'>{t("text2.goalLink")}</a><br />
        <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/2/'>{t("text2.ratingsLink")}</a><br />
        <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/3/'>{t("text2.regionalpilotLink")}</a><br />
        <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/3/#Widget_zum_Einbetten'>{t("text2.embedMapLink")}</a><br />
        <a target="_blank" href='http://bildungsagenten.org/kartevonmorgen/4/'>{t("text2.joinLink")}</a><br />
        <p>
        <br />
        <FontAwesomeIcon icon={['fab', 'facebook']} />&nbsp;
        {" "}<a target="_blank" href = { URLs.FACEBOOK.link }>{ URLs.FACEBOOK.name }</a>
        <br />
        <FontAwesomeIcon icon="envelope" />&nbsp;
        {" "}<a target="_blank" href = {URLs.MAIL.link}>{ URLs.MAIL.name }</a>
        <br />

        </p>
        <br />
        <br />
        <h3>{t("heading3")}</h3>
        <p>
          {t("text3")}
        </p>
        <p>
          <FontAwesomeIcon icon={['fab', 'github']} />
          {" "}<a target="_blank" href = {URLs.REPOSITORY.link}>{ URLs.REPOSITORY.name }</a>
        </p>


        <img className="landing-img" src={team2} /><br /><br />
        <h3>{t("heading4")}</h3>
            <p>
                {t("text4")}<br />
                <a target="_blank" href="http://bildungsagenten.org">www.bildungsagenten.org</a>
            </p>

        <img className="landing-img" src={slider} />
        <p className="version">{
            t("clientVersion") + " " + pkg.version
        }
        </p>
        {serverVersion
            ?   <p className="version">
                    {t("serverVersion") + " " + serverVersion}
                </p>
            : ""
        }
    </div>
