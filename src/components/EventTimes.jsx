import React, { Component }   from "react";
import { pure }               from "recompose";
import styled                 from "styled-components";
import { translate }          from "react-i18next";
import { getDatetimeString, getTimeString }    from "../util/datetime";

const TimesWrapper = styled.div`
  margin-top: 7px;
`;

const StartTime = styled.span`
  
`;

const EndTime = styled.span`
  
`;

class EventTimes extends Component {

  render() {
    const { start, end } = this.props;
    return (
      <TimesWrapper>
        <StartTime>{ getDatetimeString(new Date(start)) }</StartTime>
        { end ? <EndTime>{ " - " + getTimeString(new Date(end)) }</EndTime> : "" }
      </TimesWrapper>)
    }
  }

module.exports = translate('translation')(pure(EventTimes))