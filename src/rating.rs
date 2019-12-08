// TODO: const rating_groups = (ratings=[]) => {
// TODO:   var groups = {};
// TODO:   ratings
// TODO:     .filter(r => typeof r !== "undefined" && r !== null)
// TODO:     .forEach(r =>{
// TODO:       if (groups[r.context] == null) {
// TODO:         groups[r.context] = [];
// TODO:       }
// TODO:       groups[r.context].push(r);
// TODO:     });
// TODO:   return groups;
// TODO: };
// TODO:
// TODO: const avg_rating_for_entry = (ratings_for_entry) => {
// TODO:   return ratings_for_entry.reduce((acc, r) => {if(r){return acc+r.value;} else {return 0;}}, 0) / ratings_for_entry.length
// TODO: };
// TODO:
// TODO: module.exports = { rating_groups, avg_rating_for_entry };
