import React  from 'react';
import styled from "styled-components";

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

const CityListElement = ({ city, onClick }) => {

  return (
    <li onClick={ev => {ev.preventDefault(); onClick(city)}}>
      <ResultRow>
        <div>
          <span className= "city">{ city.display_name }</span>
        </div>
        <Arrow>
          <FontAwesomeIcon icon="chevron-right" />
        </Arrow>
      </ResultRow>
    </li>)
}

const CityList = ({ cities=[], onClick }) =>
  <ListWrapper className= "city-list">
    <ul>{
      cities.map(c =>
        <CityListElement
          city    = {c}
          key     = {c.osm_id}
          onClick = {onClick} />
      )}
    </ul>
  </ListWrapper>

module.exports = CityList

const ResultRow = styled.div`
    display: flex;
    justify-content: space-between;
`;

const Arrow = styled.div`
    margin: 0 12px;
`;

const ListWrapper = styled.div`

ul {
  list-style: none;
  margin: 0;
  padding: 0;
  li {
    cursor: pointer;
    padding: 12px 11px 12px 24px;
  }
}
`
