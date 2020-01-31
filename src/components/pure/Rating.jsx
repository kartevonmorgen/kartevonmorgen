import React      from "react";
import styled     from "styled-components";
import i18n       from "../../i18n";


const rating_value_key = (value) => {
  switch(value){
    case -1: return "minusOne";
    case 0: return "zero";
    case 1: return "one";
    case 2: return "two";
    default: return "invalidRatingValue";
  }
}

const Rating = (rating, t) => {

  const source = rating.source ? rating.source : ''
  const match = source.match(/(?:(?:https?|ftp):\/\/)?[a-z0-9\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF/\-?=%.]+\.[\w/\-?=%#&_.]+[\w?&%/#]+/i)

  const before = match ? source.substring(0,match.index) : ''
  const after = match ? source.substring( match.index+match[0].length, source.length)  : ''
  let href = match ? match[0]  : ''
  if(href.indexOf('http') !== 0)  href = 'http://' + href

  let sourceSpan = () => { return match ? <span> {before} <Link target="_blank" href={href}>{t('ratings.sourceWebsite')}</Link> {after}</span> : <span>{source}</span>}

  return (
    <RatingWrapper>
      <RatingTitleWrapper>
        <span>{t("ratings.valueName." + rating_value_key(rating.value))}:</span><RatingTitle>{rating.title}</RatingTitle>
      </RatingTitleWrapper>
      <RatingCommentList>
        {(rating.comments || []).filter(c => typeof c !== "undefined" && c !== null).map(c => <li key={c.id}>{Comment(c)}</li>)}
      </RatingCommentList>
      <SourceWrapper>{ sourceSpan() }</SourceWrapper>
    </RatingWrapper>
  )
}

const Comment = (comment) =>
<div className="comment">
  { comment.text }
</div>

const RatingCommentList = styled.ul`
  margin-left: 1.2em;
  margin-top: 0.5em;
  margin-bottom: 0.5em;
  list-style: none;
  padding-left: 0;
`

const RatingWrapper = styled.div`
  font-size: 0.9em;
  overflow: hidden;
`

const RatingTitle = styled.span`
  margin-left: 0.3em;
  font-weight: bold;
`

const RatingTitleWrapper = styled.div`
  max-width: 288px;
`

const SourceWrapper = styled.div`
  color: #AAA;
  text-align: right;
`

module.exports = Rating;
