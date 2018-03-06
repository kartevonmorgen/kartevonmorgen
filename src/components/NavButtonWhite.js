import React    from "react"
import { pure } from "recompose"
import styled   from "styled-components";

const NavigationButtonWrapper = styled.div`
  width: 50%;
`;

const NavigationButtonWrapperRight = styled.div`
  width: 50%;
  text-align: right;
`;

const NavigationButton = styled.span`
  color: #888;
  cursor: pointer;
  padding: 4px 7px;
  border-radius: 2px;

  :hover {
    color: #000;
    background-color: #f5f5f5;
  }
`;

const NavButton = ({ keyName, buttonRight, icon, text, onClick }) => {
  const button = buttonRight ? 
    <NavigationButtonWrapperRight>
      <NavigationButton
        key = { keyName }
        onClick = { onClick }>
        <i className= { icon }></i>
        { " " + text }
      </NavigationButton>
    </NavigationButtonWrapperRight>
    : 
    <NavigationButtonWrapper>
      <NavigationButton
        key = { keyName }
        onClick = { onClick }>
        <i className= { icon }></i>
        { " " + text }
      </NavigationButton>
    </NavigationButtonWrapper>;

  return(button);
}

module.exports = pure(NavButton)
