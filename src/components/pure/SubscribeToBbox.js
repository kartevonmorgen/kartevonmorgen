import React                from "react";
import styled               from "styled-components";
import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome';

import Actions              from "../../Actions"; //TODO: remove dependency
import NavButton            from "./NavButton";
import i18n                 from "../../i18n";
import NavButtonWrapper     from "../pure/NavButtonWrapper";

const SubscribeToBboxContent = styled.div`
  margin: 2em 1.8em 1.8em 1.8em;
  flex-grow: 1;
`;

const SubscribeToBboxWrapper = styled.div`
  display: flex;
  flex-direction: column;
  height: 100%;
`;

const t = (key) => {
  return i18n.t("subscribeToBbox." + key);
}

const subscribeToBbox = ({subscriptionExists, dispatch, bbox, email, mapCenter}) => {
  if(subscriptionExists){
    return (
      <SubscribeToBboxWrapper>
        <SubscribeToBboxContent>
          <h3>{t("changeSubscription.heading")}</h3>
          <p>{t("changeSubscription.text1")}</p>
          <p>{t("changeSubscription.text2")}</p>
        </SubscribeToBboxContent>
        <NavButtonWrapper className="menu pure-g">
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
              dispatch(Actions.unsubscribeFromBboxes(email));
            }}
            icon = "trash"
            text = { t("unsubscribe") }
          />
        </NavButtonWrapper>
      </SubscribeToBboxWrapper>)
  } else {
    return (
      <SubscribeToBboxWrapper>
        <SubscribeToBboxContent>
          <h3>{t("newSubscription.heading")}</h3>
          <p>{t("newSubscription.text1")}</p>
          <p>{t("newSubscription.text2")}</p>
        </SubscribeToBboxContent>
        <NavButtonWrapper className="menu pure-g">
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
        </NavButtonWrapper>
      </SubscribeToBboxWrapper>)
  }
}

export default subscribeToBbox
