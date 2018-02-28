import React    from "react"
import { pure } from "recompose"
import styled   from "styled-components";

const NavigationButton = styled.li`
  color: #00f;
`;

const NavButton = ({ keyName, classname, icon, text, onClick }) => {

  return (
    <NavigationButton
      key = { keyName }
      className = { classname }
      onClick = { onClick }>
      <i className= { icon }></i>
      { text }
    </NavigationButton>)
}

module.exports = pure(NavButton)
