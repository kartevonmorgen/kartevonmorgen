import i18n from "react-i18next";

const getDatetimeString = (date) => {
  return getDateString(date) + ", " + getTimeString(date)
}

const getDateString = (date) => {
  const now = new Date();
  const isInThisYear = date.getYear() === now.getYear();
  let s = "";
  s += date.getDate() + ".";
  s += (date.getMonth() + 1) + ".";
  if(!isInThisYear) s += (date.getYear() + 1900);

  return s;
}

const getTimeString = (date) => {
  let s = "";
  s += date.getHours();
  s += ":" + date.getMinutes().toString().padStart(2, "0");
  return s;
}

module.exports = { getDatetimeString, getTimeString, getDateString };
