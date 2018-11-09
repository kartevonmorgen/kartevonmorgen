import React      from "react";
import styled     from "styled-components";

const AddressLine = styled.div`
  width: 100%;
  span {
    margin-right: 0.3em;
    
    &.delimiter {
      margin-left: -0.3em;
    }
  }
`

module.exports = ({street, zip, city}) =>
  <AddressLine className = "pure-u-22-24">
    {street ? <span>{street}</span> : null}
    {street && (zip || city)?
      <span className = "delimiter">, </span> : null}
    {zip  ? <span>{zip} </span>: null}
    {city ? <span>{city}</span> : null}
  </AddressLine>