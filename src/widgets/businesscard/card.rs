// TODO: import "typeface-rubik/index.css"
// TODO: import "purecss/build/base.css"
// TODO: import "purecss/build/grids.css"
// TODO:
// TODO: import React                        from "react";
// TODO: import styled,{ createGlobalStyle } from "styled-components";
// TODO: import { FontAwesomeIcon }          from '@fortawesome/react-fontawesome'
// TODO:
// TODO: import BusinessCard                 from "../../components/pure/BusinessCard";
// TODO: import URLs                         from "../../constants/URLs";
// TODO: import i18n                         from "../../i18n";
// TODO: import STYLE                        from "../../components/styling/Variables"
// TODO:
// TODO: import "../../components/styling/Icons"
// TODO:
// TODO: const MoreInfoLink = styled.div`
// TODO:   padding: 1rem 1.8em;
// TODO:   font-weight: 500;
// TODO:
// TODO:   > a {
// TODO:     color: #000;
// TODO:     &:hover{
// TODO:       text-decoration: none;
// TODO:     }
// TODO:   }
// TODO: `;
// TODO:
// TODO: const Card = ({ entry }) =>
// TODO:   <div>
// TODO:     <GlobalStyle />
// TODO:     <BusinessCard entry={entry}/>
// TODO:     {entry ? <MoreInfoLink>
// TODO:       <a target="_blank" href={URLs.APP.link + "/#/?entry=" + entry.id}>{i18n.t("businesscardWidget.showOnMap")}</a>
// TODO:     </MoreInfoLink> : ""}
// TODO:   </div>
// TODO:
// TODO: module.exports = Card
// TODO:
// TODO: const GlobalStyle = createGlobalStyle`
// TODO:
// TODO:   @media only screen and (max-width: 600px) {
// TODO:     body { font-size:80%;}
// TODO:   }
// TODO:
// TODO:   h1, h2, h3, h4, h5, h6, h7 {
// TODO:     font-family: ${STYLE.headerFont};
// TODO:     font-weight: 500;
// TODO:   }
// TODO:
// TODO:   html, button, input, select, textarea {
// TODO:     font-family: ${STYLE.bodyFont};
// TODO:   }
// TODO: `;
