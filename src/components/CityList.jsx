import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import styled from "styled-components";
import i18n from "../i18n";
import { translate } from "react-i18next"

const CityListEl = ({ city, onClick, t  }) => {

  const { state, country, name, wikipedia } = city || {};
  
  let _name = city.city || name;
  let _country = country
  let _state = state

  if(i18n.language.indexOf("de") === 0) {
    if(wikipedia && wikipedia.indexOf("de:") === 0 ) _name = wikipedia.substring(3,wikipedia.length)
    if(country === "Germany"){
      _country = t("landingPage.city-search."+country.toLowerCase())
      _state = t("landingPage.city-search.states."+state.toLowerCase().replace('ü','u'))
    }
  }

  return (
    <li onClick={ev => {ev.preventDefault(); onClick(city)}}>
      <div className= "pure-g">
        <div className= "pure-u-23-24">
          <div>
            <span className= "city">{_name}</span>
          </div>
          <div>
            <span className = "state">{_state}</span>
            <span className = "country">{_country}</span>
          </div>
        </div>
        <div className = "pure-u-1-24 chevron">
          <FontAwesomeIcon icon="chevron-right" />
        </div>
      </div>
    </li>)
}

const CityListElement = translate('translation')(CityListEl)

const CityList = ({ cities=[], onClick, maxEntries }) => {

  cities.sort((a, b) => parseInt(a.place_rank) - parseInt(b.place_rank) )

  if(i18n.language.indexOf("de")===0){
    const compareString = "GermanyAustriaSwitzerland"
    cities.sort((a, b) =>{
      const a_points = compareString.indexOf(a.country) ? 0 : 1
      const b_points = compareString.indexOf(b.country) ? 0 : 1
      return parseInt(b_points) - parseInt(a_points)
    })
  }

  return (
    <ListWrapper className= "city-list">
      <ul>{
        cities.slice(0,maxEntries).map(c =>
          <CityListElement
            city    = {c}
            key     = {c.osm_id}
            onClick = {onClick} />
        )}
      </ul>
    </ListWrapper>
  )
}
module.exports = CityList


const ListWrapper = styled.div`

ul {
  list-style: none;
  margin: 0;
  padding: 0;
  li {
    cursor: pointer;
    padding: 0.4em;
    padding-left: 0.7em;
    padding-right: 0.7em;
    span {
      margin-right: 0.5em;
      &.city {
        font-weight: bold;
      }
      &.county {
        font-weight: bold;
      }
      &.state {
        opacity: 0.8;
        font-size: 0.9em;
      }
      &.country {
        font-size: 0.8em;
        opacity: 0.6;
      }
      &.prefix {
        opacity: 0.6;
      }
    }
  }
}
`