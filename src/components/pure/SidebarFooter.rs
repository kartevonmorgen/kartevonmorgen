// TODO: import React          from "react"
// TODO: import { translate }  from "react-i18next";
// TODO: import styled         from "styled-components";
// TODO: import STYLE          from "../styling/Variables"
// TODO: 
// TODO: const Footer = props => {
// TODO: 
// TODO:   const { changed, t } = props;
// TODO: 
// TODO:   const now = Date.now()
// TODO:   const edited = new Date(changed*1000)
// TODO:   const diffDate = Math.round((now-edited)/(1000*60*60*24))
// TODO:   const fullDate = edited.toLocaleString()
// TODO:   const fullDateString = t("entryDetails.lastEdit") + " " + ((diffDate < 1)
// TODO:     ? t("entryDetails.today")
// TODO:     : diffDate + " " + t("entryDetails.daysAgo") )
// TODO: 
// TODO:   const subject = t("entryDetails.reportSubject")
// TODO:   const body = "%0D%0A"
// TODO:     + t("entryDetails.reportBody").replace("{link}", (" «"+props.title + "»%0D%0A (" + encodeURIComponent(window.location.href) + ")%0D%0A "))
// TODO:     + '%0D%0A%0D%0A'
// TODO:   const mailToString = `mailto:report@kartevonmorgen.org?subject=${subject}&body=${body}`
// TODO: 
// TODO:   return(
// TODO:     <FooterWrapper>
// TODO:       <MetaFoot>
// TODO:         <a href={mailToString}><b>{t("entryDetails.reportLink")}</b></a>
// TODO:         <span><a title={fullDate}>{fullDateString} // v{props.version}</a></span>
// TODO:       </MetaFoot>
// TODO:     </FooterWrapper>
// TODO:   )
// TODO: }
// TODO: 
// TODO: const MetaFooter = translate('translation')(Footer)
// TODO: 
// TODO: const FooterWrapper = styled.div`
// TODO:   background-color: #f9f9f9;
// TODO:   border-top: 1px solid ${STYLE.lightGray};
// TODO: `
// TODO: 
// TODO: const MetaFoot = styled.div`
// TODO:   color: #aaa;
// TODO:   text-align: left;
// TODO:   line-height: 1.5;
// TODO:   font-size: 0.7rem;
// TODO:   /* margin-top: auto;
// TODO:   margin-bottom: -1rem; */
// TODO:   margin: 1rem 1.8em;
// TODO: 
// TODO:   > a:link {color: #000; }
// TODO:   >span { float: right; }
// TODO: `
// TODO: export default MetaFooter
