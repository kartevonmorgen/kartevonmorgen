import React         from "react";
import styled        from "styled-components";
import { translate } from "react-i18next";

import { getDatetimeString, getTimeString, getDateString } from "../../util/datetime";

const TimesWrapper = styled.div`
  margin-top: 7px;
`;

const EventTimes = ({ start, end, showTimes }) => {
  const onSameDay = getDateString(start) === getDateString(end);
  const startString = showTimes ? getDatetimeString(start): getDateString(start);
  const endString = end
    ? (onSameDay
        ? (showTimes ? getTimeString(end)     : null)
        : (showTimes ? getDatetimeString(end) : getDateString(end))
      )
    : null;
  return (
    <TimesWrapper>
      <span>{
        startString
        + (endString ? (" - " + endString) : "")
      }</span>
    </TimesWrapper>
  );
}

export default translate('translation')(EventTimes)
