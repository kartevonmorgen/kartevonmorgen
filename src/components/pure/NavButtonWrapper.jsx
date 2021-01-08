import React    from "react"
import styled   from "styled-components";
import STYLE    from "../styling/Variables";

const Nav = styled.nav`
  z-index: 10;
  background: ${STYLE.coal};
  text-align: center;
  height: auto;
`

const NavButtonWrapper = ({ children, className }) =>
  <Nav className={className}>
    { children }
  </Nav>

export default NavButtonWrapper
