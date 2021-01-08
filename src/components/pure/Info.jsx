import pkg       from "../../../package.json"
import * as URLs from "../../constants/URLs"
import i18n      from "../../i18n"
import React     from "react"

import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import {LazyLoadImage} from "react-lazy-load-image-component"

const t = (key) => i18n.t("info." + key)

export default ({serverVersion}) =>
  <div className="info">
    <h2>{t("heading1")}</h2>
    <p>
      {t("facebook")} <a target="_blank" href='https://www.facebook.com/vonmorgen'>Facebook</a><br/>
      {t("betterplace")} <a
        target="_blank"
        href='https://www.betterplace.org/de/projects/36213/newsroom'>
        {t("betterplace-link")}
      </a>
    </p>
    <br/>

    <p>
      {t("text1.1")}
    </p>
    <p>
      {t("text1.2")}<br/>
      {t("text1.3")}<br/>
      {t("text1.4")}
    </p>
    <p>{t("text1.5")}</p>
    <p>{t("text1.6")}</p>
    <p>{t("text1.7")}</p>
    <LazyLoadImage
      className="landing-img"
      alt="team 1"
      src="./img/team_am_tisch.jpg"
    />
    <br/><br/>
    <h3>{t("heading2")}</h3>
    <a target="_blank" href='https://blog.vonmorgen.org/'>{t("text2.goalLink")}</a><br/>
    <a target="_blank" href='https://blog.vonmorgen.org/die-positivfaktoren/'>{t("text2.ratingsLink")}</a><br/>
    <a target="_blank" href='https://blog.vonmorgen.org/piloten/'>{t("text2.regionalpilotLink")}</a><br/>
    <a target="_blank" href='https://blog.vonmorgen.org/iframes'>{t("text2.embedMapLink")}</a><br/>
    <a target="_blank" href='https://blog.vonmorgen.org/regionalpilotin-werden/'>{t("text2.joinLink")}</a><br/>
    <p>
      <br/>
      <FontAwesomeIcon icon={['fab', 'facebook']}/>&nbsp;
      {" "}<a target="_blank" href={URLs.FACEBOOK.link}>{URLs.FACEBOOK.name}</a>
      <br/>
      <FontAwesomeIcon icon="envelope"/>&nbsp;
      {" "}<a target="_blank" href={URLs.MAIL.link}>{URLs.MAIL.name}</a>
      <br/>

    </p>
    <br/>
    <br/>
    <h3>{t("heading3")}</h3>
    <p>
      {t("text3")}
    </p>
    <p>
      <FontAwesomeIcon icon={['fab', 'github']}/>
      {" "}<a target="_blank" href={URLs.REPOSITORY.link}>{URLs.REPOSITORY.name}</a>
    </p>


    <LazyLoadImage
      className="landing-img"
      alt="team 2"
      src="./img/team_in_action.jpg"
    />
    <br/><br/>
    <h3>{t("heading4")}</h3>
    <p>
      {t("text4")}<br/>
      <a target="_blank" href="https://bildung.vonmorgen.org">www.bildung.vonmorgen.org</a>
    </p>

    <LazyLoadImage
      className="landing-img"
      alt="slider"
      src="./img/Slider.jpg"
    />
    <p className="version">{
      t("clientVersion") + " " + pkg.version
    }
    </p>
    {serverVersion
      ? <p className="version">
        {t("serverVersion") + " " + serverVersion}
      </p>
      : ""
    }
  </div>
