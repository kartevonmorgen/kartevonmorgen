export const rating_groups = (ratings=[]) => {
  var groups = {};
  ratings
    .filter(r => typeof r !== "undefined" && r !== null)
    .forEach(r =>{
      if (groups[r.context] == null) {
        groups[r.context] = [];
      }
      groups[r.context].push(r);
    });
  return groups;
};

export const avg_rating_for_entry = (ratings_for_entry) => {
  return ratings_for_entry.reduce((acc, r) => {if(r){return acc+r.value;} else {return 0;}}, 0) / ratings_for_entry.length
};

export default { rating_groups, avg_rating_for_entry };
