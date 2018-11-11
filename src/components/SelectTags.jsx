import React, { Component } from "react";
import Select, { Creatable }  from 'react-select';
import request from "superagent/lib/client";
import { translate } from "react-i18next";

class SelectTags extends Component {
  
  constructor(props) {
    super(props);

    this.state = {
      allOptions: [],
      options: []
    };
    
    //TODO: List of Tags should probably be done with the WebAPI or use Async react-select  (started to build "getAllTags" already). (…)
    
    request
      .get('http://api.ofdb.io/v0/tags/')
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
          this.state = {
            allOptions: options
          }
        }
      });
  }

  onInputChange(input,action) {
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

    if( typeof value !== "string") return value
    return value.split(',').map( val => {
      return {value: val, label: val }
    })
  }

  valueToString(cb,newValue) {
    const val = newValue ? newValue : this.props.input.value

    if( typeof val === "string" ) return val
    const str = val.map((t) => {
      return t.value
    }).join(',')
    cb( str );
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
        formatCreateLabel={(inputValue) => this.props.t("entryForm.newTag")+" "+inputValue }

        onInputChange={this.onInputChange.bind(this)}
        onChange={ (value) => this.valueToString( this.props.input.onChange, value ) }
        onBlur={() => this.valueToString(this.props.input.onBlur) }
        value={ this.valueToArray() }
      />
    )
  }
}


module.exports = translate('translation')(SelectTags)