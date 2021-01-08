export const grayBlue   = "rgb(100,122,133)";
export const blue       = "rgb(0,153,173)";
export const green      = "rgb(151,191,13)";
export const yellow     = "rgb(255,221,0)";
export const pink       = "rgb(229,98,146)";
export const berry      = "rgb(170,56,108)";
export const coal       = "rgb(26,26,26)";
export const anthracite = "rgb(45,45,45)";
export const darkGray   = "rgb(102,102,102)";
export const gray       = "rgb(136,136,136)";
export const lightGray  = "rgb(221,221,221)";
export const teal       = "rgb(0,152,137)";
export const yellowText = "rgb(214,201,0)";


const rating_contexts = {
  "diversity": green,      // GREEN
  "renewable": yellow,      // YELLOW
  "fairness": pink,       // PINK
  "humanity": berry,       // RASPBERRY
  "transparency": grayBlue,   // BLUEGRAY
  "solidarity": blue,     // BLUE
  "default": lightGray
}

let bodyFont = `"Rubik", sans-serif`;
let headerFont= `"Rubik", sans-serif`;

export default {
  grayBlue,
  blue,
  green,
  yellow,
  pink,
  berry,
  coal,
  anthracite,
  lightGray,
  darkGray,
  yellowText,

  company:    teal,
  initiative: green,
  event:      pink,
  otherCategory: lightGray,

  rating_contexts,

  bodyFont,
  headerFont
};
