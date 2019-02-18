import React          from "react"
import { translate }  from "react-i18next";
import styled         from "styled-components";
import STYLE          from "../styling/Variables"

const Footer = props => {

  const { changed, t } = props;

  const now = Date.now()
  const edited = new Date(changed*1000)
  const diffDate = Math.round((now-edited)/(1000*60*60*24))
  const fullDate = edited.toLocaleString()
  const fullDateString = t("entryDetails.lastEdit") + " " + ((diffDate < 1)
    ? t("entryDetails.today")
    : diffDate + " " + t("entryDetails.daysAgo") )

  const subject = t("entryDetails.reportSubject")
  const body = "%0D%0A"
    + t("entryDetails.reportBody").replace("{link}", (" «"+props.title + "»%0D%0A (" + encodeURIComponent(window.location.href) + ")%0D%0A "))
    + '%0D%0A%0D%0A'
  const mailToString = `mailto:report@kartevonmorgen.org?subject=${subject}&body=${body}`

  return(
    <FooterWrapper>
      <MetaFoot>
        <a href={mailToString}><b>{t("entryDetails.reportLink")}</b></a>
        <span><a title={fullDate}>{fullDateString} // v{props.version}</a></span>
      </MetaFoot>
    </FooterWrapper>
  )
}

const MetaFooter = translate('translation')(Footer)

const FooterWrapper = styled.div`
  background-color: #f9f9f9;
  border-top: 1px solid ${STYLE.lightGray};
`

const MetaFoot = styled.div`
  color: #aaa;
  text-align: left;
  line-height: 1.5;
  font-size: 0.7rem;
  /* margin-top: auto;
  margin-bottom: -1rem; */
  margin: 1rem 1.8em;

  > a:link {color: #000; }
  >span { float: right; }
`
export default MetaFooter
