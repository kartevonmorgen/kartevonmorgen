import React    from "react"
import Actions  from "../Actions"
import Address  from "./AddressLine"
import { pure } from "recompose"
import Flower   from "./Flower";

import { NAMES, CSS_CLASSES } from "../constants/Categories"

const ResultListElement = ({highlight, entry, ratings, onClick, onMouseEnter, onMouseLeave}) => {
  var clz = highlight ? 'highlight-entry ' : '';
  clz = clz + CSS_CLASSES[entry.categories && entry.categories[0]];
  return (
    <li
      key           = { entry.id }
      className     = { clz }
      onClick       = { (ev) => { onClick(entry.id) }}
      onMouseEnter  = { (ev) => { ev.preventDefault(); onMouseEnter(entry.id) }}
      onMouseLeave  = { (ev) => { ev.preventDefault(); onMouseLeave(entry.id) }} >
      <div className = "pure-g">
        <div className = "pure-u-23-24">
          <div>
            <span className="category">
              { NAMES[entry.categories && entry.categories[0]] }
            </span>
          </div>
          <div>
            <span className="title">{entry.title}</span>
          </div>
          <div>
            <span className= "subtitle">{entry.description}</span>
          </div>
          { (entry.street || entry.zip || entry.city)
              ? <Address { ...entry } />
              : null
          }
          <div className="flower">{ Flower(ratings,30) }</div>
          {
            (entry.tags.length > 0)
              ? <div className="tags" >
                  <ul >
                  { entry.tags.map(t => <li key={t}>{t}</li>) }
                  </ul>
                </div>
              : null
          }
        </div>
        <div className = "pure-u-1-24 chevron">
          <i className = "fa fa-chevron-right" />
        </div>
      </div>
    </li>)
}

const ResultList = ({ waiting, entries, ratings, highlight, onClick, 
  onMouseEnter, onMouseLeave, moreEntriesAvailable, onMoreEntriesClick}) => {
  let results = entries.map( e =>
    <ResultListElement
      entry        = { e            }
      ratings      = { (e.ratings || []).map(id => ratings[id])}
      key          = { e.id         }
      highlight    = { highlight.indexOf(e.id) >= 0 }
      onClick      = { onClick      }
      onMouseEnter = { onMouseEnter }
      onMouseLeave = { onMouseLeave } />);
  if(moreEntriesAvailable && !waiting){
    results.push(
      <li key="show-more-entries">
      <div>
        <a onClick = { onMoreEntriesClick } href="#">
          mehr Einträge anzeigen...
        </a>
      </div>
      </li>
    );
  }

  return ( 
    <div className= "result-list">
    {
      (results.length > 0)
        ? <ul>{results}</ul>
        : (waiting ? 
        <p className= "loading">
          <span>Einträge werden geladen...</span>
        </p>
        : <p className= "no-results">
            <i className= "fa fa-frown-o" />
            <span>Es konnten keine Einträge gefunden werden</span>
          </p>)
    }
    </div>)
}

module.exports = pure(ResultList)
