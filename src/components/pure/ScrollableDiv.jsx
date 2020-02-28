import React from "react";
import styled from "styled-components";

const StyledScrollableDiv = styled.div`
  flex-grow: 1;
  overflow-y: scroll;
  box-sizing: border-box;
  ::-webkit-scrollbar {
    width: 10px;
    height: 10px;
  }
  ::-webkit-scrollbar-track {
    background: rgba(0,0,0,0);
  }
  ::-webkit-scrollbar-thumb {
    background: #999;
  }
  ::-webkit-scrollbar-thumb:hover {
    background: #666;
  }
`

const ScrollableDiv = (props) => {
  return <StyledScrollableDiv className={props.className} id={props.id}>{props.children}</StyledScrollableDiv>;
}

export default ScrollableDiv;