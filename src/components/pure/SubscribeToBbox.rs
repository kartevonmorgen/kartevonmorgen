// TODO: import React                from "react";
// TODO: import styled               from "styled-components";
// TODO: import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome';
// TODO:
// TODO: import Actions              from "../../Actions"; //TODO: remove dependency
// TODO: import NavButton            from "./NavButton";
// TODO: import i18n                 from "../../i18n";
// TODO: import NavButtonWrapper     from "../pure/NavButtonWrapper";
// TODO:
// TODO: const SubscribeToBboxContent = styled.div`
// TODO:   margin: 2em 1.8em 1.8em 1.8em;
// TODO:   flex-grow: 1;
// TODO: `;
// TODO:
// TODO: const SubscribeToBboxWrapper = styled.div`
// TODO:   display: flex;
// TODO:   flex-direction: column;
// TODO:   height: 100%;
// TODO: `;
// TODO:
// TODO: const t = (key) => {
// TODO:   return i18n.t("subscribeToBbox." + key);
// TODO: }
// TODO:
// TODO: const subscribeToBbox = ({subscriptionExists, dispatch, bbox, email, mapCenter}) => {
// TODO:   if(subscriptionExists){
// TODO:     return (
// TODO:       <SubscribeToBboxWrapper>
// TODO:         <SubscribeToBboxContent>
// TODO:           <h3>{t("changeSubscription.heading")}</h3>
// TODO:           <p>{t("changeSubscription.text1")}</p>
// TODO:           <p>{t("changeSubscription.text2")}</p>
// TODO:         </SubscribeToBboxContent>
// TODO:         <NavButtonWrapper className="menu pure-g">
// TODO:           <NavButton
// TODO:             keyName = "back"
// TODO:             classname = "pure-u-1-2"
// TODO:             onClick = { () => {
// TODO:               dispatch(Actions.showSearchResults());
// TODO:             }}
// TODO:             icon = "chevron-left"
// TODO:             text = { t("back") }
// TODO:           />
// TODO:           <NavButton
// TODO:             keyName = "save"
// TODO:             classname = "pure-u-1-2"
// TODO:             onClick = { () => {
// TODO:               dispatch(Actions.subscribeToBbox(bbox, true));
// TODO:             }}
// TODO:             icon = "pencil"
// TODO:             text = { t("edit") }
// TODO:           />
// TODO:           <NavButton
// TODO:             keyName = "delete"
// TODO:             classname = "pure-u-1-1"
// TODO:             onClick = { () => {
// TODO:               dispatch(Actions.unsubscribeFromBboxes(email));
// TODO:             }}
// TODO:             icon = "trash"
// TODO:             text = { t("unsubscribe") }
// TODO:           />
// TODO:         </NavButtonWrapper>
// TODO:       </SubscribeToBboxWrapper>)
// TODO:   } else {
// TODO:     return (
// TODO:       <SubscribeToBboxWrapper>
// TODO:         <SubscribeToBboxContent>
// TODO:           <h3>{t("newSubscription.heading")}</h3>
// TODO:           <p>{t("newSubscription.text1")}</p>
// TODO:           <p>{t("newSubscription.text2")}</p>
// TODO:         </SubscribeToBboxContent>
// TODO:         <NavButtonWrapper className="menu pure-g">
// TODO:           <NavButton
// TODO:             keyName = "back"
// TODO:             classname = "pure-u-1-2"
// TODO:             onClick = {() => {
// TODO:               dispatch(Actions.showSearchResults());
// TODO:               dispatch(Actions.setCenterInUrl(mapCenter));
// TODO:             }}
// TODO:             icon = "chevron-left"
// TODO:             text = { t("back") }
// TODO:           />
// TODO:           <NavButton
// TODO:             keyName = "save"
// TODO:             classname = "pure-u-1-2"
// TODO:             onClick = { () => {
// TODO:               dispatch(Actions.subscribeToBbox(bbox, false));
// TODO:             }}
// TODO:             icon = "envelope"
// TODO:             text = { t("subscribe") }
// TODO:           />
// TODO:         </NavButtonWrapper>
// TODO:       </SubscribeToBboxWrapper>)
// TODO:   }
// TODO: }
// TODO:
// TODO: module.exports = subscribeToBbox
