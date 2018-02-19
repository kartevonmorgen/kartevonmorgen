import Message    from "./Message";
import Actions    from "../Actions";
import { DONATE } from "../constants/URLs";
import V          from "../constants/PanelView";
import i18n       from "../i18n";
import React      from "react";

const t = (key) => {
  return i18n.t("modal." + key);
}

module.exports = ({view, dispatch}) => {

  switch (view.modal) {

    case V.LOCATE:
      return (
        <div className= 'modal'>
          <Message
            iconClass = "fa fa-spinner fa-pulse"
            message = {"  " + t("locate.inProgress")}
            cancelButtonLabel = {t("locate.cancel")}
            onCancel = { () => dispatch(Actions.cancelOwnPosition()) }
            />
        </div>
      );

    case V.LOCATE_DISABLED:
      return (
        <div className = 'modal'>
          <Message
            iconClass = "fa fa-exclamation-triangle"
            message = { "  " + t("locate.failed") }
            cancelButtonLabel = {t("locate.close")}
            onCancel = { () => dispatch(Actions.cancelOwnPosition()) }
            actionButtonLabel = {t("locate.tryAgain")}
            actionButtonIcon = "fa fa-repeat"
            onAction = { () => dispatch(Actions.showOwnPosition15minutes()) }
            />
        </div>
      );

    case V.DONATE_FOR_EVENTS:
      return (
        <div className = 'modal'>
          <Message
            iconClass = "fa fa-info-circle"
            message = { "   " + t("events.text") } 
            cancelButtonLabel = {t("events.close")}
            onCancel = { () => dispatch(Actions.showFeatureToDonate(null)) }
            actionButtonLabel = {t("events.donate")}
            actionButtonIcon = "fa fa-external-link"
            onAction = { () => window.open(DONATE.link, '_blank').focus() }
            />
        </div>
      );
    default:
      return <div></div>;
  }
}
