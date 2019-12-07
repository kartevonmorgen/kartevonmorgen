// TODO: import React    from "react"
// TODO: import styled   from "styled-components";
// TODO: 
// TODO: import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
// TODO: 
// TODO: const NavigationButtonWrapper = styled.div`
// TODO:   width: 50%;
// TODO: `;
// TODO: 
// TODO: const NavigationButtonWrapperRight = styled.div`
// TODO:   width: 50%;
// TODO:   text-align: right;
// TODO: `;
// TODO: 
// TODO: const NavigationButton = styled.span`
// TODO:   color: ${props => props.aboveImage ? "#fff" : "#888"};
// TODO:   cursor: pointer;
// TODO:   padding: 4px 7px;
// TODO:   border-radius: 2px;
// TODO:   filter: ${props => props.aboveImage ? "drop-shadow(1px 1px 1px rgba(0,0,0,0.5))" : "none"};
// TODO: 
// TODO:   :hover {
// TODO:     color: #000;
// TODO:     background-color: #f5f5f5;
// TODO:     text-shadow: none;
// TODO:     box-shadow: 1px 1px 2px rgba(0,0,0,0.4);
// TODO:   }
// TODO: `;
// TODO: 
// TODO: const NavButton = ({ keyName, buttonRight, icon, text, onClick, aboveImage }) => {
// TODO:   const button = buttonRight ? 
// TODO:     <NavigationButtonWrapperRight>
// TODO:       <NavigationButton
// TODO:         key = { keyName }
// TODO:         onClick = { onClick }
// TODO:         aboveImage = { aboveImage }>
// TODO:         <FontAwesomeIcon icon={ icon } />
// TODO:         { " " + text }
// TODO:       </NavigationButton>
// TODO:     </NavigationButtonWrapperRight>
// TODO:     : 
// TODO:     <NavigationButtonWrapper>
// TODO:       <NavigationButton
// TODO:         key = { keyName }
// TODO:         onClick = { onClick }
// TODO:         aboveImage = { aboveImage }>
// TODO:         <FontAwesomeIcon icon={ icon } />
// TODO:         { " " + text }
// TODO:       </NavigationButton>
// TODO:     </NavigationButtonWrapper>;
// TODO: 
// TODO:   return(button);
// TODO: }
// TODO: 
// TODO: module.exports = NavButton
