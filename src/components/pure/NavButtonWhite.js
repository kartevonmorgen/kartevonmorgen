import React    from "react"
import styled   from "styled-components";

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const NavigationButtonWrapper = styled.div`
  width: 50%;
`;

const NavigationButtonWrapperRight = styled.div`
  width: 50%;
  text-align: right;
`;

const NavigationButton = styled.button`
  color: ${props => props.aboveImage ? "#fff" : "#888"};
  cursor: pointer;
  padding: 4px 7px;
  border-radius: 2px;
  filter: ${props => props.aboveImage ? "drop-shadow(1px 1px 1px rgba(0,0,0,0.5))" : "none"};
  background: none;
  border: none;

  :hover {
    color: #000;
    background-color: #f5f5f5;
    text-shadow: none;
    box-shadow: 1px 1px 2px rgba(0,0,0,0.4);
  }
`;

const NavButton = ({ keyName, buttonRight, icon, text, onClick, aboveImage, ariaLabel }) => {
  const button = buttonRight ? 
    <NavigationButtonWrapperRight>
      <NavigationButton
        aria-label={ariaLabel}
        key = { keyName }
        onClick = { onClick }
        aboveImage = { aboveImage }>
        <FontAwesomeIcon icon={ icon } />
        { " " + text }
      </NavigationButton>
    </NavigationButtonWrapperRight>
    : 
    <NavigationButtonWrapper>
      <NavigationButton
        aria-label={ariaLabel}
        key = { keyName }
        onClick = { onClick }
        aboveImage = { aboveImage }>
        <FontAwesomeIcon icon={ icon } />
        { " " + text }
      </NavigationButton>
    </NavigationButtonWrapper>;

  return(button);
}

export default NavButton
