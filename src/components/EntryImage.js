import React, { Component }   from "react"
import PropTypes              from "prop-types"
import styled                 from "styled-components"

const ImageWrapper = styled.div`
  position:   absolute;
  top:        0;
  bottom:     0;
  width:      100%;
  height:     285px;
  text-align: center;
  z-index:    0;
`;

const Image = styled.div`
  height:     285px;
  max-width:  100%;
  background-position: center center !important;
  background-size: auto 100% !important;
`;

class EntryImage extends Component {
  render(){
    const { image_url, image_link_url } = this.props;

    const backgroundImageStyle = {
      background: "linear-gradient(to bottom, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.1) 15%, rgba(0,0,0,0) 30%), url(" + image_url + ") no-repeat",
    };

    return (
      <ImageWrapper>
        { image_link_url ?
          <a href={ image_link_url } target="_blank">
            <Image src={image_url} style={ backgroundImageStyle }></Image>
          </a>
          :
          <Image src={image_url} style={ backgroundImageStyle }></Image>
        }
      </ImageWrapper>
    );
  }
}

EntryImage.propTypes = {
  image_url:     PropTypes.string.isRequired,
  image_link_url:    PropTypes.string
}

export default EntryImage