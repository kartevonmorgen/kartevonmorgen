import React  from "react"
import URLs   from "../../constants/URLs"
import i18n   from "../../i18n";

const t = (key) => i18n.t("privacy." + key, { 'interpolation': {'escape': false} })

const PrivacyStatement = () =>

  <div className="info">
    <h1>{ t("title") }</h1>
    <div dangerouslySetInnerHTML={{__html: t("text")}}></div>
  </div>

export default PrivacyStatement
