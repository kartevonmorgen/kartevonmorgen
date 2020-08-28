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
    return "link"
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
            <IconLinkWrapper className="pure-u-1-4" key={`custom-link-${i}`}>
              <IconLink
                title={customLink.title}
                href={customLink.url}
              >
                <FontAwesomeIcon icon={icon}/>
              </IconLink>
            </IconLinkWrapper>
          )
        })
      }
    </div>
  )
}


const IconLink = styled.a`
  font-size: 40px;
  color: grey;
  display: flex;
  align-items: center;
  justify-content: center;
`

const IconLinkWrapper = styled.div`
  width: 50px;
  height: 50px;
  display: flex;
  align-items: center;
  justify-content: center;
`

export default CustomLinks