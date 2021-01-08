import "typeface-rubik/index.css"
import "purecss/build/base.css"
import "purecss/build/grids.css"

import React                        from "react";
import styled,{ createGlobalStyle } from "styled-components";
import { FontAwesomeIcon }          from '@fortawesome/react-fontawesome'

import BusinessCard                 from "../../components/pure/BusinessCard";
import * as URLs                    from "../../constants/URLs";
import i18n                         from "../../i18n";
import STYLE                        from "../../components/styling/Variables"

import "../../components/styling/Icons"

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

const Card = ({ entry }) =>
  <div>
    <GlobalStyle />
    <BusinessCard entry={entry}/>
    {entry ? <MoreInfoLink>
      <a target="_blank" href={URLs.APP.link + "/#/?entry=" + entry.id}>{i18n.t("businesscardWidget.showOnMap")}</a>
    </MoreInfoLink> : ""}
  </div>

export default Card

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
