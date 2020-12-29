use js_sys::Promise;
use ofdb_seed::{boundary::TagFrequency as Tag, Api};
use seed::{prelude::*, *};
use std::{cell::RefCell, cmp::Ordering, rc::Rc};
use wasm_bindgen_futures::*;

const API_URL: &str = "https://api.ofdb.io/v0";

const FETCH_TAGS_LIMIT: usize = 1_000;
const FETCH_TAGS_MAX: usize = 10_000;
const FETCH_TAGS_STEP: usize = 1_000;

#[wasm_bindgen]
pub struct Kern {
    api: Api,
    mdl: Rc<RefCell<Mdl>>,
}

struct Mdl {
    tags: Vec<Tag>,
    fetch_tags_offset: usize,
}

impl Default for Mdl {
    fn default() -> Self {
        Self {
            tags: vec![],
            fetch_tags_offset: 0,
        }
    }
}

#[wasm_bindgen]
impl Kern {
    #[allow(clippy::new_without_default)]
    #[wasm_bindgen(constructor)]
    pub fn new() -> Kern {
        Kern {
            api: Api::new(API_URL.to_string()),
            mdl: Rc::new(RefCell::new(Mdl::default())),
        }
    }

    pub fn popular_tags(&self, max: usize, s: Option<String>) -> Promise {
        let future = popular_tags(self.api.clone(), self.mdl.clone(), s, max);
        future_to_promise(future)
    }
}

async fn popular_tags(
    api: Api,
    mdl: Rc<RefCell<Mdl>>,
    s: Option<String>,
    max: usize,
) -> Result<JsValue, JsValue> {
    while mdl.borrow().fetch_tags_offset < FETCH_TAGS_MAX
        && filter_and_sort(&mdl.borrow().tags, max, &s).len() < max
    {
        fetch_tags(&api, mdl.clone())
            .await
            .map_err(|err| format!("{:?}", err))?;
    }

    let res = JsValue::from_serde(&filter_and_sort(&mdl.borrow().tags, max, &s))
        .map_err(|err| format!("{:?}", err))?;
    Ok(res)
}

async fn fetch_tags(api: &Api, mdl: Rc<RefCell<Mdl>>) -> Result<(), FetchError> {
    let offset = mdl.borrow().fetch_tags_offset;
    mdl.borrow_mut().fetch_tags_offset += FETCH_TAGS_STEP;
    let tags = api
        .get_most_popular_tags(None, None, Some(FETCH_TAGS_LIMIT), Some(offset))
        .await?;
    mdl.borrow_mut().tags.extend_from_slice(&tags);
    Ok(())
}

pub fn filter_and_sort<'a>(
    tags: &'a [Tag],
    max: usize,
    search_term: &Option<String>,
) -> Vec<&'a Tag> {
    if let Some(s) = search_term {
        let s = s.to_lowercase();
        let mut filtered: Vec<_> = tags.iter().filter(|t| t.0.starts_with(&s)).collect();
        if filtered.len() < max {
            // we need to extend the list
            filtered = tags.iter().filter(|t| t.0.contains(&s)).collect();
            // ...and sort it
            filtered.sort_by(|a, b| {
                match (a.0.starts_with(&s), b.0.starts_with(&s)) {
                    // Show tags that starts with the user input first
                    (true, false) => Ordering::Less,
                    (false, true) => Ordering::Greater,
                    _ => b.1.cmp(&a.1), // Sort by popularity
                }
            });
        }
        filtered.into_iter().take(max).collect()
    } else {
        tags.iter().take(max).collect()
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use wasm_bindgen_test::*;

    // INFO: use the following line to run the test with a browser
    // wasm_bindgen_test::wasm_bindgen_test_configure!(run_in_browser);

    mod filter_and_sort_tags {
        use super::*;

        fn test_tags() -> [Tag; 10] {
            [
                Tag("organic".into(), 211),
                Tag("csa".into(), 209),
                Tag("solawi".into(), 180),
                Tag("nachhaltig".into(), 123),
                Tag("nachhaltigkeit".into(), 102),
                Tag("community".into(), 98),
                Tag("gwö".into(), 73),
                Tag("gfk".into(), 36),
                Tag("open-source".into(), 5),
                Tag("test".into(), 3),
            ]
        }

        #[test]
        #[wasm_bindgen_test]
        fn limit_results_to_max() {
            let tags = test_tags();
            let output = filter_and_sort(&tags, 0, &None);
            assert_eq!(output.len(), 0);
            let output = filter_and_sort(&tags, 9, &None);
            assert_eq!(output.len(), 9);
        }

        #[test]
        #[wasm_bindgen_test]
        fn tag_must_contain_the_search_term() {
            let tags = test_tags();
            let output = filter_and_sort(&tags, 10, &Some("o".into()));
            assert_eq!(output.len(), 4);
        }

        #[test]
        #[wasm_bindgen_test]
        fn priorize_tags_that_starts_with_the_search_term() {
            let tags = test_tags();
            let output = filter_and_sort(&tags, 10, &Some("n".into()));
            assert_eq!(output.len(), 5);
            assert_eq!(output[0].0, "nachhaltig");
            assert_eq!(output[1].0, "nachhaltigkeit");
            assert_eq!(output[2].0, "organic");

            let output = filter_and_sort(&tags, 3, &Some("t".into()));
            assert_eq!(output.len(), 3);
            assert_eq!(output[0].0, "test");
            assert_eq!(output[1].0, "nachhaltig");
        }
    }
}
