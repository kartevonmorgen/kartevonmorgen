import React, { Component } from "react";
import EntryDetails  from "../../components/EntryDetails";
import URLs          from "../../constants/URLs";
import styled        from "styled-components";
import i18n          from "../../i18n";

const MoreInfoLink = styled.a`
  padding: 1em;
`;

class Card extends Component {
  render() {
    const { entry } = this.props;

    return (
      <div>
        <EntryDetails entry={entry}/>
        {entry ? <MoreInfoLink target="_blank" href={URLs.APP.link + "/#/?entry=" + entry.id}>{i18n.t("businesscardWidget.showOnMap")}</MoreInfoLink> : ""}
      </div>);
  }
}

module.exports = Card
