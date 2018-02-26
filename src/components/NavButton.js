import React    from "react"
import { pure } from "recompose"
import styled   from "styled-components";


const NavigationButton = styled.li`
  color: #00f;
`;

const NavButton = ({ key, classname, icon, text, actions }) => {

  const dispatchActions = (actions) => {
    
  }

  return (
    <NavigationButton
      key = { key }
      className = { classname }>
      { text }
    </NavigationButton>)
}

module.exports = pure(NavButton)
