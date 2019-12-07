module.exports = {
  CITY_SEARCH_RESULTS_MIN_DISTANCE: 0.3,
  CITY_SEARCH_RESULTS_MIN_IMPORTANCE: 0.5,
  NUM_ENTRIES_TO_FETCH: 35,
  NUM_ENTRIES_TO_SHOW: 35 // after a few searches we will have loaded n * NUM_ENTRIES_TO_FETCH, that's why we need this extra limit
};