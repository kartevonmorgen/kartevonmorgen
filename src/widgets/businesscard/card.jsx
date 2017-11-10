import React         from "react";
import EntryDetails  from "../../components/EntryDetails";
import URLs          from "../../constants/URLs";
import styled        from "styled-components";

const MoreInfoLink = styled.a`
  padding: 1em;
`;

module.exports = ({entry}) =>
  <div>
    <EntryDetails entry={entry}/>
    {entry ? <MoreInfoLink target="_blank" href={URLs.APP.link + "/#/?entry=" + entry.id}>Auf der Karte anzeigen...</MoreInfoLink> : ""}
  </div>
