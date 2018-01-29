import React         from "react";
import EntryDetails  from "../../components/EntryDetails";
import URLs          from "../../constants/URLs";
import styled        from "styled-components";
import i18n          from "../../i18n";

const MoreInfoLink = styled.a`
  padding: 1em;
`;

module.exports = ({entry}) =>
  <div>
    <EntryDetails entry={entry}/>
    {entry ? <MoreInfoLink target="_blank" href={URLs.APP.link + "/#/?entry=" + entry.id}>{i18n.t("businesscardWidget.showOnLargeMap")}</MoreInfoLink> : ""}
  </div>
