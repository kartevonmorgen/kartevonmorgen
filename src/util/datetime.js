import i18n from "react-i18next";
import moment from 'moment'

export const getDatetimeString = (unixtime) => {
  return getDateString(unixtime) + ", " + getTimeString(unixtime)
}

export const getDateString = (unixtime) => {
  const d = new Date(unixtime * 1000);
  const now = new Date();
  const isInThisYear = d.getUTCFullYear() === now.getUTCFullYear();
  let s = "";
  s += d.getUTCDate() + ".";
  s += (d.getUTCMonth() + 1) + ".";
  if(!isInThisYear) s += d.getUTCFullYear();

  return s;
}

export const getTimeString = (unixtime) => {
  const d = new Date(unixtime * 1000);
  let s = "";
  s += d.getUTCHours();
  s += ":" + d.getUTCMinutes().toString().padStart(2, "0");
  return s;
}

export const getMidnightUnixtime = (dayUnixtime) => {
  const dayDateObject = new Date(dayUnixtime * 1000);
  const midnightUnixtime = (dayDateObject
    - dayDateObject.getUTCMilliseconds()
    - dayDateObject.getUTCSeconds() * 1000
    - dayDateObject.getUTCMinutes() * 1000 * 60
    - dayDateObject.getUTCHours()   * 1000 * 60 * 60) / 1000;
  return midnightUnixtime;
}

export default { getDatetimeString, getTimeString, getDateString, getMidnightUnixtime };
