import React from 'react'
import styled from "styled-components";
import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'


const siteToIconMapper = {
  "wa.me": "whatsapp",
  "facebook.com": "facebook",
  "fb.me": "facebook",
  "instagram.com": "instagram",
  "twitter.com": "twitter",
  "t.co": "twitter",
  "t.me": "telegram",
}

const getIconNameFromUrl = (url) => {
  const {hostname} = new URL(url)
  const website = hostname.replace(/^(www\.)/,"");
  if (!siteToIconMapper.hasOwnProperty(website)) {
    return false
  }

  return ["fab", siteToIconMapper[website]]
}

const CustomLinks = (props) => {
  const {customLinks} = props

  return (
    <div className="pure-g">
      {
        customLinks.map((customLink, i) => {
          const icon = getIconNameFromUrl(customLink.url)

          return (
            <LinkContainer className="pure-u-1-4" key={`custom-link-${i}`}>
              <IconLink
                title={customLink.title}
                href={customLink.url}
              >
                { icon ?
                  <FontAwesomeIcon icon={icon}/> :
                  <LinkTitle>{customLink.title}</LinkTitle>
                }
              </IconLink>
            </LinkContainer>
          )
        })
      }
    </div>
  )
}


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
  height: 50px;
  display: flex;
  align-items: center;
  justify-content: center;
`

export default CustomLinks