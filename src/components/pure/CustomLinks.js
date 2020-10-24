import React, {useEffect, useState} from 'react'
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
  if (siteToIconMapper.hasOwnProperty(website)) {
    return ["icon", ["fab", siteToIconMapper[website]]]
  }

  if (siteToThumbnailMapper.hasOwnProperty(website)) {
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
      }

      if (l2.icon) {
        return 1
      }

      return l1.title.length - l2.title.length
    })

    setCustomLinks(richedLinks)
  }, [links])

  return (
    <div className="pure-g">
      {
        customLinks.map((link, i) => {
          return (
            <LinkContainer
              className={classNames({
                "pure-u-1-5": !link.title,
                "pure-u-1-1": !!link.title,
              })}
              key={`custom-link-${i}`}
              link={link}
            >
              <IconLink
                title={link.title}
                href={link.url}
              >
                {link.icon &&
                  <IconContainer>
                    {link.icon[0] === "icon" ?
                      <FontAwesomeIcon tabIndex={-1} icon={link.icon[1]}/> :
                      <img style={{width: 20, height: 20}} tabIndex={-1} alt={link.title} src={link.icon[1]} />
                    }
                  </IconContainer>
                }
                {link.title &&
                  <LinkTitle>{link.title}</LinkTitle>
                }
              </IconLink>
            </LinkContainer>
          )
        })
      }
    </div>
  )
}


const IconContainer = styled.div`
  margin-right: 8px;
`

const LinkTitle = styled.span`
  color: grey;
  font-size: 15px;
`

const IconLink = styled.a`
  font-size: 20px;
  color: grey;
  display: flex;
  align-items: center;
  justify-content: center;
`

const LinkContainer = styled.div`
  height: ${props => props.link.icon ? "45px" : "30px"};
  display: flex;
  align-items: center;
  justify-content: ${props => !props.link.title ? "center" : "left"};
`

export default CustomLinks