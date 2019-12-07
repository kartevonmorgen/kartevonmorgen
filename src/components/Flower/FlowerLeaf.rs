// TODO: import React, { Component } from "react"
// TODO: import { translate }        from "react-i18next"
// TODO: import T                    from "prop-types"
// TODO: 
// TODO: class Leaf extends Component {
// TODO: 
// TODO:   static defaultProps = {
// TODO:     color   : "#000",
// TODO:     height  : 100,
// TODO:     width   : 70
// TODO:   }
// TODO: 
// TODO:   leafShape() {
// TODO:     const w = this.props.width
// TODO:     const h = this.props.height
// TODO: 
// TODO:     const DELTA  = (w / 2) * 0.53
// TODO:     const P0 = {
// TODO:       x: 0,
// TODO:       y: 0
// TODO:     };
// TODO: 
// TODO:     const P1 = {
// TODO:       x: w/2,
// TODO:       y: 0.65* h
// TODO:     };
// TODO: 
// TODO:     const P2 = {
// TODO:       x: 0,
// TODO:       y: h
// TODO:     };
// TODO: 
// TODO:     // move to P0
// TODO:     return `M ${P0.x},${P0.y} `+
// TODO:     // start a bezier curve
// TODO:     `C ${P0.x},${P0.y} `+
// TODO:     // P1
// TODO:     `${P1.x},${P1.y - DELTA} `+
// TODO:     `${P1.x},${P1.y} `+
// TODO:     `${P1.x},${P1.y + DELTA} `+
// TODO:     // P2
// TODO:     `${P2.x + DELTA},${P2.y} `+
// TODO:     `${P2.x},${P2.y} `+
// TODO:     `${P2.x - DELTA},${P2.y} `+
// TODO:     // mirroed P1
// TODO:     `${-1 * P1.x},${P1.y + DELTA} `+
// TODO:     `${-1 * P1.x},${P1.y} `+
// TODO:     `${-1 * P1.x},${P1.y - DELTA} `+
// TODO:     // close the path
// TODO:     `${P0.x},${P0.y} ${P0.x},${P0.y} Z`;
// TODO:   }
// TODO: 
// TODO:   render() {
// TODO: 
// TODO:     return(
// TODO:       <path
// TODO:         d={this.leafShape()}
// TODO:         fill={this.props.color}
// TODO:         transform={this.props.transform}
// TODO:         data-tip={this.props.tooltip}
// TODO:         data-html={true}
// TODO:       />
// TODO:       
// TODO:     )
// TODO:   }
// TODO: }
// TODO: 
// TODO: Leaf.propTypes = {
// TODO:   color   : T.string,
// TODO:   height  : T.number,
// TODO:   witdh   : T.number,
// TODO:   tooltip : T.string
// TODO: }
// TODO: module.exports = Leaf
