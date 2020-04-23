import React, {useState, useEffect}            from "react";
import {connect}        from "react-redux";

import { translate }    from "react-i18next";
import styled           from "styled-components";

import ReactTooltip     from "react-tooltip";

import STYLE            from "../styling/Variables"
import {getHistoryLink}  from '../../util/constructUrl'

const Footer = props => {

  const { entryId, changed, t, isEvent } = props;

  const [isScrollable, setIsScrollable] = useState(false)

  useEffect(() => {
    setIsScrollable(getIsScrollable())
  }, [entryId])

  const getDateStrings = (changed) => {
    const now = Date.now()
    const edited = new Date(changed*1000)
    const diffDate = Math.round((now-edited)/(1000*60*60*24))
    const fullDate = edited.toLocaleString()
    const fullDateString = t("entryDetails.lastEdit") + " " + ((diffDate < 1)
      ? t("entryDetails.today")
      : diffDate + " " + t("entryDetails.daysAgo") )

    return [fullDate, fullDateString]
  }

  const getIsScrollable = () => {
    const sidebar = document.getElementById("ScrollableEntryDetailsWrapper")
    return sidebar.scrollHeight > sidebar.clientHeight
  }

  let [fullDate, fullDateString] = [null, null]
  if (!isEvent) {
    [fullDate, fullDateString] = getDateStrings(changed)
  }

  const subject = t("entryDetails.reportSubject")
  const body = "%0D%0A"
    + t("entryDetails.reportBody").replace("{link}", (" «"+props.title + "»%0D%0A (" + encodeURIComponent(window.location.href) + ")%0D%0A "))
    + '%0D%0A%0D%0A'
  const mailToString = `mailto:report@kartevonmorgen.org?subject=${subject}&body=${body}`

  return(
    <FooterWrapper isScrollable={isScrollable}>
      <MetaFoot>
        <HistoryLink
          data-tip="archiveLink"
          data-for="archiveLink"
          href={getHistoryLink(entryId)}
          target="_blank"
          rel="noopener noreferrer"
        >
          <b>{t("entryDetails.viewHistory")}</b>
        </HistoryLink>
        <ReactTooltip id="archiveLink" type="warning" place="top">
          {t("entryDetails.viewHistoryTooltip")}
        </ReactTooltip>

        <a href={mailToString}><b>{t("entryDetails.reportLink")}</b></a>
        {
          !isEvent &&
          <span><a title={fullDate}>{fullDateString} // v{props.version}</a></span>
        }
      </MetaFoot>
    </FooterWrapper>
  )
}


const mapStateToProps = ({search}) => ({
  entryId: search.current
})

const MetaFooter = translate('translation')(connect(mapStateToProps)(Footer))

const HistoryLink = styled.a`
  display: block;
  // text-align: center;
  margin-bottom: 8px;
`

const FooterWrapper = styled.div`
  ${
  ({isScrollable}) => !isScrollable && `
      position: absolute;
   `}

  bottom: 0;
  width: 100%;
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
