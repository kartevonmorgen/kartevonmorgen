import React         from "react";
import EntryDetails  from "../../components/EntryDetails";

module.exports = ({entry, ratings, onClick}) =>
  <div>
    <EntryDetails entry={entry} onRate={onClick} />
    <!-- here we cann add some more widget content -->
  </div>
