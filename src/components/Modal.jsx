import Message    from "./Message";
import Actions    from "../Actions";
import { DONATE } from "../constants/URLs";
import V          from "../constants/PanelView";
import i18n       from "../i18n";
import React      from "react";
import styled,{ keyframes } from "styled-components";

const t = (key) => {
  return i18n.t("modal." + key);
}

module.exports = ({view, dispatch}) => {

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
`
