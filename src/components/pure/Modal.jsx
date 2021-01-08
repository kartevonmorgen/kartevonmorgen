import React                from "react";
import styled,{ keyframes } from "styled-components";
import copy                 from 'copy-to-clipboard';
import Lowlight             from 'react-lowlight'
import xmlSyntax           from 'highlight.js/lib/languages/xml'
import 'highlight.js/styles/github.css'
import Message              from "./Message";
import Actions              from "../../Actions"; //TODO: remove dependency
import { DONATE }           from "../../constants/URLs";
import V                    from "../../constants/PanelView";
import i18n                 from "../../i18n";


Lowlight.registerLanguage('xml', xmlSyntax)

const t = (key) => i18n.t("modal." + key)

const getIframeCode = (url) => (
  `<div style="text-align: center;"> 
<iframe style="display: inline-block; border: none" src=" 
${url}
" width="100%" height="580"> 
<a href="${url}" target="_blank">zur karte</a>
</iframe></div> <p style="text-align: right;">
<a href="${url}" 
target="_blank" rel="noreferrer noopener" aria-label=" (öffnet in neuem Tab)">
Große Karte öffnen</a></p>`
)


export default ({view, dispatch}) => {

  const url = window.location.href

  switch (view.modal) {
    case V.LOCATE:
      return (
        <Modal className= 'modal'>
          <Message
            iconClass = "spinner"
            message = {"  " + t("locate.inProgress")}
            cancelButtonLabel = {t("locate.cancel")}
            onCancel = { () => dispatch(Actions.cancelOwnPosition()) }
          />
        </Modal>
      );

    case V.LOCATE_DISABLED:
      return (
        <Modal className = 'modal'>
          <Message
            iconClass = "exclamation-triangle"
            message = { "  " + t("locate.failed") }
            cancelButtonLabel = {t("locate.close")}
            onCancel = { () => dispatch(Actions.cancelOwnPosition()) }
            actionButtonLabel = {t("locate.tryAgain")}
            actionButtonIcon = "sync-alt"
            onAction = { () => dispatch(Actions.showOwnPosition15minutes()) }
          />
        </Modal>
      );

    case V.DONATE_FOR_EVENTS:
      return (
        <Modal className = 'modal'>
          <Message
            iconClass = "info-circle"
            message = { "   " + t("events.text") } 
            cancelButtonLabel = {t("events.close")}
            onCancel = { () => dispatch(Actions.showFeatureToDonate(null)) }
            actionButtonLabel = {t("events.donate")}
            actionButtonIcon = "external-link"
            onAction = { () => window.open(DONATE.link, '_blank').focus() }
          />
        </Modal>
      );
    case V.EMBED:
      const iframeCode = getIframeCode(url)
      return (
        <Modal className = 'modal'>
          <Message
            // iconClass = "info-circle"
            // message = {<div>{lowLight.highlight('html', iframeCode)}</div>}
            message = {
              <Lowlight
                language="html"
                value={iframeCode}
              />
            }
            cancelButtonLabel = {t("events.close")}
            onCancel = { () => dispatch(Actions.closeModal()) }
            actionButtonLabel = {i18n.t('copy')}
            actionButtonIcon = "copy"
            onAction = { () => {
              copy(iframeCode)
              dispatch(Actions.showNotification(i18n.t('growler.iframeCopied'), "success"))
            }}
            optionalActionComponent={
              <a href="http://blog.vonmorgen.org/iframes/" style={{textDecoration: 'none'}}>
                {t('embed.findOutMore')}
              </a>
            }
          />
        </Modal>
      );
    default:
      return <div></div>;
  }
}


const fadein = keyframes`
  from { opacity: 0; }
  to { opacity: 1; }
`

const Modal = styled.div `
  position: absolute;
  z-index: 100;
  width: 100%;
  height: 100%;
  z-index: 1000;
  top: 0;
  right: 0;
  left: 0;
  bottom: 0;
  background-color: rgba(0,0,0,0.3);
  animation: fadein 500ms;
  // border: solid 1.5em rgba(#000, 0.2)
`
