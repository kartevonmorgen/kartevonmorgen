use criterion::{black_box, criterion_group, criterion_main, Criterion};
use kern::filter_and_sort;
use ofdb_seed::boundary::TagFrequency as Tag;
use std::{fs::File, io::prelude::*};

fn load_tags() -> Vec<Tag> {
    let mut file = File::open("benches/most-popular-tags.json").unwrap();
    let mut tags_string = String::new();
    file.read_to_string(&mut tags_string).unwrap();
    serde_json::from_str(&tags_string).unwrap()
}

fn filter_and_sort_1000_tags(c: &mut Criterion) {
    let tags = load_tags()
        .into_iter()
        .take(black_box(1000))
        .collect::<Vec<_>>();
    c.bench_function(
        "filter_and_sort 1000 tags: max = 5, search_term = 'so'",
        |b| b.iter(|| filter_and_sort(&tags, 5, &Some("so".into()))),
    );
}

criterion_group!(benches, filter_and_sort_1000_tags);
criterion_main!(benches);
