import React, { Component } from "react";
import BusinessCard  from "../../components/BusinessCard";
import URLs          from "../../constants/URLs";
import styled        from "styled-components";
import i18n          from "../../i18n";

const MoreInfoLink = styled.div`
  padding: 1em;
`;

class Card extends Component {
  render() {
    const { entry } = this.props;

    return (
      <div>
        <BusinessCard entry={entry}/>
        {entry ? <MoreInfoLink><a target="_blank" href={URLs.APP.link + "/#/?entry=" + entry.id}>{i18n.t("businesscardWidget.showOnMap")}</a></MoreInfoLink> : ""}
      </div>);
  }
}

module.exports = Card
