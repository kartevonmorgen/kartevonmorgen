import React  from "react";
import URLs   from "../../constants/URLs";
import pkg    from "../../../package.json";
import i18n   from "../../i18n";

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

const t = (key) => i18n.t("contact." + key)

const Contact = () =>

  <div>
    <h2>{t("heading")}</h2>
    <p>
      {t("text1")}<br /><br />
      Helmut Wolman  <br />
      Turley-Platz 9  <br />
      68167 Mannheim  <br />

      <a href = 'https://www.kartevonmorgen.org/#/?entry=0b89e6d0945740b3a77f240d9cdab0e9&zoom=15.00'>{t("showOnKVM")}</a>
    </p>
    <p>

      <FontAwesomeIcon icon={['fab', 'facebook']} />
      {" "}<a target="_blank" href = { URLs.FACEBOOK.link }>{ URLs.FACEBOOK.name }</a>
      <br />
      <FontAwesomeIcon icon="envelope" />
      {" "}<a target="_blank" href = {URLs.MAIL.link}>{ URLs.MAIL.name }</a>
      <br />
      <FontAwesomeIcon icon={['fab', 'github']} />
      {" "}<a target="_blank" href = {URLs.REPOSITORY.link}>{ URLs.REPOSITORY.name }</a>
    </p>
  <hr />
  </div>

module.exports = Contact;
