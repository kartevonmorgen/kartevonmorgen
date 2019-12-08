// TODO: import React         from "react";
// TODO: import styled        from "styled-components";
// TODO: import { translate } from "react-i18next";
// TODO:
// TODO: import { getDatetimeString, getTimeString, getDateString } from "../../util/datetime";
// TODO:
// TODO: const TimesWrapper = styled.div`
// TODO:   margin-top: 7px;
// TODO: `;
// TODO:
// TODO: const EventTimes = ({ start, end, showTimes }) => {
// TODO:   const onSameDay = getDateString(start) === getDateString(end);
// TODO:   const startString = showTimes ? getDatetimeString(start): getDateString(start);
// TODO:   const endString = end
// TODO:     ? (onSameDay
// TODO:         ? (showTimes ? getTimeString(end)     : null)
// TODO:         : (showTimes ? getDatetimeString(end) : getDateString(end))
// TODO:       )
// TODO:     : null;
// TODO:   return (
// TODO:     <TimesWrapper>
// TODO:       <span>{
// TODO:         startString
// TODO:         + (endString ? (" - " + endString) : "")
// TODO:       }</span>
// TODO:     </TimesWrapper>
// TODO:   );
// TODO: }
// TODO:
// TODO: module.exports = translate('translation')(EventTimes)
