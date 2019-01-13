import React, { Component }   from "react";
import { pure }               from "recompose";
import styled                 from "styled-components";
import { translate }          from "react-i18next";
import { getDatetimeString, getTimeString, getDateString } from "../util/datetime";

const TimesWrapper = styled.div`
  margin-top: 7px;
`;

class EventTimes extends Component {

  render() {
    const { start, end, showTimes } = this.props;
    const startDate = new Date(start);
    const endDate = new Date(end);
    const onSameDay = getDateString(startDate) === getDateString(endDate);
    const startString = showTimes ? getDatetimeString(startDate): getDateString(startDate);
    console.log(end, endDate, getDateString(endDate),getDatetimeString(endDate),getTimeString(endDate),)
    const endString = end ?
      (onSameDay ? 
        (showTimes ? getTimeString(endDate) : null)
        : (showTimes ? getDatetimeString(endDate) : getDateString(endDate))
      )
      : null;
    return (
      <TimesWrapper>
        <span>{ 
          startString 
          + (endString ? (" - " + endString) : "")
        }</span>
      </TimesWrapper>)
    }
  }

module.exports = translate('translation')(pure(EventTimes))