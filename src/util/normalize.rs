// TODO: const url = (value) => {
// TODO:   if ((value == null) || value.length === 0) {
// TODO:     return value;
// TODO:   }
// TODO:   if (!((value.indexOf("http://") === 0) || (value.indexOf("https://") === 0))) {
// TODO:     value = "http://" + value;
// TODO:   }
// TODO:   return value;
// TODO: };
// TODO:
// TODO: const tags = (value) => {
// TODO:   if (value == null || value == undefined) {
// TODO:     return false;
// TODO:   }
// TODO:   value = value.split(',')[0]
// TODO:
// TODO:   value = value
// TODO:     .toLowerCase()
// TODO:     .replace(/[_ ]/g,'-')
// TODO:     .replace(' ','-')
// TODO:     .replace('--', '-')
// TODO:     .replace(/[^a-zA-Z0-9äöüÄÖÜß\-, ]/gi, '')
// TODO:
// TODO:   if (value.length < 3 ){
// TODO:     return false;
// TODO:   }
// TODO:
// TODO:   return value;
// TODO: };
// TODO:
// TODO: module.exports = { url, tags };
