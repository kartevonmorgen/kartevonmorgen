import i18n from "react-i18next";

const getDatetimeString = (unixtime) => {
  return getDateString(unixtime) + ", " + getTimeString(unixtime)
}

const getDateString = (unixtime) => {
  const d = new Date(unixtime * 1000);
  const now = new Date();
  const isInThisYear = d.getYear() === now.getYear();
  let s = "";
  s += d.getDate() + ".";
  s += (d.getMonth() + 1) + ".";
  if(!isInThisYear) s += (d.getYear() + 1900);

  return s;
}

const getTimeString = (unixtime) => {
  const d = new Date(unixtime * 1000);
  let s = "";
  s += d.getHours();
  s += ":" + d.getMinutes().toString().padStart(2, "0");
  return s;
}

const getMidnightUnixtime = (dayUnixtime) => {
  const dayDateObject = new Date(dayUnixtime * 1000);
  const midnightUnixtime = (dayDateObject
    - dayDateObject.getMilliseconds()
    - dayDateObject.getSeconds() * 1000
    - dayDateObject.getMinutes() * 1000 * 60
    - dayDateObject.getHours()   * 1000 * 60 * 60) / 1000;
  return midnightUnixtime;
}

module.exports = { getDatetimeString, getTimeString, getDateString, getMidnightUnixtime };