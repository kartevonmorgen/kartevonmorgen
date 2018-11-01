import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const CityListElement = ({ city, onClick }) => {

  const { village, state, country, name } = city || {};
  const cityname = city.city;

  return (
    <li onClick={ev => {ev.preventDefault(); onClick(city)}}>
      <div className= "pure-g">
        <div className= "pure-u-23-24">
          <div>
              <span className= "city">{cityname || name}</span>
          </div>
          <div>
            <span className = "state">{state}</span>
            <span className = "country">{country}</span>
          </div>
        </div>
        <div className = "pure-u-1-24 chevron">
          <FontAwesomeIcon icon="chevron-right" />
        </div>
      </div>
    </li>)
}

const CityList = ({ cities=[], onClick }) =>
    <div className= "city-list">
      <ul>{
        cities.map(c =>
          <CityListElement
            city    = {c}
            key     = {c.osm_id}
            onClick = {onClick} />
      )}</ul>
    </div>

module.exports = CityList