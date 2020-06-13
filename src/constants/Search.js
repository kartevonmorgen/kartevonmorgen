module.exports = {
  CITY_SEARCH_RESULTS_MIN_DISTANCE: 0.3,
  CITY_SEARCH_RESULTS_MIN_IMPORTANCE: 0.5,
  NUM_ENTRIES_TO_FETCH: 100,
  NUM_ENTRIES_TO_SHOW: 100, // after a few searches we will have loaded n * NUM_ENTRIES_TO_FETCH, that's why we need this extra limit
  NUMBER_TAGS_TO_FETCH: 1000, // number of tags to fetch on each request from most-popular-tags
};