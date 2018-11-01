import React    from "react";
import Actions  from "../Actions";
import NavButton from "./NavButton";
import styled   from "styled-components";
import i18n     from "../i18n";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const SubscribeToBboxContent = styled.div`
  padding-left: 1.4em;
  padding-right: 1.4em;
`;

const t = (key) => {
  return i18n.t("subscribeToBbox." + key);
}

const subscribeToBbox = ({subscriptionExists, dispatch, bbox, username, mapCenter}) => {
  if(subscriptionExists){
    return (
      <div> 
        <SubscribeToBboxContent>
          <h3>{t("changeSubscription.heading")}</h3>
          <p>{t("changeSubscription.text1")}</p>
          <p>{t("changeSubscription.text2")}</p>
        </SubscribeToBboxContent>
        <nav className="menu pure-g">
          <NavButton
            keyName = "back"
            classname = "pure-u-1-2"
            onClick = { () => {
              dispatch(Actions.showSearchResults());
            }}
            icon = "chevron-left"
            text = { t("back") }
          />
          <NavButton
            keyName = "save"
            classname = "pure-u-1-2"
            onClick = { () => {
              dispatch(Actions.subscribeToBbox(bbox, true));
            }}
            icon = "pencil"
            text = { t("edit") }
          />
          <NavButton
            keyName = "delete"
            classname = "pure-u-1-1"
            onClick = { () => {
              dispatch(Actions.unsubscribeFromBboxes(username));
            }}
            icon = "trash"
            text = { t("unsubscribe") }
          />
        </nav>
      </div>)
  } else {
    return ( 
      <div>
        <SubscribeToBboxContent>
          <h3>{t("newSubscription.heading")}</h3>
          <p>{t("newSubscription.text1")}</p>
          <p>{t("newSubscription.text2")}</p>
        </SubscribeToBboxContent>
        <nav className="menu pure-g">
          <NavButton
            keyName = "back"
            classname = "pure-u-1-2"
            onClick = {() => {
              dispatch(Actions.showSearchResults());
              dispatch(Actions.setCenterInUrl(mapCenter));
            }}
            icon = "chevron-left"
            text = { t("back") }
          />
          <NavButton
            keyName = "save"
            classname = "pure-u-1-2"
            onClick = { () => {
              dispatch(Actions.subscribeToBbox(bbox, false));
            }}
            icon = "envelope"
            text = { t("subscribe") }
          />
        </nav>
      </div>)
  }
}

module.exports = subscribeToBbox