// TODO: import React, { Component } from "react"
// TODO: import Leaf from "./FlowerLeaf"
// TODO: import { rating_groups } from "../../rating"
// TODO: import Tooltip from "react-tooltip"
// TODO: import T from "prop-types"
// TODO: import styled     from "styled-components"
// TODO: import i18n                 from "../../i18n";
// TODO: import STYLE        from "../styling/Variables"
// TODO: const colors = STYLE.rating_contexts;
// TODO:
// TODO: //styles below
// TODO:
// TODO: class Flower extends Component {
// TODO:
// TODO:   static defaultProps = {
// TODO:     radius   : 40,
// TODO:     ratings  : {}
// TODO:   }
// TODO:
// TODO:   factorList = Object.keys( colors )
// TODO:   size = this.props.radius * 2
// TODO:   space = this.size * 0.03
// TODO:
// TODO:   angle = 60
// TODO:
// TODO:   rad(deg) {
// TODO:     return deg * Math.PI / 180
// TODO:   }
// TODO:
// TODO:
// TODO:   getScales(ratings) {
// TODO:     let scales = [0.59,0.59,0.59,0.59,0.59,0.59];
// TODO:
// TODO:     const groups = rating_groups(ratings);
// TODO:
// TODO:     Object.keys(groups).forEach(g => {
// TODO:       const rtngs = groups[g];
// TODO:       if (rtngs && rtngs.length > 0) {
// TODO:         const av = rtngs.reduce((acc, r) => {return acc+r.value;}, 0) / rtngs.length;
// TODO:         const scale = 0.233 * av + 0.533;
// TODO:         switch (g) {
// TODO:           case "diversity":
// TODO:             scales[0] = scale;
// TODO:             break;
// TODO:           case "renewable":
// TODO:             scales[1] = scale;
// TODO:             break;
// TODO:           case "fairness":
// TODO:             scales[2] = scale;
// TODO:             break;
// TODO:           case "humanity":
// TODO:             scales[3] = scale;
// TODO:             break;
// TODO:           case "transparency":
// TODO:             scales[4] = scale;
// TODO:             break;
// TODO:           case "solidarity":
// TODO:             scales[5] = scale;
// TODO:             break;
// TODO:           default:
// TODO:             break;
// TODO:         }
// TODO:       }
// TODO:     })
// TODO:     return scales;
// TODO:   }
// TODO:
// TODO:   getTransformation(i, scale, space) {
// TODO:     const deg = i * this.angle;
// TODO:     let s = scale;
// TODO:     if (s == null) { s = 1; }
// TODO:     return `translate(${space * Math.cos(this.rad(deg))},${space * Math.sin(this.rad(deg))}) \
// TODO:       rotate(${deg-90}) \
// TODO:       scale(${s})`
// TODO:   }
// TODO:
// TODO:   getColor(scale, factor) {
// TODO:     return (scale === 0.59) ? colors["default"] : colors[factor]
// TODO:   }
// TODO:
// TODO:   getTooltip(factorKey){
// TODO:     const factor = i18n.t("ratings.contextName."+factorKey)
// TODO:     const description = i18n.t("ratings.contextExplanation."+factorKey)
// TODO:     return "<h3>"+factor+"</h3><p>"+description+"</p>"
// TODO:
// TODO:   }
// TODO:
// TODO:   render() {
// TODO:     const s = this.scales
// TODO:     const h = (this.size / 2) - this.space
// TODO:     const w = 0.7 * h
// TODO:     const radius = this.props.radius
// TODO:
// TODO:     const scales = this.getScales(this.props.ratings)
// TODO:
// TODO:
// TODO:     const leafs = [0, 1, 2, 3, 4, 5].map((i) => {
// TODO:
// TODO:       const tooltip = this.props.showTooltip ? this.getTooltip(this.factorList[i]) : ''
// TODO:
// TODO:       return(
// TODO:         <Leaf
// TODO:           key = {i}
// TODO:           transform={ this.getTransformation(i, scales[i], this.space) }
// TODO:           color={ this.getColor(scales[i], this.factorList[i] ) }
// TODO:           height={ h }
// TODO:           width={ w }
// TODO:           tooltip={ tooltip }
// TODO:         />
// TODO:       )
// TODO:     })
// TODO:     return (
// TODO:       <div>
// TODO:         <svg width={(radius +2) * 2} height = {(radius+2) * 2}>
// TODO:           <g transform={"translate(" + (radius + 2) + "," + (radius + 2) + ")"}>
// TODO:             <circle cx={0} cy={0} r={radius+1} fill="#fff" stroke="#ccc" strokeWidth={0.5} />
// TODO:             <g> {leafs} </g>
// TODO:           </g>
// TODO:         </svg>
// TODO:         <KVTooltip place="bottom" type="dark" effect="solid" />
// TODO:
// TODO:       </div>
// TODO:     )
// TODO:   }
// TODO: }
// TODO:
// TODO: Flower.propTypes = {
// TODO:   ratings:  T.array,
// TODO:   radius:   T.number,
// TODO:   showTooltip: T.bool
// TODO: }
// TODO:
// TODO: module.exports = Flower
// TODO:
// TODO:
// TODO: export default styled(Flower)`
// TODO:   float: right;
// TODO:   margin-top: 0.4em;
// TODO:   margin-right: 1rem;
// TODO: `
// TODO:
// TODO: const KVTooltip = styled(Tooltip)`
// TODO:   max-width: 130px;
// TODO:   color: #333 !important;
// TODO:   background: #f2f2f2 !important;
// TODO:   margin-top: 2px !important;
// TODO:   opacity: 1 !important;
// TODO:   border-radius: 0.5rem !important;
// TODO:   padding: 6px 17px !important;
// TODO:   hyphens: auto;
// TODO:
// TODO:   &:after {
// TODO:     border-bottom-color: #f2f2f2 !important;
// TODO:   }
// TODO:
// TODO:   > h3{
// TODO:     margin: .5rem 0 -.5rem 0;
// TODO:     padding: 0;
// TODO:     font-size: .9rem;
// TODO:   }
// TODO: `
