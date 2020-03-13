import React                from "react";
import styled,{ keyframes } from "styled-components";
import SyntaxHighlighter from 'react-syntax-highlighter';
import { docco } from 'react-syntax-highlighter/dist/esm/styles/hljs';
import copy                 from 'copy-to-clipboard';

import Message              from "./Message";
import Actions              from "../../Actions"; //TODO: remove dependency
import { DONATE }           from "../../constants/URLs";
import V                    from "../../constants/PanelView";
import i18n                 from "../../i18n";

const t = (key) => i18n.t("modal." + key)

const getIframeCode = (url) => (
  `<div style="text-align: center;"> 
<iframe style="display: inline-block; border: none" src=" 
${url}
" width="100%" height="580"> 
<a href="https://kartevonmorgen.org/" target="_blank">zur karte</a>
</iframe></div> <p style="text-align: right;">
<a href="https://kartevonmorgen.org" 
target="_blank" rel="noreferrer noopener" aria-label=" (öffnet in neuem Tab)">
Große Karte öffnen</a></p>`
)


module.exports = ({view, dispatch}) => {

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
            message = {
              <SyntaxHighlighter language="javascript" style={docco}>
                {iframeCode}
              </SyntaxHighlighter>
            }
            cancelButtonLabel = {t("events.close")}
            onCancel = { () => dispatch(Actions.closeModal()) }
            actionButtonLabel = "Copy"
            actionButtonIcon = "copy"
            onAction = { () => {
              copy(iframeCode)
              dispatch(Actions.showNotification("Iframe code copied to clipboard!", "success"))
            }}
            optionalActionComponent={
              <a href="http://blog.vonmorgen.org/iframes/" style={{textDecoration: 'none'}}>
                Find out more about sharing options
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
