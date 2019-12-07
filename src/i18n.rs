// TODO: import i18n from 'i18next';
// TODO: import de   from './locales/translation-de.json';
// TODO: import en   from './locales/translation-en.json';
// TODO: import es   from './locales/translation-es.json';
// TODO: 
// TODO: import LanguageDetector from 'i18next-browser-languagedetector';
// TODO: 
// TODO: const lngDetectorOptions = {
// TODO:   // order and from where user language should be detected
// TODO:   order: ['navigator', 'querystring', 'cookie', 'localStorage', 'htmlTag'],
// TODO: 
// TODO:   // keys or params to lookup language from
// TODO:   lookupQuerystring: 'lng',
// TODO:   lookupCookie: 'i18next',
// TODO:   lookupLocalStorage: 'i18nextLng',
// TODO: 
// TODO:   // cache user language on
// TODO:   caches: ['localStorage', 'cookie'],
// TODO:   excludeCacheFor: ['cimode'], // languages to not persist (cookie, localStorage)
// TODO: 
// TODO:   // optional expire and domain for set cookie
// TODO:   cookieMinutes: 10,
// TODO:   cookieDomain: 'myDomain',
// TODO: 
// TODO:   // optional htmlTag with lang attribute, the default is:
// TODO:   htmlTag: document.documentElement
// TODO: };
// TODO: 
// TODO: i18n
// TODO:   .use(LanguageDetector)
// TODO:   .init({
// TODO:     resources: {
// TODO:       de: { translation: de },
// TODO:       en: { translation: en },
// TODO:       es: { translation: es }
// TODO:     },
// TODO:     interpolation: {
// TODO:       escapeValue: false
// TODO:     },
// TODO:     ns: ['translation'],
// TODO:     defaultNs: 'translation',
// TODO:     detection: lngDetectorOptions,
// TODO:     fallbackLng: 'en'
// TODO:   });
// TODO: 
// TODO: export default i18n;
