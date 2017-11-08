import React         from "react";
import EntryDetails  from "../../components/EntryDetails";

module.exports = ({entry, ratings, onClick}) =>
  <div>
    <EntryDetails entry={entry} ratings={ratings} onRate={onClick} />
    {entry ? <a href="https://kartevonmorgen.org/#/?entry=">Mehr Informationen...</a> : ""}
  </div>
