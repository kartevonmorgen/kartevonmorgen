import React, { Component }   from "react";
import Address                from "./AddressLine";
import { pure }               from "recompose";
import { NAMES, CSS_CLASSES } from "../constants/Categories";

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

const Ratings = (ratings=[]) => {

  var groups = {};
  ratings
    .filter(r => typeof r !== "undefined" && r !== null)
    .forEach(r =>{
      if (groups[r.context] == null) {
        groups[r.context] = [];
      }
      groups[r.context].push(r);
    });

  const rtngs = Object.keys(groups).map(g => {
    const l = groups[g].length
    const count = l > 1 ? l +  " Bewertungen" : l + " Bewertung";

    return (
    <div className="rating-context">
      <h5>{context_name(g)}<span className="count">({count})</span></h5>
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
