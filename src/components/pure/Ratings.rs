// TODO: import React      from "react";
// TODO: import styled     from "styled-components";
// TODO: import Flower     from "../Flower";
// TODO: import FlowerLeaf from "../Flower/FlowerLeaf";
// TODO: import i18n       from "../../i18n";
// TODO: import STYLE      from "../styling/Variables";
// TODO: 
// TODO: const context_order = (id) => {
// TODO:   switch(id) {
// TODO:     case "diversity":
// TODO:       return "a";
// TODO:     case "renewable":
// TODO:       return "b";
// TODO:     case "fairness":
// TODO:       return "c";
// TODO:     case "humanity":
// TODO:       return "d";
// TODO:     case "solidarity":
// TODO:       return "e";
// TODO:     case "transparency":
// TODO:       return "f";
// TODO:     default:
// TODO:       return id
// TODO:   }
// TODO: };
// TODO: 
// TODO: const rating_groups = (ratings=[]) => {
// TODO:   var groups = {};
// TODO:   ratings
// TODO:     .filter(r => typeof r !== "undefined" && r !== null)
// TODO:     .forEach(r =>{
// TODO:       let key = context_order(r.context);
// TODO:       if (groups[key] == null) {
// TODO:         groups[key] = [];
// TODO:       }
// TODO:       groups[key].push(r);
// TODO:     });
// TODO:   let groups_sorted = [];
// TODO:   for(var k of Object.keys(groups).sort()){
// TODO:     groups_sorted.push(groups[k]);
// TODO:   }
// TODO:   return groups_sorted;
// TODO: }
// TODO: 
// TODO: const t = (key) => i18n.t("ratings." + key)
// TODO: 
// TODO: const Ratings = ({ entry, ratings, onRate }) => {
// TODO:   const groups = rating_groups(ratings);
// TODO: 
// TODO:   const ratingElements = groups.map(g => {
// TODO:     const context = g[0].context;
// TODO:     const l = g.length;
// TODO:     const count = l + " " + (l == 1 ? t("rating") : t("ratings"));
// TODO:     const leafHeight = 35;
// TODO:     const headingColor =
// TODO:       context !== "renewable"
// TODO:         ? STYLE.rating_contexts[context] 
// TODO:         : STYLE.yellowText;
// TODO: 
// TODO:     return (
// TODO:       <RatingContextWrapper key={context}>
// TODO:         <RatingContextHeading>
// TODO:           <span style={{ color: headingColor }} >
// TODO:             { t("contextName." + context) }
// TODO:           </span>
// TODO:         </RatingContextHeading>
// TODO:         <LeafWrapper>
// TODO:           <svg width={leafHeight} height={leafHeight}>
// TODO:             <g transform={"translate(" + leafHeight / 2 + "," + leafHeight + ")"}>
// TODO:               <FlowerLeaf
// TODO:                 transform = {"rotate(180)"}
// TODO:                 color     = {STYLE.rating_contexts[context]}
// TODO:                 height    = { leafHeight }
// TODO:                 width     = {0.7 * leafHeight} />
// TODO:             </g>
// TODO:           </svg>
// TODO:         </LeafWrapper>
// TODO:         <RatingListForContext>
// TODO:           { g.map(r => <li key={r.id}>{Rating(r, t)}</li>) }
// TODO:         </RatingListForContext>
// TODO:       </RatingContextWrapper>)
// TODO:   });
// TODO: 
// TODO:   if(entry){
// TODO:     return(
// TODO:       <RatingsWrapper>
// TODO:         <FlowerWrapper>
// TODO:           <Flower ratings={ratings} radius={40} showTooltip={true} />
// TODO:         </FlowerWrapper>
// TODO:         <HeadingWrapper>
// TODO:           <h3>{t("heading")}</h3>
// TODO:           <AdditionalRatingButtonWrapper>
// TODO:             { entry.ratings && entry.ratings.length > 0
// TODO:               ? <AdditionalRatingButton onClick={() => { onRate(entry.id) }}>
// TODO:                   { t("newRating") }
// TODO:                 </AdditionalRatingButton>
// TODO:               : ""
// TODO:             }
// TODO:           </AdditionalRatingButtonWrapper>
// TODO:         </HeadingWrapper>
// TODO:         { entry.ratings && entry.ratings.length > 0
// TODO:           ? <div>
// TODO:             { ratingElements }
// TODO:           </div>
// TODO:           : <FirstRatingButtonWrapper>
// TODO:             <p>{t("noRatingsYet")}</p>
// TODO:             <FirstRatingButton onClick={() => { onRate(entry.id) }}>
// TODO:               { t("giveFirstRating") }
// TODO:             </FirstRatingButton>
// TODO:           </FirstRatingButtonWrapper>
// TODO:         }
// TODO:       </RatingsWrapper>
// TODO:     );
// TODO:   } else {
// TODO:     return(null);
// TODO:   }
// TODO: }
// TODO: 
// TODO: const Comment = (comment) =>
// TODO:   <div className="comment">
// TODO:     { comment.text }
// TODO:   </div>
// TODO: 
// TODO: const RatingWrapper = styled.div`
// TODO:   font-size: 0.9em;
// TODO:   overflow: hidden;
// TODO: `
// TODO: 
// TODO: const RatingTitle = styled.span`
// TODO:   margin-left: 0.3em;
// TODO:   font-weight: bold;
// TODO: `
// TODO: 
// TODO: const RatingTitleWrapper = styled.div`
// TODO:   max-width: 288px;
// TODO: `
// TODO: 
// TODO: const SourceWrapper = styled.div`
// TODO:   color: #AAA;
// TODO:   text-align: right;
// TODO: `
// TODO: 
// TODO: const rating_value_key = (value) => {
// TODO:   switch(value){
// TODO:     case -1: return "minusOne";
// TODO:     case 0: return "zero";
// TODO:     case 1: return "one";
// TODO:     case 2: return "two";
// TODO:     default: return "invalidRatingValue";
// TODO:   }
// TODO: }
// TODO: 
// TODO: const Rating = (rating, t) => {
// TODO: 
// TODO:   const source = rating.source ? rating.source : ''
// TODO:   const match = source.match(/(?:(?:https?|ftp):\/\/)?[a-z0-9\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF/\-?=%.]+\.[\w/\-?=%#&_.]+[\w?&%/#]+/i)
// TODO: 
// TODO:   const before = match ? source.substring(0,match.index) : ''
// TODO:   const after = match ? source.substring( match.index+match[0].length, source.length)  : ''
// TODO:   let href = match ? match[0]  : ''
// TODO:   if(href.indexOf('http') !== 0)  href = 'http://' + href
// TODO: 
// TODO:   let sourceSpan = () => { return match ? <span> {before} <Link target="_blank" href={href}>{t('sourceWebsite')}</Link> {after}</span> : <span>{source}</span>}
// TODO: 
// TODO:   return (
// TODO:     <RatingWrapper>
// TODO:       <RatingTitleWrapper>
// TODO:         <span>{t("valueName." + rating_value_key(rating.value))}:</span><RatingTitle>{rating.title}</RatingTitle>
// TODO:       </RatingTitleWrapper>
// TODO:       <RatingCommentList>
// TODO:         {(rating.comments || []).filter(c => typeof c !== "undefined" && c !== null).map(c => <li key={c.id}>{Comment(c)}</li>)}
// TODO:       </RatingCommentList>
// TODO:       <SourceWrapper>{ sourceSpan() }</SourceWrapper>
// TODO:     </RatingWrapper>
// TODO:   )
// TODO: }
// TODO: 
// TODO: module.exports = Ratings;
// TODO: 
// TODO: const RatingsWrapper = styled.div`
// TODO:   flex-grow: 1;
// TODO:   margin: 1.8em;
// TODO:   color: #333;
// TODO: `
// TODO: 
// TODO: const AdditionalRatingButtonWrapper = styled.div`
// TODO:   position: absolute;
// TODO:   top: 0;
// TODO:   right: 0;
// TODO:   height: 20px;
// TODO:   font-size: 0.8em;
// TODO: `
// TODO: 
// TODO: const AdditionalRatingButton = styled.button`
// TODO:   float: none;
// TODO: `
// TODO: 
// TODO: const FirstRatingButtonWrapper = styled.div`
// TODO:   margin-top: -5px;
// TODO: `
// TODO: 
// TODO: const FirstRatingButton = styled.button`
// TODO:   float: right;
// TODO:   font-size: 0.8em;
// TODO: `
// TODO: 
// TODO: const HeadingWrapper = styled.div`
// TODO:   position: relative;
// TODO:   margin-top: 2em;
// TODO: `;
// TODO: 
// TODO: const RatingList = styled.ul`
// TODO:   list-style:  none;
// TODO:   margin:      0;
// TODO:   margin-left: 0;
// TODO:   padding:     0;
// TODO: `
// TODO: 
// TODO: const RatingListForContext = styled.ul`
// TODO:   margin-left: 0.5em;
// TODO:   margin-top: 0.6em;
// TODO:   padding-left: 0;
// TODO:   list-style: none;
// TODO: `
// TODO: 
// TODO: const RatingContextHeading = styled.h5`
// TODO:   font-size: 0.9em;
// TODO:   border-bottom: 1px solid #ddd;
// TODO:   margin-bottom: 0.5em;
// TODO:   width: 83%;
// TODO: `
// TODO: 
// TODO: const RatingCommentList = styled.ul`
// TODO:   margin-left: 1.2em;
// TODO:   margin-top: 0.5em;
// TODO:   margin-bottom: 0.5em;
// TODO:   list-style: none;
// TODO:   padding-left: 0;
// TODO: `
// TODO: 
// TODO: const RatingCount = styled.span`
// TODO:   font-weight: normal;
// TODO:   margin-left: 0.3em;
// TODO:   color: #888;
// TODO: `
// TODO: 
// TODO: const FlowerWrapper = styled.div `
// TODO:   margin-top: 1em;
// TODO:   text-align: center;
// TODO: `
// TODO: 
// TODO: const RatingContextWrapper = styled.div`
// TODO:   position: relative;
// TODO: `
// TODO: 
// TODO: const LeafWrapper = styled.div`
// TODO:   position: absolute;
// TODO:   right: 0;
// TODO:   top: -3px;
// TODO:   padding: 0 !important;
// TODO: `
// TODO: 
// TODO: const Link = styled.a`
// TODO:   color: ${STYLE.darkGray};
// TODO:   &:hover {
// TODO:     text-decoration: none;
// TODO:     color: #000;
// TODO:   }
// TODO: `
