import React, {useEffect, useState} from 'react'
import PropTypes from 'prop-types'
import styled from "styled-components";
import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
import classNames from 'classnames'
import thumbnails from "../../customizations/thumbnails"


const siteToIconMapper = {
  "wa.me": "whatsapp",
  "facebook.com": "facebook",
  "fb.me": "facebook",
  "instagram.com": "instagram",
  "twitter.com": "twitter",
  "t.co": "twitter",
  "t.me": "telegram",
}

const siteToThumbnailMapper = {
  "werkzeugkasten-wandel.de": thumbnails.renn,
  "nachhaltiger-warenkorb.de": thumbnails.renn,
}

const getIconNameFromUrl = (url) => {
  const {hostname} = new URL(url)
  const website = hostname.replace(/^(www\.)/,"");
  if (siteToIconMapper[website]) {
    return ["icon", ["fab", siteToIconMapper[website]]]
  }

  if (siteToThumbnailMapper[website]) {
    return ["thumbnail", siteToThumbnailMapper[website]]
  }

  return false
}

const CustomLinks = (props) => {
  const {customLinks: links} = props

  const [customLinks, setCustomLinks] = useState([])

  useEffect(() => {
    const richedLinks = links.map(
      link => ({
        ...link,
        "icon": getIconNameFromUrl(link.url)
      })
    )
    richedLinks.sort((l1, l2) => {
      if (l1.icon) {
        if (!l1.title) {
          return -1
        }

        if (l2.icon) {
          if (!l2.title) {
            return 1
          }

          return l1.title.length - l2.title.length
        }

        return -1
      }

      if (l2.icon) {
        return 1
      }

      if (!l1.title && !l2.title){
        return l1.url.length - l2.url.length
      }
      if(l1.title && !l2.title) {
        return -1
      }
      if(!l1.title && l2.title) {
        return 1
      }
      if(l1.title && l2.title) {
        return l1.title.length - l2.title.length
      }
    })

    setCustomLinks(richedLinks)
  }, [links])


  const renderText = ({icon, title, url}) => {
    if (!title) {
      if (icon) {
        return null
      }

      return <LinkTitle hasIcon={!!icon}>{`${url.substring(0, 25)} ...`}</LinkTitle>
    }

    return <LinkTitle hasIcon={!!icon}>{title}</LinkTitle>
  }

  return (
    <div className="pure-g">
      {
        customLinks.map((link, i) => {
          const isFullLine = !link.icon || !!link.title
          return (
            <LinkContainer
              className={classNames({
                "pure-u-1-1": isFullLine,
                "pure-u-1-5": !isFullLine,
              })}
              key={`custom-link-${i}`}
              link={link}
            >
              <IconLink
                title={link.title}
                href={link.url}
                target="_blank"
                rel="noopener noreferrer"
              >
                {link.icon &&
                  <IconContainer>
                    {link.icon[0] === "icon" ?
                      <FontAwesomeIcon tabIndex={-1} icon={link.icon[1]}/> :
                      <img style={{width: 20, height: 20}} tabIndex={-1} alt={link.title} src={link.icon[1]} />
                    }
                  </IconContainer>
                }
                {renderText(link)}
              </IconLink>
            </LinkContainer>
          )
        })
      }
    </div>
  )
}

CustomLinks.defaultProps = {
  customLinks: []
}

CustomLinks.propTypes = {
  customLinks: PropTypes.array
}


const IconContainer = styled.div`
  margin-right: 8px;
`

const LinkTitle = styled.span`
  color: grey;
  font-size: 15px;
  padding-left: ${props => props.hasIcon ? "0px" : "28px"};
`

const IconLink = styled.a`
  font-size: 20px;
  color: grey;
  display: flex;
  align-items: center;
  justify-content: center;
`

const LinkContainer = styled.div`
  height: 40px;
  display: flex;
  align-items: center;
  justify-content: ${props => (!props.link.title && props.link.icon) ? "center" : "left"};
`

export default CustomLinks
