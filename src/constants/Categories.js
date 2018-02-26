let c = {};

c.IDS = {
  INITIATIVE: "2cd00bebec0c48ba9db761da48678134",
  EVENT: "c2dc278a2d6a4b9b8a50cb606fc017ed",
  COMPANY: "77b3c33a92554bcf8e8c2c86cedd6f6f"
};

c.NAMES = {};
c.NAMES[c.IDS.INITIATIVE] = "initiative"
c.NAMES[c.IDS.EVENT] = "event"
c.NAMES[c.IDS.COMPANY] = "company"

c.MAIN_IDS = [c.IDS.INITIATIVE, c.IDS.EVENT, c.IDS.COMPANY];

c.CSS_CLASS_SIZE = {};
c.CSS_CLASS_SIZE[c.IDS.INITIATIVE] = "pure-u-8-24";
c.CSS_CLASS_SIZE[c.IDS.EVENT] = "pure-u-7-24";
c.CSS_CLASS_SIZE[c.IDS.COMPANY] = "pure-u-9-24";

module.exports = c;
