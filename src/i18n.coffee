i18n             = require 'i18next'
XHR from         = require 'i18next-xhr-backend';
LanguageDetector = require 'i18next-browser-languagedetector';
i18n.use XHR
i18n.use LanguageDetector
i18n.init
  fallbackLng: 'de'
  ns: [ 'translation' ]
  defaultNS: 'translation'
  resGetPath: '/locales/%{ns}-%{lng}.json'
  interpolationPrefix: '%{'
  interpolationSuffix: '}'
  keyseparator: '.'
  debug: true
  interpolation: escapeValue: false
module.exports = i18n
