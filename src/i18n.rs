use crate::Mdl;
use serde_json::{Map, Value};

// TODO: import LanguageDetector from 'i18next-browser-languagedetector';

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash)]
pub enum Lang {
    En,
    De,
    Es
}

impl Lang {
    /// ISO 639-1 code
    pub fn alpha_2(&self) -> &str {
        match self {
            Lang::En => "en",
            Lang::De => "de",
            Lang::Es => "es",
        }
    }
}

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

pub trait Translator  {
    fn t(&self, key: &str) -> String;
}

impl Translator for Mdl {
    fn t(&self, key: &str) -> String {
        match self.view.locales.get(&self.view.current_lang) {
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

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn deep_lookup_with_empty_map() {
        assert_eq!(deep_lookup(&[], &Map::new()), None);
        assert_eq!(deep_lookup(&["foo.bar"], &Map::new()), None);
    }

    #[test]
    fn deep_lookup_with_usual_map() {
        let mut map = Map::new();
        let mut sub_map = Map::new();
        sub_map.insert("bar".to_string(), "x".into());
        map.insert("foo".to_string(), sub_map.into());
        map.insert("foo.bar".to_string(), "baz".into());

        assert_eq!(deep_lookup(&["foo"], &map), None);
        assert_eq!(deep_lookup(&["foo.bar"], &map).unwrap(), "baz");
        assert_eq!(deep_lookup(&["foo", "bar"], &map).unwrap(),"x");
    }
}
