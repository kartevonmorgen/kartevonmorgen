import i18n from "react-i18next";

const getDatetimeString = (date) => {
  return getDateString(date) + ", " + getTimeString(date)
}

const getDateString = (date) => {
  const d = new Date(date * 1000);
  const now = new Date();
  const isInThisYear = d.getYear() === now.getYear();
  let s = "";
  s += d.getDate() + ".";
  s += (d.getMonth() + 1) + ".";
  if(!isInThisYear) s += (d.getYear() + 1900);

  return s;
}

const getTimeString = (date) => {
  const d = new Date(date * 1000);
  let s = "";
  s += d.getHours();
  s += ":" + d.getMinutes().toString().padStart(2, "0");
  return s;
}

module.exports = { getDatetimeString, getTimeString, getDateString };
