import React from 'react'
import PropTypes from 'prop-types'

import moment from 'moment'
import openingHours from 'opening_hours'
import isString from 'lodash/isString'

import i18n from "../../i18n"
import styled from "styled-components"
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome"


const OpeningHours = (props) => {
  const {oh: ohString} = props
  let oh = {}
  try {
    oh = new openingHours(ohString)
  }
  catch (e) {
    if (isString(ohString)) {
      return (<span>{ohString}</span>)
    }

    return (<span>No timetable or and invalid opening hours provided</span>)
  }

  moment.locale(i18n.language)
  const localeWeekDays = moment.weekdays(true)
  const calendar = moment.weekdays(false).map(day => ({idx: localeWeekDays.indexOf(day),name: day, intervals: []}))

  const startOfWeek = moment().startOf('week').toDate()
  const endOfWeek = moment().endOf('week').toDate()

  // the intervals returned are chunked by continues intervals ->
  // -> an interval may began from a day to its day after when converting to local locale
  // hence we should break it to fit in a local day
  const intervals = oh.getOpenIntervals(startOfWeek, endOfWeek)
  for (let i = 0; i !== intervals.length; i++) {
    const [start, end, unknown, comment] = intervals[i]
    const startMoment = moment(start).local()
    const endMoment = moment(end).local()

    if (startMoment.isSame(endMoment, 'day')){
      calendar[startMoment.day()].intervals.push([startMoment, endMoment])
    } else {
      // we are in the situation of a long continues interval like 24/7
      // from end of today
      calendar[startMoment.day()].intervals.push([startMoment, startMoment.clone().set({hour: 23, minute: 59}), unknown, comment])

      // if there are days between start and end consider them
      const middleDayMoment = startMoment.clone().set({hour: 0, minute: 0}).add(1, 'day')
      while (middleDayMoment.isBefore(endMoment, 'day')) {
        calendar[middleDayMoment.day()].intervals.push([
          middleDayMoment.clone(),
          middleDayMoment.clone().set({hour: 23, minute: 59}),
          unknown,
          comment
        ])

        middleDayMoment.add(1, 'day')
      }

      // continues from the midnight of the tomorrow
      // if it's not on the next week
      if (endMoment.day() !== 0) {
        calendar[endMoment.day()].intervals.push([middleDayMoment, endMoment, unknown, comment])
      }
    }
  }

  const getOpeningHoursString = (intervals) => {
    let s = ''
    intervals.map(([start, end, unknown, comment], i) => {
      if (i !== 0) {
        s += ', '
      }

      if (unknown) {
        s += 'maybe '
      }

      s += `${start.format('H:mm')} - ${end.format('H:mm')}`

      if (comment) {
        s += comment
      }
    })

    return s
  }

  return (
    <div className="pure-g">
      <FontAwesomeIconElement className="pure-u-1-24" icon="clock" />
      <SectionTitle className="pure-u-21-24">
        {i18n.t("entryForm.openingHours")}
      </SectionTitle>
      <div className="pure-u-1-1">
        <Calendar >
          {
            calendar.sort((day1, day2) => day1.idx - day2.idx).map(day => (
              <CalendarRow className="pure-u-1-1">
                <div className="pure-u-1-3">
                  {`${day.name}:`}
                </div>
                <div className="pure-u-2-3">
                  {
                    getOpeningHoursString(day.intervals)
                  }
                </div>
              </CalendarRow>
            ))
          }
        </Calendar>
      </div>
    </div>
  )
}

export default OpeningHours

OpeningHours.PropTypes = {
  oh: PropTypes.string  // the open hours string see issue #383
}

const SectionTitle = styled.span`
  font-weight: 500 !important;
`

const Calendar = styled.div`
  margin-top: 0.25em;
`
const CalendarRow = styled.div`
  margin-top: 0.25em;
`
const FontAwesomeIconElement = styled(FontAwesomeIcon)`
  margin-right: 12px;
  height: 16px !important;
  width: 16px !important;
`;