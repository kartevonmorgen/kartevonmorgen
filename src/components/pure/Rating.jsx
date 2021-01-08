import React      from "react";
import i18n       from "../../i18n";
import styled     from "styled-components";
import STYLE      from "../styling/Variables";


const rating_value_key = (value) => {
  switch(value){
    case -1: return "minusOne";
    case 0: return "zero";
    case 1: return "one";
    case 2: return "two";
    default: return "invalidRatingValue";
  }
}

// displayOptions
//   hideSource: do not show Source if set to true
//   hideTitle: do not show Title if set to true
const Rating = (rating, t, displayOptions = {}) => {
  const comment = rating.comments[0];

  // Display links appropriately
  const source = rating.source ? rating.source : ''
  const match = source.match(/(?:(?:https?|ftp):\/\/)?[a-z0-9\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF/\-?=%.]+\.[\w/\-?=%#&_.]+[\w?&%/#]+/i)
  const before = match ? source.substring(0,match.index) : ''
  const after = match ? source.substring( match.index+match[0].length, source.length)  : ''
  let href = match ? match[0]  : ''
  if(href.indexOf('http') !== 0)  href = 'http://' + href
  let sourceSpan = () => { return match ? <span> {before} <Link target="_blank" href={href}>{t('ratings.sourceWebsite')}</Link> {after}</span> : <span>{source}</span>}

  return (
    <RatingWrapper>
      { displayOptions.hideTitle ? '' :
        <TitleWrapper>
          <span tabIndex={0}>{t("ratings.valueName." + rating_value_key(rating.value))}:</span><RatingTitle tabIndex={0}>{rating.title}</RatingTitle>
        </TitleWrapper>
      }
      <CommentWrapper tabIndex={0} className="comment" key={comment.id}>
        { comment.text }
        <div>
          {displayOptions.hideTitle ? t("ratings.valueName." + rating_value_key(rating.value)) : ''}
        </div>
      </CommentWrapper>
      { displayOptions.hideSource ? '' :
        <SourceWrapper>{ sourceSpan() }</SourceWrapper>
      }
    </RatingWrapper>
  )
}

const CommentWrapper = styled.div`
  margin-left: 1.2em;
  margin-top: 0.5em;
  margin-bottom: 0.5em;
  list-style: none;
  padding-left: 0;

  & div {
    text-align: right;
  }
`

const RatingWrapper = styled.div`
  font-size: 0.9em;
  overflow: hidden;
`

const RatingTitle = styled.span`
  margin-left: 0.3em;
  font-weight: 500 !important;
`

const TitleWrapper = styled.div`
  max-width: 288px;
`

const SourceWrapper = styled.div`
  color: #AAA;
  text-align: right;
`

const Link = styled.a`
  color: ${STYLE.darkGray};
  &:hover {
    text-decoration: none;
    color: #000;
  }
`

export default Rating;
