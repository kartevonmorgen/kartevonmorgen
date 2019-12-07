// TODO: import React  from "react";
// TODO: import T      from "prop-types";
// TODO: import styled from "styled-components";
// TODO: import STYLE  from "../styling/Variables"
// TODO: 
// TODO: import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
// TODO: 
// TODO: const Message = ({
// TODO:   actionButtonLabel,
// TODO:   cancelButtonLabel,
// TODO:   actionButtonIcon,
// TODO:   onAction,
// TODO:   onCancel,
// TODO:   iconClass,
// TODO:   message }) => {
// TODO: 
// TODO:   let actionButton = null;
// TODO:   let cancelButton = null;
// TODO:   var l;
// TODO: 
// TODO:   if (l = actionButtonLabel) {
// TODO:     actionButton =
// TODO:       <button
// TODO:         onClick = { (ev) => { ev.preventDefault(); onAction(); }}
// TODO:         className = "pure-button" >
// TODO:         <FontAwesomeIcon icon={ actionButtonIcon } /> { l }
// TODO:       </button>;
// TODO:   }
// TODO:   if (l = cancelButtonLabel) {
// TODO:     cancelButton =
// TODO:       <button
// TODO:         onClick = { (ev) => { ev.preventDefault(); onCancel(); }}
// TODO:         className = "pure-button" >
// TODO:         <FontAwesomeIcon icon="ban" /> { l }
// TODO:       </button>
// TODO:   }
// TODO:   return (
// TODO:     <Dialog>
// TODO:       <FontAwesomeIconElement
// TODO:         icon={ iconClass }
// TODO:         pulse={ iconClass ==='spinner' ? true : false }
// TODO:       />
// TODO:       { message }
// TODO:       <div className = "close-button">
// TODO:         { cancelButton }
// TODO:         { actionButton }
// TODO:       </div>
// TODO:     </Dialog>
// TODO:   );
// TODO: }
// TODO: 
// TODO: Message.propTypes = {
// TODO:   onCancel: T.func,
// TODO:   onAction: T.func,
// TODO:   actionButtonLabel: T.string,
// TODO:   cancelButtonLabel: T.string
// TODO: };
// TODO: 
// TODO: module.exports = Message;
// TODO: 
// TODO: const FontAwesomeIconElement = styled(FontAwesomeIcon)`
// TODO:   margin: 0 10px;
// TODO: `
// TODO: 
// TODO: const Dialog = styled.div `
// TODO:   margin: 3em 2em;
// TODO:   background-color: #fff;
// TODO:   position: relative;
// TODO:   max-width: 600px;
// TODO: `
