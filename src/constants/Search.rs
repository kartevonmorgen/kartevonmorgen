pub const CITY_SEARCH_RESULTS_MIN_DISTANCE: f32 = 0.3;
pub const CITY_SEARCH_RESULTS_MIN_IMPORTANCE: f32 = 0.5;
pub const NUM_ENTRIES_TO_FETCH: usize = 35;
pub const NUM_ENTRIES_TO_SHOW: usize = 35; // after a few searches we will have loaded n * NUM_ENTRIES_TO_FETCH, that's why we need this extra limit
