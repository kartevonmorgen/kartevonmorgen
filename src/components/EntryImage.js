import React, { Component }   from "react"
import PropTypes              from "prop-types"
import styled                 from "styled-components"

const ImageWrapper = styled.div`
  text-align: center;
  z-index:    0;
  width: 100%;
  height:     250px;
`;

const Image = styled.div`
  height:     250px;
  max-width:  100%;
  background-position: center center !important;
  background-size: auto 100% !important;
`;

class EntryImage extends Component {
  render(){
    const { image_url, image_link } = this.props;

    return (
      <ImageWrapper>
        { image_link ?
          <a href={ image_link } target="_blank">
            <Image src={image_url} style={{background: "url(" + image_url + ") no-repeat"}}></Image>
          </a>
          :
          <Image src={image_url}></Image>
        }
      </ImageWrapper>
    );
  }
}

EntryImage.propTypes = {
  image_url:     PropTypes.string.isRequired,
  image_link:    PropTypes.string
}

export default EntryImage

  // position:   absolute;
  // top:        0;
  // bottom:     0;
  // width:      calc(100% - 15px);