import React, { Component }   from "react";
import Address                from "./AddressLine";
import { pure }               from "recompose";
import { NAMES, CSS_CLASSES } from "../constants/Categories";
import Flower                 from "react-vm-flower";

const context_name = (id) => {
  switch(id) {
    case "diversity":
      return "Vielfalt";
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

const Tags = (tags=[]) =>
  <div key="tags" className = "tags pure-g">
    <i className = "pure-u-2-24 fa fa-tags" />
    <span className = "pure-u-21-24">
      <ul>
      { tags
          .filter(t => t != "")
          .map(t => <li key={t}>{t}</li>)
      }
      </ul>
    </span>
  </div>

const rating_groups = (ratings=[]) => {
  var groups = {};
  ratings
    .filter(r => typeof r !== "undefined" && r !== null)
    .forEach(r =>{
      if (groups[r.context] == null) {
        groups[r.context] = [];
      }
      groups[r.context].push(r);
    });
  return groups;
}

const Ratings = (ratings=[]) => {

  const groups = rating_groups(ratings);

  const rtngs = Object.keys(groups).map(g => {
    const l = groups[g].length
    const count = l > 1 ? l +  " Bewertungen" : l + " Bewertung";

    return (
    <div className="rating-context">
      <h5>
        <span style={{color: context_color(g)}}>{context_name(g)}</span>
        <span className="count">({count})</span>
      </h5>
      <ul>
        {
          groups[g].map(r => <li key={r.id}>{Rating(r)}</li>)
        }
      </ul>
    </div>)
  })

  return (
    <div className="rating-list">
      <ul>{rtngs}</ul>
    </div>)
}

const Rating = (rating) =>
  <div className="rating">
    <span>{value_name(rating.value)}:</span><span className="title">{rating.title}</span>
    <ul className="comments">
      {(rating.comments || []).filter(c => typeof c !== "undefined" && c !== null).map(c => <li key={c.id}>{Comment(c)}</li>)}
    </ul>
  </div>

const Comment = (comment) =>
  <div className="comment">
    {comment.text}
  </div>

const FLOWER_RADIUS = 40;

const flower_scales = (ratings=[]) => {
  var scales = [0.6,0.6,0.6,0.6,0.6,0.6];
  const groups = rating_groups(ratings);
  Object.keys(groups).forEach(g => {
    const rtngs = groups[g];
    if (rtngs && rtngs.length > 0) { 
      const av = rtngs.reduce((acc, r) => {return acc+r.value;}, 0) / rtngs.length;
      console.info("average", av)
      const scale = 0.233 * av + 0.533;
      console.info("scale", scale)
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
const KVMFlower = (ratings=[]) => {

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
    <svg width={(FLOWER_RADIUS +2) * 2} height = {(FLOWER_RADIUS+2) * 2}>
      <g transform={"translate(" + (FLOWER_RADIUS + 2) + "," + (FLOWER_RADIUS + 2) + ")"}>
        <circle cx={0} cy={0} r={FLOWER_RADIUS+1} fill="#fff" stroke="#ccc" strokeWidth={0.5} />
        <Flower size = {FLOWER_RADIUS * 2} scales={flower_scales(ratings)} colors={colors} />
      </g>
    </svg>)
}

class EntryDetails extends Component {

  render() {
    const { entry, ratings, onRate } = this.props;
    const clz = CSS_CLASSES[entry.categories && entry.categories[0]];

    return (
    <div className = {"entry-detail " + clz} id = {entry.id + "-details"}>
      <div className= "category">
        <span>{NAMES[entry.categories && entry.categories[0]]}</span>
      </div>
      <div>
        <h3>{entry.title}</h3>
        <p>{entry.description}</p>
        <div>{[
          (entry.homepage ?
            <div key="hp" className = "pure-g">
              <i className = "pure-u-2-24 fa fa-globe" />
              <a className = "pure-u-21-24" href = {entry.homepage}>
                { entry.homepage }
              </a>
            </div> : null),
          (entry.email ?
            <div key="mail" className= "pure-g">
              <i className= "pure-u-2-24 fa fa-envelope" />
              <a className= "pure-u-21-24" href={ "mailto:" + entry.email}>
                {entry.email}
              </a>
            </div>
            : null),
          (entry.telephone
            ?
            <div key="tel" className = "pure-g">
              <i className = "pure-u-2-24 fa fa-phone" />
              <span className = "pure-u-21-24">
                { entry.telephone }
              </span>
            </div>
            : null),
          ((entry.street || entry.zip || entry.city) ?
            <div key="addr" className = "address pure-g">
              <i className = "pure-u-2-24 fa fa-map-marker" />
              <div className = "pure-u-21-24">
                <Address { ...entry } />
              </div>
            </div>
            : null),
          (entry.tags && entry.tags.filter(t => t !="").length > 0
            ? Tags(entry.tags)
            : null)
        ]}</div>
        <div className="ratings">
          <div className="flower">{KVMFlower(ratings)}</div>
          <h4>Bewertungen</h4>
          { entry.ratings && entry.ratings.length > 0
            ? <div>
                { Ratings(ratings) }
                <button onClick={() => { onRate(entry.id) }}>weitere Bewertung abgeben</button>
              </div>
            : <div>
                <p>Für diesen Eintrag wurden noch keine Bewertungen abgegeben.</p>
                <button onClick={() => { onRate(entry.id) }}>jetzt bewerten</button>
              </div>
          }
        </div>
      </div>
    </div>)
  }
}

module.exports = pure(EntryDetails)
