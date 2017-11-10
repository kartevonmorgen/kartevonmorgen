import React, { Component }   from "react";
import Flower                 from "./Flower";
import styled                 from "styled-components";

const context_name = (id) => {
  switch(id) {
    case "diversity":
      return "Natürlichkeit";
    case "renewable":
      return "Erneuerbarkeit";
    case "fairness":
      return "Fairness";
    case "humanity":
      return "Menschlichkeit";
    case "transparency":
      return "Transparenz";
    case "solidarity":
      return "Solidarität";
    default:
      return id
  }
}

const context_color = (id) => {
  switch(id) {
    case "diversity":
      return '#96bf0c'  // GREEN
    case "renewable":
      return '#ffdd00'  // YELLOW
    case "fairness":
      return '#e56091'  // PINK
    case "humanity":
      return '#aa386b'  // RASPBERRY
    case "transparency":
      return '#0099ad'  // BLUE
    case "solidarity":
      return '#637a84'  // BLUEGRAY
    default:
      return "#888"
  }
}

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
  case "transparency":
    return "e";
  case "solidarity":
    return "f";
  default:
    return id
  }
}

const value_name = (v) => {
  switch(v) {
    case -1:
      return "von gestern";
    case 0:
      return "von heute";
    case 1:
      return "von morgen";
    case 2:
      return "visionär";
    default:
      return v
  }
}

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
`;

const AdditionalRatingButtonWrapper = styled.div `
  margin-top: 70px;
  height: 20px;
  font-size: 0.8em;
`;

const AdditionalRatingButton = styled.button`
  float: none;
`;

const FirstRatingButton = styled.button`
  margin-top: 1em;
  float: right;
  font-size: 0.9em;
`;

const RatingsHeading = styled.h4`
  border-bottom: 1px solid #aaa;
  margin-top: 40px;
`;

const RatingList = styled.ul`
  list-style:  none;
  margin:      0;
  margin-left: 0;
  padding:     0;
`;

const RatingListForContext = styled.ul`
  margin-left: 0.5em;
  margin-top: 0;
  padding-left: 0;
  list-style: none;
`;

const RatingContextHeading = styled.h5`
  border-bottom: 1px solid #ddd;
  margin-bottom: 0.5em;
`;

const RatingCommentList = styled.ul`
  margin-left: 1.2em;
  margin-top: 0.5em;
  margin-bottom: 0.5em;
  list-style: none;
  padding-left: 0;
`;

const RatingCount = styled.span`
  font-weight: normal;
  margin-left: 0.3em;
  color: #888;
`;

const FlowerWrapper = styled.div `
  margin-top: 0px;
  float: right;
  position: relative;
  top: -70px;
`;

class Ratings extends Component {

  render() {
    const { entry, ratings, onRate } = this.props;

    const groups = rating_groups(ratings);

    const ratingElements = groups.map(g => {
      const l = g.length
      const count = l > 1 ? l +  " Bewertungen" : l + " Bewertung";

      return (
        <div key={g[0].context}>
          <RatingContextHeading>
            <span style={{color: context_color(g[0].context)}}>{context_name(g[0].context)}</span>
            <RatingCount>({count})</RatingCount>
          </RatingContextHeading>
          <RatingListForContext>
            {
              g.map(r => <li key={r.id}>{Rating(r)}</li>)
            }
          </RatingListForContext>
        </div>)
    });

    return(
      <RatingsWrapper>
        <AdditionalRatingButtonWrapper>
          { entry.ratings && entry.ratings.length > 0 
            ? <AdditionalRatingButton onClick={() => { onRate(entry.id) }}>Bewertung abgeben</AdditionalRatingButton>
            : ""
          }
        </AdditionalRatingButtonWrapper>
        <FlowerWrapper>
        {Flower(ratings,40)}
        </FlowerWrapper>
        <RatingsHeading>Bewertungen</RatingsHeading>
        { entry.ratings && entry.ratings.length > 0
          ? <div>
              { ratingElements }
            </div>
          : <div>
              <p>Für diesen Eintrag wurden noch keine Bewertungen abgegeben.</p>
              <FirstRatingButton onClick={() => { onRate(entry.id) }}>jetzt bewerten</FirstRatingButton>
            </div>
        }
      </RatingsWrapper>
    );
  }
}

const Comment = (comment) =>
  <div className="comment">
    {comment.text}
  </div>

const RatingWrapper = styled.div`
  font-size: 0.9em;
`;

const RatingTitle = styled.span`
  margin-left: 0.3em;
  font-weight: bold;
`;

const SourceWrapper = styled.div`
  color: #AAA;
  text-align: right;
`;

const Rating = (rating) =>
  <RatingWrapper>
    <span>{value_name(rating.value)}:</span><RatingTitle>{rating.title}</RatingTitle>
    <RatingCommentList>
      {(rating.comments || []).filter(c => typeof c !== "undefined" && c !== null).map(c => <li key={c.id}>{Comment(c)}</li>)}
    </RatingCommentList>
    <SourceWrapper><span>{(rating.source != "") ? ("(" + rating.source + ")") : ""}</span></SourceWrapper>
  </RatingWrapper>

module.exports = Ratings;