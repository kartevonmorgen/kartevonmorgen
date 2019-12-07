// TODO: import React                from "react";
// TODO: import styled,{ keyframes } from "styled-components";
// TODO: 
// TODO: import Message              from "./Message";
// TODO: import Actions              from "../../Actions"; //TODO: remove dependency
// TODO: import { DONATE }           from "../../constants/URLs";
// TODO: import V                    from "../../constants/PanelView";
// TODO: import i18n                 from "../../i18n";
// TODO: 
// TODO: const t = (key) => i18n.t("modal." + key)
// TODO: 
// TODO: module.exports = ({view, dispatch}) => {
// TODO: 
// TODO:   switch (view.modal) {
// TODO: 
// TODO:     case V.LOCATE:
// TODO:       return (
// TODO:         <Modal className= 'modal'>
// TODO:           <Message
// TODO:             iconClass = "spinner"
// TODO:             message = {"  " + t("locate.inProgress")}
// TODO:             cancelButtonLabel = {t("locate.cancel")}
// TODO:             onCancel = { () => dispatch(Actions.cancelOwnPosition()) }
// TODO:             />
// TODO:         </Modal>
// TODO:       );
// TODO: 
// TODO:     case V.LOCATE_DISABLED:
// TODO:       return (
// TODO:         <Modal className = 'modal'>
// TODO:           <Message
// TODO:             iconClass = "exclamation-triangle"
// TODO:             message = { "  " + t("locate.failed") }
// TODO:             cancelButtonLabel = {t("locate.close")}
// TODO:             onCancel = { () => dispatch(Actions.cancelOwnPosition()) }
// TODO:             actionButtonLabel = {t("locate.tryAgain")}
// TODO:             actionButtonIcon = "sync-alt"
// TODO:             onAction = { () => dispatch(Actions.showOwnPosition15minutes()) }
// TODO:             />
// TODO:         </Modal>
// TODO:       );
// TODO: 
// TODO:     case V.DONATE_FOR_EVENTS:
// TODO:       return (
// TODO:         <Modal className = 'modal'>
// TODO:           <Message
// TODO:             iconClass = "info-circle"
// TODO:             message = { "   " + t("events.text") } 
// TODO:             cancelButtonLabel = {t("events.close")}
// TODO:             onCancel = { () => dispatch(Actions.showFeatureToDonate(null)) }
// TODO:             actionButtonLabel = {t("events.donate")}
// TODO:             actionButtonIcon = "external-link"
// TODO:             onAction = { () => window.open(DONATE.link, '_blank').focus() }
// TODO:             />
// TODO:         </Modal>
// TODO:       );
// TODO:     default:
// TODO:       return <div></div>;
// TODO:   }
// TODO: }
// TODO: 
// TODO: 
// TODO: const fadein = keyframes`
// TODO:   from { opacity: 0; }
// TODO:   to { opacity: 1; }
// TODO: `
// TODO: 
// TODO: const Modal = styled.div `
// TODO:   position: absolute;
// TODO:   z-index: 100;
// TODO:   width: 100%;
// TODO:   height: 100%;
// TODO:   z-index: 1000;
// TODO:   top: 0;
// TODO:   right: 0;
// TODO:   left: 0;
// TODO:   bottom: 0;
// TODO:   background-color: rgba(0,0,0,0.3);
// TODO:   animation: fadein 500ms;
// TODO: `
