import React, { Component }   from "react";
import Flower                 from "./Flower";
import ReactVMFlower          from "react-vm-flower";
import styled                 from "styled-components";
import { translate }          from "react-i18next";
import COLORS                 from "./styling/Colors";

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

const RatingsWrapper = styled.div `
  padding: 1em;
  color: #333;
`

const AdditionalRatingButtonWrapper = styled.div `
  margin-top: 70px;
  height: 20px;
  font-size: 0.8em;
`

const AdditionalRatingButton = styled.button`
  float: none;
`

const FirstRatingButton = styled.button`
  margin-top: 1em;
  float: right;
  font-size: 0.9em;
`

const RatingsHeading = styled.h4`
  border-bottom: 1px solid #aaa;
  margin-top: 40px;
`

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
  margin-top: 0px;
  float: right;
  position: relative;
  top: -70px;
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
      const Leaf = ReactVMFlower.Leaf
      const leafHeight = 35
      return (
        <RatingContextWrapper key={context}>
          <RatingContextHeading>
            <span>{t("contextName." + context)}</span>
          </RatingContextHeading>
          <LeafWrapper>
            <svg width={leafHeight} height={leafHeight}>
              <g transform={"translate(" + leafHeight / 2 + "," + leafHeight + ")"}>
                <Leaf
                    transform = {"rotate(180)"}
                    color     = {COLORS.rating_contexts[context]}
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
          <AdditionalRatingButtonWrapper>
            { entry.ratings && entry.ratings.length > 0
              ? <AdditionalRatingButton onClick={() => { onRate(entry.id) }}>{t("newRating")}</AdditionalRatingButton>
              : ""
            }
          </AdditionalRatingButtonWrapper>
          <FlowerWrapper>
          {Flower(ratings,40)}
          </FlowerWrapper>
          <RatingsHeading>{t("heading")}</RatingsHeading>
          { entry.ratings && entry.ratings.length > 0
            ? <div>
                { ratingElements }
              </div>
            : <div>
                <p>{t("noRatingsYet")}</p>
                <FirstRatingButton onClick={() => { onRate(entry.id) }}>{t("giveFirstRating")}</FirstRatingButton>
              </div>
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

const Rating = (rating, t) =>
  <RatingWrapper>
    <RatingTitleWrapper>
      <span>{t("valueName." + rating_value_key(rating.value))}:</span><RatingTitle>{rating.title}</RatingTitle>
    </RatingTitleWrapper>
    <RatingCommentList>
      {(rating.comments || []).filter(c => typeof c !== "undefined" && c !== null).map(c => <li key={c.id}>{Comment(c)}</li>)}
    </RatingCommentList>
    <SourceWrapper><span>{(rating.source != "") ? ("(" + rating.source + ")") : ""}</span></SourceWrapper>
  </RatingWrapper>

module.exports = translate('translation')(Ratings);