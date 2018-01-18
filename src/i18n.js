import i18n from 'i18next';
import de   from './locales/translation-de.json';
import en   from './locales/translation-en.json';

import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(LanguageDetector)
  .init({
    lng: 'de',
    resources: {
      de: { translation: de },
      en: { translation: en }
    },
    interpolation: {
      escapeValue: false
    },
    ns: ['translation'],
    defaultNs: 'translation',
    fallbackLng: 'de',
  });

export default i18n;
