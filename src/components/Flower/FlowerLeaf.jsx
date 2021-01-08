import React, { Component } from "react"
import { translate }        from "react-i18next"
import T                    from "prop-types"

class Leaf extends Component {

  static defaultProps = {
    color   : "#000",
    height  : 100,
    width   : 70
  }

  leafShape() {
    const w = this.props.width
    const h = this.props.height

    const DELTA  = (w / 2) * 0.53
    const P0 = {
      x: 0,
      y: 0
    };

    const P1 = {
      x: w/2,
      y: 0.65* h
    };

    const P2 = {
      x: 0,
      y: h
    };

    // move to P0
    return `M ${P0.x},${P0.y} `+
    // start a bezier curve
    `C ${P0.x},${P0.y} `+
    // P1
    `${P1.x},${P1.y - DELTA} `+
    `${P1.x},${P1.y} `+
    `${P1.x},${P1.y + DELTA} `+
    // P2
    `${P2.x + DELTA},${P2.y} `+
    `${P2.x},${P2.y} `+
    `${P2.x - DELTA},${P2.y} `+
    // mirroed P1
    `${-1 * P1.x},${P1.y + DELTA} `+
    `${-1 * P1.x},${P1.y} `+
    `${-1 * P1.x},${P1.y - DELTA} `+
    // close the path
    `${P0.x},${P0.y} ${P0.x},${P0.y} Z`;
  }

  render() {

    return(
      <path
        d={this.leafShape()}
        fill={this.props.color}
        transform={this.props.transform}
        data-tip={this.props.tooltip}
        data-html={true}
      />
      
    )
  }
}

Leaf.propTypes = {
  color   : T.string,
  height  : T.number,
  witdh   : T.number,
  tooltip : T.string
}

export default Leaf
