import React                  from "react";
import styled                 from "styled-components";
import { translate }          from "react-i18next";
import { REGISTRATION_TYPE }  from "../../constants/Events";

const EventRegistrationInfo = props => {
  const { event, t, getMailLink, getTelLink, getHomepageLink } = props;
  const { registration, email, phone, homepage } = event;
  var registrationLink;
  switch(registration){
    case REGISTRATION_TYPE.TELEPHONE:
      registrationLink = getTelLink(event)
      break;
    case REGISTRATION_TYPE.EMAIL:
      registrationLink = getMailLink(event)
      break;
    case REGISTRATION_TYPE.HOMEPAGE:
      registrationLink = getHomepageLink(event, t)
      break;
  }

  return (<RegistrationInfoDiv>{
    t("entryDetails.eventRegistrationInfo." + event.registration)
    + ": "}
    { registrationLink }
  </RegistrationInfoDiv>);
}

const RegistrationInfoDiv = styled.div`
  margin: 1em 0 0 0;
`;

export default translate('translation')(EventRegistrationInfo)
