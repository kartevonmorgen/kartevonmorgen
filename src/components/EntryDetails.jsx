import React, { Component }   from "react";
import Address                from "./AddressLine";
import { pure }               from "recompose";
import { NAMES, CSS_CLASSES } from "../constants/Categories";

class EntryDetails extends Component {

  render() {
    const { entry } = this.props;
    const clz = CSS_CLASSES[entry.categories && entry.categories[0]];

    return (
    <div className = "entry-detail #{clz}">
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
          (entry.tags && entry.tags.length > 0
            ?
            <div key="tags" className = "tags pure-g">
              <i className = "pure-u-2-24 fa fa-tags" />
              <span className = "pure-u-21-24">
                <ul>
                { entry.tags.map(t => <li>{t}</li>) }
                </ul>
              </span>
            </div>
            : null)
        ]}</div>
      </div>
    </div>)
  }
}

module.exports = pure(EntryDetails)
