// TODO: import React                  from "react";
// TODO: import styled                 from "styled-components";
// TODO: import { translate }          from "react-i18next";
// TODO: import { REGISTRATION_TYPE }  from "../../constants/Events";
// TODO: 
// TODO: const EventRegistrationInfo = props => {
// TODO:   const { event, t, getMailLink, getTelLink, getHomepageLink } = props;
// TODO:   const { registration, email, phone, homepage } = event;
// TODO:   var registrationLink;
// TODO:   switch(registration){
// TODO:     case REGISTRATION_TYPE.TELEPHONE:
// TODO:       registrationLink = getTelLink(event)
// TODO:       break;
// TODO:     case REGISTRATION_TYPE.EMAIL:
// TODO:       registrationLink = getMailLink(event)
// TODO:       break;
// TODO:     case REGISTRATION_TYPE.HOMEPAGE:
// TODO:       registrationLink = getHomepageLink(event, t)
// TODO:       break;
// TODO:   }
// TODO: 
// TODO:   return (<RegistrationInfoDiv>{
// TODO:     t("entryDetails.eventRegistrationInfo." + event.registration)
// TODO:     + ": "}
// TODO:     { registrationLink }
// TODO:   </RegistrationInfoDiv>);
// TODO: }
// TODO: 
// TODO: const RegistrationInfoDiv = styled.div`
// TODO:   margin: 1em 0 0 0;
// TODO: `;
// TODO: 
// TODO: module.exports = translate('translation')(EventRegistrationInfo)
