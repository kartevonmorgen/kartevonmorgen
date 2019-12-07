// TODO: import React     from "react"
// TODO: import PropTypes from "prop-types"
// TODO: import styled    from "styled-components"
// TODO: 
// TODO: const ImageWrapper = styled.div`
// TODO:   position:   absolute;
// TODO:   top:        0;
// TODO:   bottom:     0;
// TODO:   width:      100%;
// TODO:   height:     285px;
// TODO:   text-align: center;
// TODO:   z-index:    0;
// TODO: `;
// TODO: 
// TODO: const Image = styled.div`
// TODO:   height:     285px;
// TODO:   max-width:  100%;
// TODO:   background-position: center center !important;
// TODO:   background-size: auto 100% !important;
// TODO: `;
// TODO: 
// TODO: const EntryImage = ({ image_url, image_link_url }) => {
// TODO: 
// TODO:   const backgroundImageStyle = {
// TODO:     background: "linear-gradient(to bottom, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.1) 15%, rgba(0,0,0,0) 30%), url(" + image_url + ") no-repeat",
// TODO:   };
// TODO: 
// TODO:   return(
// TODO:     <ImageWrapper>
// TODO:       { image_link_url ?
// TODO:         <a href={ image_link_url } target="_blank">
// TODO:           <Image src={image_url} style={ backgroundImageStyle }></Image>
// TODO:         </a>
// TODO:         :
// TODO:         <Image src={image_url} style={ backgroundImageStyle }></Image>
// TODO:       }
// TODO:     </ImageWrapper>
// TODO:   );
// TODO: }
// TODO: 
// TODO: EntryImage.propTypes = {
// TODO:   image_url:     PropTypes.string.isRequired,
// TODO:   image_link_url:    PropTypes.string
// TODO: }
// TODO: 
// TODO: export default EntryImage
