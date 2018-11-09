import React from "react";
import { pure } from "recompose";
import T from "prop-types";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import STYLE from "./styling/Variables"
import styled from "styled-components";

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
          <FontAwesomeIcon icon={ this.props.actionButtonIcon } /> { l }
        </button>;
    }
    if (l = this.props.cancelButtonLabel) {
      cancelButton =
        <button
          onClick = { (ev) => { ev.preventDefault(); this.props.onCancel(); }}
          className = "pure-button" >
          <FontAwesomeIcon icon="ban" /> { l }
        </button>
    }
    return (
      <Dialog>
        <div className = "message">
          <FontAwesomeIcon icon={ this.props.iconClass } /> { this.props.message }
          {//TODO: Add pulse if icon = spinner: { (this.props.iconClass == 'spinner') ? 'pulse' : "" }  }
          }
        </div>
        <div className = "close-button">
          { cancelButton }
          { actionButton }
        </div>
      </Dialog>
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


const Dialog = styled.div `
  background-color: #fff;
  padding: 10px;
  border: 1px solid ${STYLE.lightGray};
  box-shadow: 0 0 10px;
  position: relative;
  top: 20%;
  margin: auto;
  max-width: 600px;
`