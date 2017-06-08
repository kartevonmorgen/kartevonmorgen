const url = (value) => {
  if ((value == null) || value.length === 0) {
    return value;
  }
  if (!((value.indexOf("http://") === 0) || (value.indexOf("https://") === 0))) {
    value = "http://" + value;
  }
  return value;
};

const tags = (value) => {
  if ((value == null) || value.length === 0) {
    return value;
  }
  return value
    .toLowerCase()
    .replace(' ',',')
    .replace(',,',',')
};

const username = (name) => {
  if ((name == null) || name.length === 0) {
    return name;
  }
  return name
    .toLowerCase()
    .trim()
};

module.exports = { url, tags, username };
