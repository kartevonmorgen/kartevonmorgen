import React, { Component }   from "react";
import Flower             from "./Flower";
import FlowerLeaf             from "./Flower/FlowerLeaf";
import styled                 from "styled-components";
import { translate }          from "react-i18next";
import STYLE                  from "./styling/Variables";

const context_order = (id) => {
  switch(id) {
    case "diversity":
      return "a";
    case "renewable":
      return "b";
    case "fairness":
      return "c";
    case "humanity":
      return "d";
    case "solidarity":
      return "e";
    case "transparency":
      return "f";
    default:
      return id
  }
};

const rating_groups = (ratings=[]) => {
  var groups = {};
  ratings
    .filter(r => typeof r !== "undefined" && r !== null)
    .forEach(r =>{
      let key = context_order(r.context);
      if (groups[key] == null) {
        groups[key] = [];
      }
      groups[key].push(r);
    });
  let groups_sorted = [];
  for(var k of Object.keys(groups).sort()){
    groups_sorted.push(groups[k]);
  }
  return groups_sorted;
}

class Ratings extends Component {

  render() {
    const { entry, ratings, onRate } = this.props;
    var t = (key) => {
      return this.props.t("ratings." + key);
    };

    const groups = rating_groups(ratings);

    const ratingElements = groups.map(g => {
      const context = g[0].context;
      const l = g.length;
      const count = l + " " + (l == 1 ? t("rating") : t("ratings"));
      const leafHeight = 35
      const headingColor = (context !== "renewable" ? STYLE.rating_contexts[context] : STYLE.yellowText)

      return (
        <RatingContextWrapper key={context}>
          <RatingContextHeading>
            <span style={{ color: headingColor }} >{t("contextName." + context)}</span>
          </RatingContextHeading>
          <LeafWrapper>
            <svg width={leafHeight} height={leafHeight}>
              <g transform={"translate(" + leafHeight / 2 + "," + leafHeight + ")"}>
                <FlowerLeaf
                  transform = {"rotate(180)"}
                  color     = {STYLE.rating_contexts[context]}
                  height    = { leafHeight }
                  width     = {0.7 * leafHeight} />
              </g>
            </svg>
          </LeafWrapper>
          <RatingListForContext>
            {
              g.map(r => <li key={r.id}>{Rating(r, t)}</li>)
            }
          </RatingListForContext>
        </RatingContextWrapper>)
    });

    if(entry){
      return(
        <RatingsWrapper>
          <FlowerWrapper>
            <Flower ratings={ratings} radius={40} showTooltip={true} />
          </FlowerWrapper>
          <HeadingWrapper>
            <h3>{t("heading")}</h3>
            <AdditionalRatingButtonWrapper>
              { entry.ratings && entry.ratings.length > 0
                ? <AdditionalRatingButton onClick={() => { onRate(entry.id) }}>{t("newRating")}</AdditionalRatingButton>
                : ""
              }
            </AdditionalRatingButtonWrapper>
          </HeadingWrapper>
          { entry.ratings && entry.ratings.length > 0
            ? <div>
              { ratingElements }
            </div>
            : <FirstRatingButtonWrapper>
              <p>{t("noRatingsYet")}</p>
              <FirstRatingButton onClick={() => { onRate(entry.id) }}>{t("giveFirstRating")}</FirstRatingButton>
            </FirstRatingButtonWrapper>
          }
        </RatingsWrapper>
      );
    } else {
      return(null);
    }
  }
}

const Comment = (comment) =>
  <div className="comment">
    {comment.text}
  </div>

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

  let sourceSpan = () => { return match ? <span> {before} <Link target="_blank" href={href}>Website</Link> {after}</span> : <span>{source}</span>}

  return (
    <RatingWrapper>
      <RatingTitleWrapper>
        <span>{t("valueName." + rating_value_key(rating.value))}:</span><RatingTitle>{rating.title}</RatingTitle>
      </RatingTitleWrapper>
      <RatingCommentList>
        {(rating.comments || []).filter(c => typeof c !== "undefined" && c !== null).map(c => <li key={c.id}>{Comment(c)}</li>)}
      </RatingCommentList>
      <SourceWrapper>{ sourceSpan() }</SourceWrapper>
    </RatingWrapper>
  )
}

module.exports = translate('translation')(Ratings);

const RatingsWrapper = styled.div`
  margin: 1.8em;
  color: #333;
`

const AdditionalRatingButtonWrapper = styled.div`
  position: absolute;
  top: 0;
  right: 0;
  height: 20px;
  font-size: 0.8em;
`

const AdditionalRatingButton = styled.button`
  float: none;
`

const FirstRatingButtonWrapper = styled.div`
  margin-top: -5px;
`

const FirstRatingButton = styled.button`
  float: right;
  font-size: 0.8em;
`

const HeadingWrapper = styled.div`
  position: relative;
  margin-top: 2em;
`;

const RatingList = styled.ul`
  list-style:  none;
  margin:      0;
  margin-left: 0;
  padding:     0;
`

const RatingListForContext = styled.ul`
  margin-left: 0.5em;
  margin-top: 0;
  padding-left: 0;
  list-style: none;
`

const RatingContextHeading = styled.h5`
  font-size: 0.9em;
  border-bottom: 1px solid #ddd;
  margin-bottom: 0.5em;
  width: 83%;
`

const RatingCommentList = styled.ul`
  margin-left: 1.2em;
  margin-top: 0.5em;
  margin-bottom: 0.5em;
  list-style: none;
  padding-left: 0;
`

const RatingCount = styled.span`
  font-weight: normal;
  margin-left: 0.3em;
  color: #888;
`

const FlowerWrapper = styled.div `
  margin-top: 1em;
  text-align: center;
`

const RatingContextWrapper = styled.div`
  position: relative;
`

const LeafWrapper = styled.div`
  position: absolute;
  right: 0;
  top: -3px;
  padding: 0 !important;
`

const Link = styled.a`
  color: ${STYLE.darkGray};
  &:hover {
    text-decoration: none;
    color: #000;
  }
`