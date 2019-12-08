// TODO: import i18n from "react-i18next";
// TODO:
// TODO: const getDatetimeString = (unixtime) => {
// TODO:   return getDateString(unixtime) + ", " + getTimeString(unixtime)
// TODO: }
// TODO:
// TODO: const getDateString = (unixtime) => {
// TODO:   const d = new Date(unixtime * 1000);
// TODO:   const now = new Date();
// TODO:   const isInThisYear = d.getUTCFullYear() === now.getUTCFullYear();
// TODO:   let s = "";
// TODO:   s += d.getUTCDate() + ".";
// TODO:   s += (d.getUTCMonth() + 1) + ".";
// TODO:   if(!isInThisYear) s += d.getUTCFullYear();
// TODO:
// TODO:   return s;
// TODO: }
// TODO:
// TODO: const getTimeString = (unixtime) => {
// TODO:   const d = new Date(unixtime * 1000);
// TODO:   let s = "";
// TODO:   s += d.getUTCHours();
// TODO:   s += ":" + d.getUTCMinutes().toString().padStart(2, "0");
// TODO:   return s;
// TODO: }
// TODO:
// TODO: const getMidnightUnixtime = (dayUnixtime) => {
// TODO:   const dayDateObject = new Date(dayUnixtime * 1000);
// TODO:   const midnightUnixtime = (dayDateObject
// TODO:     - dayDateObject.getUTCMilliseconds()
// TODO:     - dayDateObject.getUTCSeconds() * 1000
// TODO:     - dayDateObject.getUTCMinutes() * 1000 * 60
// TODO:     - dayDateObject.getUTCHours()   * 1000 * 60 * 60) / 1000;
// TODO:   return midnightUnixtime;
// TODO: }
// TODO:
// TODO: module.exports = { getDatetimeString, getTimeString, getDateString, getMidnightUnixtime };
