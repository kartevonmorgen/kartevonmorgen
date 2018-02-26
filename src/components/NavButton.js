import React    from "react"
import { pure } from "recompose"
import styled   from "styled-components";

const NavigationButton = styled.li`
  color: #00f;
`;

const NavButton = ({ key, classname, icon, text, onClick }) => {

  return (
    <NavigationButton
      key = { key }
      className = { classname }
      onClick = { onClick }>
      { text }
    </NavigationButton>)
}

module.exports = pure(NavButton)
