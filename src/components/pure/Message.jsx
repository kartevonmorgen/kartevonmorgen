import React  from "react";
import T      from "prop-types";
import styled from "styled-components";

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const Message = ({
  optionalActionComponent,
  actionButtonLabel,
  cancelButtonLabel,
  actionButtonIcon,
  onAction,
  onCancel,
  iconClass,
  message }) => {

  let actionButton = null;
  let cancelButton = null;
  var l;

  if (l = actionButtonLabel) {
    actionButton =
      <button
        onClick = { (ev) => { ev.preventDefault(); onAction(); }}
        className = "pure-button" >
        <FontAwesomeIcon icon={ actionButtonIcon } /> { l }
      </button>;
  }
  if (l = cancelButtonLabel) {
    cancelButton =
      <button
        onClick = { (ev) => { ev.preventDefault(); onCancel(); }}
        className = "pure-button" >
        <FontAwesomeIcon icon="ban" /> { l }
      </button>
  }
  return (
    <Dialog>
      { iconClass &&
        <FontAwesomeIconElement
          icon={ iconClass }
          pulse={ iconClass === 'spinner' }
        />
      }
      { message }
      <div className = "close-button">
        { cancelButton }
        { optionalActionComponent }
        { actionButton }
      </div>
    </Dialog>
  );
}

Message.propTypes = {
  onCancel: T.func,
  onAction: T.func,
  actionButtonLabel: T.string,
  cancelButtonLabel: T.string,
  optionalActionComponent: T.node
};

export default Message;

const FontAwesomeIconElement = styled(FontAwesomeIcon)`
  margin: 0 10px;
`

const Dialog = styled.div `
  margin-left: auto;
  margin-right: auto;
  margin-top: 8px;
  background-color: #fff;
  position: relative;
  max-width: 600px;
  padding: 0.75em;
  text-align: justify;
`
