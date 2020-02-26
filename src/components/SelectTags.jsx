import React, { Component } from "react";
import update from "immutability-helper";
import { Creatable }  from 'react-select';
import {bindActionCreators} from 'redux';
import {connect} from 'react-redux'
import request from "superagent/lib/client";
import { translate } from "react-i18next";

import {setTags} from '../Actions/client'

import { OFDB_API }  from "../constants/URLs"

import normalize from "../util/normalize";

class SelectTags extends Component {

  constructor(props) {
    super(props);

    this.state = {
      allOptions: [],
      options: [],
      tagsFromSearch: null
    };

    //TODO: List of Tags should probably be loaded with the WebAPI or use Async react-select

    request
      .get( OFDB_API.link +'/tags/')
      .accept('json')
      .end((err, response) => {
        if (err) {
          console.error(err);
        }
        if (response.body) {
          let options = []
          for (var i = 0; i < response.body.length; i++) {
            options[i] = {
              "value": response.body[i],
              "label": response.body[i]
            }
          }
          this.setState({
            allOptions: options
          })
        }
      });
  }

  componentDidMount() {
    this.setState({tagsFromSearch: this.props.tagsFromSearch})
    this.props.setTags(this.props.tagsFromSearch)
  }

  onInputChange(input) {
    this.filterOptions(input)
  }

  filterOptions(input) {
    let res
    if(input.length < 2){
      res = []
    }
    else {
      let searchString = input.toLowerCase().trim();
      res = this.state.allOptions.filter(function(d) {
        return d.label.match( searchString );
      });
    }

    res = res.slice(0, 30)
    this.setState({
      options: res
    })

  }

  valueToArray() {
    const value = this.props.input.value
    const {tagsFromSearch} = this.state

    const createOptions = (input) => (input.split(',').map(val => ({label: val, value: val})))

    if(!value) {
      if(!tagsFromSearch) {
        return null
      }
      return createOptions(tagsFromSearch)
    }

    if( typeof value !== "string") {
      if(!tagsFromSearch) {
        return value
      }
      createOptions(tagsFromSearch).concat(value)
    }

    if(!tagsFromSearch) {
      return createOptions(value)
    }

    return createOptions(value)
  }

  valueToString(cb,newValue,event) {
    const val = newValue  // ? newValue : this.props.input.value
    if( typeof val === "string" ) return val

    const {tagsFromSearch} = this.state
    const tagsFromSearchArray = tagsFromSearch ? tagsFromSearch.split(',') : []

    let tagsString = this.props.input.value
    if (tagsFromSearch) {
      if (tagsString.length) {
        tagsString = [tagsFromSearch, tagsString].join()
      }
      else {
        tagsString = tagsFromSearch
      }
    }

    const currentTagsArray = tagsString.split(',')

    const newTagsFromSearchArray = []
    let arr = []
    for (let i = 0; i < val.length; i++) {
      const normalized = normalize.tags(val[i].value)
      if ( normalized===false ) continue

      const isNew = (i === (val.length -1) && event.action === "create-option")
      if (isNew) {
        if (currentTagsArray.indexOf(normalized) !== -1 ) {
          return false
        }
      }

      const tagsFromSearchArrayIdx = tagsFromSearchArray.indexOf(normalized)
      if (event.action === "remove-value" &&  tagsFromSearchArrayIdx !== -1) {
        newTagsFromSearchArray.push(normalized)

        continue
      }

      arr.push( normalized )
    }

    this.setState((prevState) => {
      return update(prevState, {
        tagsFromSearch: {$set: newTagsFromSearchArray.length ? newTagsFromSearchArray.join() : null}
      })
    })

    cb( arr.join(',') );
  }

  validate(input) {
    return (input.length > 2 )
  }

  render(){
    return(
      <Creatable
        {...this.props}

        isClearable={false}
        isMulti={true}

        options={this.state.options || []}
        placeholder={this.props.t("entryForm.tags")}
        noOptionsMessage={() => this.props.t("entryForm.noTagSuggestion") }
        formatCreateLabel={(inputValue) => this.props.t("entryForm.newTag")+" "+normalize.tags(inputValue) }
        onInputChange={this.onInputChange.bind(this)}
        onChange={ (value,event) => {this.valueToString( this.props.input.onChange, value, event ) } }
        onBlur={event => event.preventDefault()}
        value={ this.valueToArray() }
        isValidNewOption = { this.validate }
      />
    )
  }
}


const mapStateToProps = ({search}) => {
  // if history is null
  if(!search.history) {
    return {
      tagsFromSearch: null
    }
  }

  const tokens = search.history.split(' ').filter(t => t.length)
  const tags = tokens.filter(t => t.startsWith('#')).map(t => {
    // remove all '#' signs from the beginning
    while(t.charAt(0) === '#') {
      t = t.substr(1)
    }

    return t
  })
    .filter(t => normalize.tags(t))
    .map(t => normalize.tags(t))

  return {
    tagsFromSearch: tags.join()
  }
}

const mapDispatchToProps = (dispatch) => {
  return bindActionCreators({setTags}, dispatch)
}

module.exports = translate('translation')(connect(mapStateToProps, mapDispatchToProps)(SelectTags))
