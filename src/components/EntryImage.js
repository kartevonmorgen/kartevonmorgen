import React, { Component }   from "react"
import PropTypes              from "prop-types"
import styled                 from "styled-components"

const ImageWrapper = styled.div`
  position:   absolute;
  top:        0;
  bottom:     0;
  width:      100%;
  text-align: center;
  z-index:    0;
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

    const backgroundImageStyle = {
      background: "-moz-linear-gradient(top, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.1) 15%, rgba(0,0,0,0) 30%), url(" + image_url + " no-repeat;",
      background: "-webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(0, 0, 0, 0.3)), color-stop(15%, rgba(0, 0, 0, 0.1)), color-stop(30%, rgba(0, 0, 0, 0))), url(" + image_url + " no-repeat;",
      background: "-webkit-linear-gradient(top, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.1) 15%, rgba(0,0,0,0) 30%), url(" + image_url + " no-repeat;",
      background: "-o-linear-gradient(top, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.1) 15%, rgba(0,0,0,0) 30%), url(" + image_url + " no-repeat;",
      background: "-ms-linear-gradient(top, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.1) 15%, rgba(0,0,0,0) 30%), url(" + image_url + " no-repeat;",
      background: "linear-gradient(to bottom, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.1) 15%, rgba(0,0,0,0) 30%), url(" + image_url + ") no-repeat",
    };

    return (
      <ImageWrapper>
        { image_link ?
          <a href={ image_link } target="_blank">
            <Image src={image_url} style={ backgroundImageStyle }></Image>
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