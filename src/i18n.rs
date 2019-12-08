use crate::Mdl;
use serde_json::{Map, Value};

// TODO: import LanguageDetector from 'i18next-browser-languagedetector';

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

pub fn t(mdl: &Mdl, key: &str) -> String {
    let fallback_lng = "en".to_string();
    let lng = mdl.view.current_locale.as_ref().unwrap_or(&fallback_lng);

    match mdl.view.locales.get(lng) {
        Some(locale) => {
            let keys: Vec<_> = key.split(".").collect();
            match deep_lookup(&keys, locale) {
                Some(res) => res,
                None => key.to_string(),
            }
        }
        None => key.to_string(),
    }
}

fn deep_lookup(keys: &[&str], map: &Map<String, Value>) -> Option<String> {
    match &keys {
        [] => None,
        [last] => map.get(&last.to_string()).and_then(|x| match x {
            Value::String(s) => Some(s.clone()),
            _ => None,
        }),
        _ => map.get(&keys[0].to_string()).and_then(|x| match x {
            Value::Object(m) => deep_lookup(&keys[1..], m),
            _ => None,
        }),
    }
}
