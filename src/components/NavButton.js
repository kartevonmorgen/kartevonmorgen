import React    from "react"
import { pure } from "recompose"
import styled   from "styled-components";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const NavigationButton = styled.li`
  color: #00f;
`;

const Icon = styled(FontAwesomeIcon)`
  margin-right: 10px !important;
`

const NavButton = ({ keyName, classname, icon, text, onClick }) => {

  return (
    <NavigationButton
      key = { keyName }
      className = { classname }
      onClick = { onClick }>
      <Icon icon={ icon } />{ text }
    </NavigationButton>)
}

module.exports = pure(NavButton)
