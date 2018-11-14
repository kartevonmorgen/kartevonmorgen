const grayBlue   = "rgb(100,  122,  133)";
const blue       = "rgb(0,    153,  173)";
const green      = "rgb(151,  191,  13 )";
const yellow     = "rgb(255,  221,  0  )";
const pink       = "rgb(229,  98,   146)";
const berry      = "rgb(170,  56,   108)";
const coal       = "rgb(26,   26,   26)";
const anthracite = "rgb(45,   45,   45)";
const darkGray   = "rgb(102,  102,  102)";
const gray       = "rgb(136,  136,  136)";
const lightGray  = "rgb(221,  221,  221)";
const teal       = "rgb(0,    152,  137)";
const yellowText = "rgb(214,  201,  0  )";

const rating_contexts = {
  "diversity": green,      // GREEN
  "renewable": yellow,      // YELLOW
  "fairness": pink,       // PINK
  "humanity": berry,       // RASPBERRY
  "transparency": grayBlue,   // BLUEGRAY
  "solidarity": blue,     // BLUE
  "default": lightGray
}

const bodyFont= `"Rubik", sans-serif`;
const headerFont= `"Rubik", sans-serif`;


module.exports = {
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