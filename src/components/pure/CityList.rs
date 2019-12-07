// TODO: import React  from 'react';
// TODO: import styled from "styled-components";
// TODO:
// TODO: import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
// TODO:
// TODO: const CityListElement = ({ city, onClick, isSelected, selectedColor }) => {
// TODO:
// TODO:   return (
// TODO:     <ResultListItem onClick={ev => { ev.preventDefault(); onClick(city) }}
// TODO:       isSelected={isSelected}
// TODO:       selectedColor={selectedColor}>
// TODO:       <ResultRow>
// TODO:         <div>
// TODO:           <span className="city">{city.display_name}</span>
// TODO:         </div>
// TODO:         <Arrow>
// TODO:           <FontAwesomeIcon icon="chevron-right" />
// TODO:         </Arrow>
// TODO:       </ResultRow>
// TODO:     </ResultListItem>)
// TODO: }
// TODO:
// TODO: const CityList = ({ cities = [], onClick, selectedCity = 0, selectedColor }) =>
// TODO:   <ResultList className="city-list">
// TODO:     {
// TODO:       cities.map((city, index) =>
// TODO:         <CityListElement
// TODO:           city={city}
// TODO:           key={city.osm_id}
// TODO:           onClick={onClick}
// TODO:           isSelected={selectedCity === index}
// TODO:           selectedColor={selectedColor} />
// TODO:     )}
// TODO:   </ResultList>
// TODO:
// TODO: module.exports = CityList
// TODO:
// TODO: const ResultRow = styled.div`
// TODO:   display: flex;
// TODO:   justify-content: space-between;
// TODO: `;
// TODO:
// TODO: const Arrow = styled.div`
// TODO:   margin: 0 12px;
// TODO: `;
// TODO:
// TODO: const ResultListItem = styled.li`
// TODO:   cursor: pointer;
// TODO:   padding: 12px 11px 12px 24px;
// TODO:   background-color: ${props => props.isSelected ? props.selectedColor : ""};
// TODO: `;
// TODO:
// TODO: const ResultList = styled.ul`
// TODO:   list-style: none;
// TODO:   margin: 0;
// TODO:   padding: 0;
// TODO: `;
