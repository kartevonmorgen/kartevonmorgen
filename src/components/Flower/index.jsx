import React, {Component} from "react"
import Leaf from "./FlowerLeaf"
import {rating_groups} from "../../rating_groups"
import Tooltip from "react-tooltip"
import T from "prop-types"
import styled from "styled-components"
import i18n from "../../i18n"
import STYLE from "../styling/Variables"

const colors = STYLE.rating_contexts

//styles below

class Flower extends Component {

  static defaultProps = {
    radius: 40,
    ratings: {}
  }

  factorList = Object.keys(colors)
  size = this.props.radius * 2
  space = this.size * 0.03

  angle = 60

  rad(deg) {
    return deg * Math.PI / 180
  }


  getScales(ratings) {
    let scales = [0.59, 0.59, 0.59, 0.59, 0.59, 0.59]

    const groups = rating_groups(ratings)

    Object.keys(groups).forEach(g => {
      const rtngs = groups[g]
      if (rtngs && rtngs.length > 0) {
        const av = rtngs.reduce((acc, r) => {
          return acc + r.value
        }, 0) / rtngs.length
        const scale = 0.233 * av + 0.533
        switch (g) {
          case "diversity":
            scales[0] = scale
            break
          case "renewable":
            scales[1] = scale
            break
          case "fairness":
            scales[2] = scale
            break
          case "humanity":
            scales[3] = scale
            break
          case "transparency":
            scales[4] = scale
            break
          case "solidarity":
            scales[5] = scale
            break
          default:
            break
        }
      }
    })
    return scales
  }

  getTransformation(i, scale, space) {
    const deg = i * this.angle
    let s = scale
    if (s == null) {
      s = 1
    }
    return `translate(${space * Math.cos(this.rad(deg))},${space * Math.sin(this.rad(deg))}) \
      rotate(${deg - 90}) \
      scale(${s})`
  }

  getColor(scale, factor) {
    return (scale === 0.59) ? colors["default"] : colors[factor]
  }

  getTooltip(factorKey) {
    const factor = i18n.t("ratings.contextName." + factorKey)
    const description = i18n.t("ratings.contextExplanation." + factorKey)
    return "<h3>" + factor + "</h3><p>" + description + "</p>"

  }

  render() {
    const s = this.scales
    const h = (this.size / 2) - this.space
    const w = 0.7 * h
    const radius = this.props.radius

    const scales = this.getScales(this.props.ratings)


    const leafs = [0, 1, 2, 3, 4, 5].map((i) => {

      const tooltip = this.props.showTooltip ? this.getTooltip(this.factorList[i]) : ''

      return (
        <Leaf
          key={i}
          transform={this.getTransformation(i, scales[i], this.space)}
          color={this.getColor(scales[i], this.factorList[i])}
          height={h}
          width={w}
          tooltip={tooltip}
        />
      )
    })
    return (
      <div>
        <svg width={(radius + 2) * 2} height={(radius + 2) * 2}>
          <g transform={"translate(" + (radius + 2) + "," + (radius + 2) + ")"}>
            <circle cx={0} cy={0} r={radius + 1} fill="#fff" stroke="#ccc" strokeWidth={0.5}/>
            <g> {leafs} </g>
          </g>
        </svg>
        <KVTooltip place="bottom" type="dark" effect="solid"/>

      </div>
    )
  }
}

Flower.propTypes = {
  ratings: T.array,
  radius: T.number,
  showTooltip: T.bool
}

export default styled(Flower)`
  float: right;
  margin-top: 0.4em;
  margin-right: 1rem;
`

const KVTooltip = styled(Tooltip)`
  max-width: 130px;
  color: #333 !important;
  background: #f2f2f2 !important;
  margin-top: 2px !important;
  opacity: 1 !important;
  border-radius: 0.5rem !important;
  padding: 6px 17px !important;
  hyphens: auto; 

  &:after {
    border-bottom-color: #f2f2f2 !important;
  }
  
  > h3{
    margin: .5rem 0 -.5rem 0;
    padding: 0;
    font-size: .9rem;
  }
`
