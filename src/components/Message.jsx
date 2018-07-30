import React from "react";
import { pure } from "recompose";
import T from "prop-types";

class Message extends React.Component {

  render() {

    let actionButton = null;
    let cancelButton = null;
    var l;

    if (l = this.props.actionButtonLabel) {
      actionButton =
        <button
          onClick = { (ev) => { ev.preventDefault(); this.props.onAction(); }}
          className = "pure-button" >
          <i className = { this.props.actionButtonIcon } />
          { l }
        </button>;
    }
    if (l = this.props.cancelButtonLabel) {
      cancelButton =
        <button
          onClick = { (ev) => { ev.preventDefault(); this.props.onCancel(); }}
          className = "pure-button" >
          <i className = "fa fa-ban" />
          { l }
        </button>
    }
    return (
      <div className = 'dialog'>
        <div className = "message">
          <i className = { this.props.iconClass } />
          { this.props.message }
        </div>
        <div className = "close-button">
          { cancelButton }
          { actionButton }
        </div>
      </div>
    );
  }
}

Message.propTypes = {
  onCancel: T.func,
  onAction: T.func,
  actionButtonLabel: T.string,
  cancelButtonLabel: T.string
};

module.exports = pure(Message);
