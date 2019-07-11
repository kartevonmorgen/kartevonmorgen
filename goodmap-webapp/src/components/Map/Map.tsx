import React from 'react';
import styled from 'styled-components';
import Search from './Search';
import Needs from './Needs';
import Entries from './Entries';

const Map = () => (
  <Container>
    <Search />
    <h1>hallo i bims map</h1>
    <Needs />
    <Entries />
  </Container>
);

const Container = styled.div``;

export default Map;
