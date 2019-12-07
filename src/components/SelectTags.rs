// TODO: import React, { Component } from "react";
// TODO: import Select, { Creatable }  from 'react-select';
// TODO: import request from "superagent/lib/client";
// TODO: import { translate } from "react-i18next";
// TODO: import normalize from "../util/normalize";
// TODO: import { OFDB_API }  from "../constants/URLs"
// TODO:
// TODO: class SelectTags extends Component {
// TODO:
// TODO:   constructor(props) {
// TODO:     super(props);
// TODO:
// TODO:     this.state = {
// TODO:       allOptions: [],
// TODO:       options: []
// TODO:     };
// TODO:
// TODO:     //TODO: List of Tags should probably be loaded with the WebAPI or use Async react-select
// TODO:
// TODO:     request
// TODO:       .get( OFDB_API.link +'/tags/')
// TODO:       .accept('json')
// TODO:       .end((err, response) => {
// TODO:         if (err) {
// TODO:           console.error(err);
// TODO:         }
// TODO:         if (response.body) {
// TODO:           let options = []
// TODO:           for (var i = 0; i < response.body.length; i++) {
// TODO:             options[i] = {
// TODO:               "value": response.body[i],
// TODO:               "label": response.body[i]
// TODO:             }
// TODO:           }
// TODO:           this.setState({
// TODO:             allOptions: options
// TODO:           })
// TODO:         }
// TODO:       });
// TODO:   }
// TODO:
// TODO:   onInputChange(input) {
// TODO:     this.filterOptions(input)
// TODO:   }
// TODO:
// TODO:   filterOptions(input) {
// TODO:     let res
// TODO:     if(input.length < 2){
// TODO:       res = []
// TODO:     }
// TODO:     else {
// TODO:       let searchString = input.toLowerCase().trim();
// TODO:       res = this.state.allOptions.filter(function(d) {
// TODO:         return d.label.match( searchString );
// TODO:       });
// TODO:     }
// TODO:
// TODO:     res = res.slice(0, 30)
// TODO:     this.setState({
// TODO:       options: res
// TODO:     })
// TODO:
// TODO:   }
// TODO:
// TODO:   valueToArray() {
// TODO:     const value = this.props.input.value
// TODO:
// TODO:     if(!value) return null
// TODO:     if( typeof value !== "string") return value
// TODO:
// TODO:     return value.split(',').map( val => {
// TODO:       return {value: val, label: val }
// TODO:     })
// TODO:   }
// TODO:
// TODO:   valueToString(cb,newValue,event) {
// TODO:
// TODO:     const val = newValue  // ? newValue : this.props.input.value
// TODO:     if( typeof val === "string" ) return val
// TODO:
// TODO:     const currentTagsArray = this.props.input.value.split(',')
// TODO:
// TODO:
// TODO:     let arr = []
// TODO:     for (let i = 0; i < val.length; i++) {
// TODO:       const normalized = normalize.tags(val[i].value)
// TODO:       if ( normalized==false ) continue
// TODO:
// TODO:       const isNew = (i == (val.length -1) && event.action == "create-option")
// TODO:       if (isNew ) if (currentTagsArray.indexOf(normalized) != -1 ) return false
// TODO:
// TODO:       arr.push( normalized )
// TODO:     }
// TODO:     cb( arr.join(',') );
// TODO:   }
// TODO:
// TODO:   validate(input) {
// TODO:     return (input.length > 2 )
// TODO:   }
// TODO:
// TODO:   render(){
// TODO:
// TODO:     return(
// TODO:       <Creatable
// TODO:         {...this.props}
// TODO:
// TODO:         isClearable={false}
// TODO:         isMulti={true}
// TODO:
// TODO:         options={this.state.options || []}
// TODO:         placeholder={this.props.t("entryForm.tags")}
// TODO:         noOptionsMessage={() => this.props.t("entryForm.noTagSuggestion") }
// TODO:         formatCreateLabel={(inputValue) => this.props.t("entryForm.newTag")+" "+normalize.tags(inputValue) }
// TODO:
// TODO:         onInputChange={this.onInputChange.bind(this)}
// TODO:         onChange={ (value,event) => {this.valueToString( this.props.input.onChange, value, event ) } }
// TODO:         onBlur={event => event.preventDefault()}
// TODO:         value={ this.valueToArray() }
// TODO:         isValidNewOption = { this.validate }
// TODO:       />
// TODO:     )
// TODO:   }
// TODO: }
// TODO:
// TODO:
// TODO: module.exports = translate('translation')(SelectTags)
