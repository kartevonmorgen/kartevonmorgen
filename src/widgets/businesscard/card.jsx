
import "typeface-rubik/index.css"
import "purecss/build/base.css"
import "purecss/build/grids.css"

import React, { Component } from "react";
import BusinessCard from "../../components/BusinessCard";
import URLs from "../../constants/URLs";
import styled,{ createGlobalStyle } from "styled-components";
import i18n from "../../i18n";
import STYLE from "../../components/styling/Variables"
import "../../components/styling/Icons"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const MoreInfoLink = styled.div`
  padding: 1rem 1.8em;
  font-weight: 500;
  
  > a {
    color: #000;
    &:hover{
      text-decoration: none;
    }
  }
`;

class Card extends Component {
  render() {
    const { entry } = this.props;

    return (
      <div>
        <GlobalStyle />
        <BusinessCard entry={entry}/>
        {entry ? <MoreInfoLink>
          <a target="_blank" href={URLs.APP.link + "/#/?entry=" + entry.id}>{i18n.t("businesscardWidget.showOnMap")}</a>
        </MoreInfoLink> : ""}
      </div>);
  }
}

module.exports = Card


const GlobalStyle = createGlobalStyle`
  
  @media only screen and (max-width: 600px) {
    body { font-size:80%;}
  }

  h1, h2, h3, h4, h5, h6, h7 {
    font-family: ${STYLE.headerFont};
    font-weight: 500;
  }
  
  html, button, input, select, textarea {
    font-family: ${STYLE.bodyFont};
  }
`;
