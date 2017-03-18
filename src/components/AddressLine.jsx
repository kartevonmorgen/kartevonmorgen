import './AddressLine.styl';
import React from "react";

module.exports = ({street, zip, city}) =>
  <div className = "AddressLine">
    {street ? <span>{street}</span> : null}
    {street && (zip || city)?
      <span className = "delimiter">,</span> : null}
    {zip  ? <span>{zip}</span> : null}
    {city ? <span>{city}</span> : null}
  </div>
