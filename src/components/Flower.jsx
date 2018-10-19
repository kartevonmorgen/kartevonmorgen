import Flower from "react-vm-flower";
import React  from "react";
import { rating_groups } from "../rating";

const flower_scales = (ratings=[]) => {
  var scales = [0.6,0.6,0.6,0.6,0.6,0.6];
  const groups = rating_groups(ratings);
  Object.keys(groups).forEach(g => {
    const rtngs = groups[g];
    if (rtngs && rtngs.length > 0) {
      const av = rtngs.reduce((acc, r) => {return acc+r.value;}, 0) / rtngs.length;
      const scale = 0.233 * av + 0.533;
      switch (g) {
        case "diversity":
          scales[0] = scale;
          break;
        case "renewable":
          scales[1] = scale;
          break;
        case "fairness":
          scales[2] = scale;
          break;
        case "humanity":
          scales[3] = scale;
          break;
        case "transparency":
          scales[4] = scale;
          break;
        case "solidarity":
          scales[5] = scale;
          break;
        default:
          break;
      }
    }
  })
  return scales;
}

const KVMFlower = (ratings=[],radius=40) => {

  var colors = ["#eee", "#eee", "#eee", "#eee", "#eee", "#eee"];

  ratings.filter(r => typeof r !== "undefined" && r !== null).forEach(r => {
    switch (r.context) {
      case "diversity":
        colors[0] = null;
        break;
      case "renewable":
        colors[1] = null;
        break;
      case "fairness":
        colors[2] = null;
        break;
      case "humanity":
        colors[3] = null;
        break;
      case "transparency":
        colors[4] = null;
        break;
      case "solidarity":
        colors[5] = null;
        break;
      default:
        break;
    }
  })

  return (
  <div>
    <svg width={(radius +2) * 2} height = {(radius+2) * 2}>
      <g transform={"translate(" + (radius + 2) + "," + (radius + 2) + ")"}>
        <circle cx={0} cy={0} r={radius+1} fill="#fff" stroke="#ccc" strokeWidth={0.5} />
        <Flower size = {radius * 2} scales={flower_scales(ratings)} colors={colors} />
      </g>
    </svg>
  </div>)
}

module.exports = KVMFlower
