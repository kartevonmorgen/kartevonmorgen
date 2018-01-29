const grayBlue   = "rgb(100,  122,  133)";
const blue       = "rgb(0,    152,  137)";
const green      = "rgb(151,  191,  13 )";
const yellow     = "rgb(225,  221,  0  )";
const pink       = "rgb(229,  98,   146)";
const berry      = "rgb(170,  56,   108)";
const coal       = "rgb(26,   26,   26)";
const anthracite = "rgb(45,   45,   45)";
const darkGray   = "rgb(102,  102,  102)";
const lightGray  = "rgb(130,  130,  130)";
const rating_contexts = {
  "diversity": "#96bf0c",      // GREEN
  "renewable": "#ffdd00",      // YELLOW
  "fairness": "#e56091",       // PINK
  "humanity": "#aa386b",       // RASPBERRY
  "transparency": "#0099ad",   // BLUE
  "solidarity": "#637a84",     // BLUEGRAY
  "default": "#888"
}

module.exports = {
  grayBlue:   grayBlue,
  blue:       blue,
  green:      green,
  yellow:     yellow,
  pink:       pink,
  berry:      berry,
  coal:       coal,
  anthracite: anthracite,
  darkGray:   darkGray,

  company:    blue,
  initiative: green,
  event:      pink,
  otherCategory: lightGray,

  rating_contexts: rating_contexts
};