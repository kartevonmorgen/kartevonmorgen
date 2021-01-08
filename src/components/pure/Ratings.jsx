import React       from "react";
import styled      from "styled-components";
import * as Flower from "../Flower";
import FlowerLeaf  from "../Flower/FlowerLeaf";
import Rating      from "./Rating";
import i18n        from "../../i18n";
import STYLE       from "../styling/Variables";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import faComment from '@fortawesome/free-regular-svg-icons/faComment'

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

const ratingsInContexts = (ratings=[]) => {
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

const ratingsInTopics = (ratings=[]) => {
  return ratings
    // extract topics (unique titles)
    .map(rating => rating.title)
    .filter( (element,index,array) => index === array.indexOf(element) )
    // group ratings after their topic
    .map(topic => ratings.filter(rating => rating.title === topic))
    .filter(group => group.length > 0)
}

const t_r = (key) => i18n.t(key)
const t = (key) => t_r("ratings." + key)

const Ratings = ({ entry, ratings, onRate, onComment }) => {
  const ratingElements = ratingsInContexts(ratings).map(contextRatings => {
    const context = contextRatings[0].context;
    const l = contextRatings.length;
    const count = l + " " + (l === 1 ? t("rating") : t("ratings"));
    const leafHeight = 35;
    const headingColor =
      context !== "renewable"
        ? STYLE.rating_contexts[context]
        : STYLE.yellowText;

    return (
      <RatingContextWrapper key={context}>
        <RatingContextHeading>
          <span tabIndex={0} style={{ color: headingColor }} >
            { t("contextName." + context) }
          </span>
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

        { ratingsInTopics(contextRatings).map((topicRatings, i) =>
          <RatingTopicWrapper key={`rating-topic-wrapper-${i}`}>
            { topicRatings.map( (rating, index) =>
              <li key={rating.id}>
                {Rating(rating, t_r, {hideTitle: (index!=0)} )}
              </li>
            ) }
            <AdditionalCommentLink
              tabIndex={0}
              onClick={() => { onComment({
                entryId: entry.id,
                entryTitle: entry.title,
                ratingContext: context,
                ratingList: topicRatings
              })}}
              onKeyPress={(ev) => {
                ev.preventDefault()
                if (ev.key === "Enter") {
                  onComment({
                    entryId: entry.id,
                    entryTitle: entry.title,
                    ratingContext: context,
                    ratingList: topicRatings
                  })
                }
              }}
            >
              <FontAwesomeIcon icon={faComment} />&nbsp;
              <span>
                { t("newComment") }
              </span>
            </AdditionalCommentLink>
          </RatingTopicWrapper>
        ) }
      </RatingContextWrapper>)
  });

  if(entry){
    return(
      <RatingsWrapper id="RatingWrapper">
        <HeadingWrapper>
          <h3>{t("heading")}</h3>
        </HeadingWrapper>
        <FlowerWrapper>
          <Flower ratings={ratings} radius={40} showTooltip={true} />
        </FlowerWrapper>
        <AdditionalRatingButtonWrapper>
          {entry.ratings && entry.ratings.length > 0
            ? <AdditionalRatingButton onClick={() => {
              onRate(entry.id)
            }}>
              {t("newRating")}
            </AdditionalRatingButton>
            : ""
          }
        </AdditionalRatingButtonWrapper>
        { entry.ratings && entry.ratings.length > 0
          ? <div>
            { ratingElements }
          </div>
          : <FirstRatingButtonWrapper>
            <p>{t("noRatingsYet")}</p>
            <FirstRatingButton onClick={() => { onRate(entry.id) }}>
              { t("giveFirstRating") }
            </FirstRatingButton>
          </FirstRatingButtonWrapper>
        }
      </RatingsWrapper>
    );
  } else {
    return(null);
  }
}


const AdditionalCommentLink = styled.a`
  text-align: right;
  display: block;
  height: 20px;
  margin: 0.42em 0;
  font-size: 0.8em;
  cursor: pointer;
  &:hover {
    color: #000;
  }
  &:hover span {
    text-decoration: underline;
  }
`

export default Ratings;

const RatingsWrapper = styled.div`
  flex-grow: 1;
  margin: 1.8em;
  margin-top: 0;
  color: #333;
`

const AdditionalRatingButtonWrapper = styled.div`
  position: relative;
  top: 0;
  right: 0;
  height: 30px;
  font-size: 0.9em;
  margin-bottom: 16px;
  margin-top: 16px;
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
  margin-top: 0.3em;
`;

const RatingTopicWrapper = styled.ul`
  margin-left: 0.5em;
  margin-top: 0.6em;
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;

  & li:not(:first-child) {
    border-left: solid 0.3em #d8d8d8;
    padding-left: 1.1em;
    margin-left: 1.1em;
    margin-top: 0.5em;
    border-bottom: solid 1px #d8d8d8;
  }
`

const RatingContextHeading = styled.h5`
  font-size: 0.9em;
  border-bottom: 1px solid #ddd;
  margin-bottom: 0.5em;
  width: 83%;
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
