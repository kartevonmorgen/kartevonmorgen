const grayBlue   = "rgb(99,   122,  132)";
const blue       = "rgb(0,    153,  173)";
const green      = "rgb(150,  191,  12 )";
const yellow     = "rgb(255,  221,  0  )";
const pink       = "rgb(229,  96,   145)";
const berry      = "rgb(170,  56,   107)";
const coal       = "rgb(26,   26,   26)";
const anthracite = "rgb(45,   45,   45)";
const darkGray   = "rgb(102,  102,  102)";
const gray       = "rgb(136,  136,  136)";
const lightGray  = "rgb(221,  221,  221)";

const rating_contexts = {
  "diversity": green,      // GREEN
  "renewable": yellow,      // YELLOW
  "fairness": pink,       // PINK
  "humanity": berry,       // RASPBERRY
  "transparency": grayBlue,   // BLUEGRAY
  "solidarity": blue,     // BLUE
  "default": lightGray
}

const bodyFont= `"Museo", sans-serif`;
const headerFont= `"Museo", sans-serif`;


module.exports = {
  grayBlue:   grayBlue,
  blue:       blue,
  green:      green,
  yellow:     yellow,
  pink:       pink,
  berry:      berry,
  coal:       coal,
  anthracite: anthracite,
  lightGray:  lightGray,
  darkGray:   darkGray,

  company:    blue,
  initiative: green,
  event:      pink,
  otherCategory: lightGray,

  rating_contexts: rating_contexts,

  bodyFont: bodyFont,
  headerFont: headerFont
};