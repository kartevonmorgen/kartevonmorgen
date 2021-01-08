import React, {Fragment} from "react"
import styled from "styled-components";

const AddressLine = styled.div`
  width: 100%;
  margin-left: .52rem;
  span {
    margin-right: 0.3em;

    &.delimiter {
      margin-left: -0.3em;
    }
  }
`

type Props = {
	street: string,
	zip: string,
	city: string,
	state: string,
	country: string
}

export default ({street, zip, city, state, country}: Props) =>
  <AddressLine role="address" tabIndex={0} className = "pure-u-22-24">
    {street && <span>{street}</span>}
    {street && (zip || city) ?
      <span className = "delimiter">, </span> : null}
    {zip  && <span>{zip} </span>}
    {city && <span>{city}</span>}
    {state &&
      <Fragment>
        <span className = "delimiter">, </span>
        <span>{state}</span>
      </Fragment>
    }
    {country &&
    <Fragment>
      <span className = "delimiter">, </span>
      <span>{country}</span>
    </Fragment>
    }
  </AddressLine>
