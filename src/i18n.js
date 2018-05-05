import i18n from 'i18next';
import de   from './locales/translation-de.json';
import en   from './locales/translation-en.json';

import LanguageDetector from 'i18next-browser-languagedetector';

const lngDetectorOptions = {
  // order and from where user language should be detected
  order: ['navigator', 'querystring', 'cookie', 'localStorage', 'htmlTag'],

  // keys or params to lookup language from
  lookupQuerystring: 'lng',
  lookupCookie: 'i18next',
  lookupLocalStorage: 'i18nextLng',

  // cache user language on
  caches: ['localStorage', 'cookie'],
  excludeCacheFor: ['cimode'], // languages to not persist (cookie, localStorage)

  // optional expire and domain for set cookie
  cookieMinutes: 10,
  cookieDomain: 'myDomain',

  // optional htmlTag with lang attribute, the default is:
  htmlTag: document.documentElement
};

i18n
  .use(LanguageDetector)
  .init({
    resources: {
      de: { translation: de },
      en: { translation: en }
    },
    interpolation: {
      escapeValue: false
    },
    ns: ['translation'],
    defaultNs: 'translation',
    detection: lngDetectorOptions,
    fallbackLng: 'en'
  });

export default i18n;
