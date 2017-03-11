import './AddressLine.styl';

import React    from "react";
import { pure } from "recompose"

class AddressLine extends React.Component {
  render() {
    return (
      <div className = "AddressLine">
        {this.props.street ? <span>{this.props.street}</span> : null}
        {this.props.street && (this.props.zip || this.props.city)?
          <span className = "delimiter">,</span> : null}
        {this.props.zip  ? <span>{this.props.zip}</span> : null}
        {this.props.city ? <span>{this.props.city}</span> : null}
      </div>
    );
  }
}

module.exports = pure(AddressLine);
