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
    const onSameDay = getDateString(start) === getDateString(end);
    const startString = showTimes ? getDatetimeString(start): getDateString(start);
    const endString = end ?
      (onSameDay ? 
        (showTimes ? getTimeString(end) : null)
        : (showTimes ? getDatetimeString(end) : getDateString(end))
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