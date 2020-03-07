import React, {useState, useEffect} from 'react'
import styled from 'styled-components'
import {Creatable} from "react-select"
import {translate} from "react-i18next"
import request from "superagent/lib/client"

import {OFDB_API} from "../../constants/URLs"


const SearchInput = (props) => {

  const {t, searchText} = props

  const [allOptions, setAllOptions] = useState([])
  const [options, setOptions] = useState([])

  useEffect(() => {
    request
      .get(OFDB_API.link + '/entries/most-popular-tags?min_count=4')
      .accept('json')
      .end((err, response) => {
        if (err) {
          console.error(err)
        }
        if (response.body) {
          // the first element is the tag, and the second one is the number of usage
          const options = response.body.map((tag) => ({
            'value': `#${tag[0]}`,
            'label': `#${tag[0]}`
          }))

          setAllOptions(options)
          setOptions(options.slice(0, 5))
        }
      })
  }, [])


  const filterOptions = (input) => {
    const searchString = input.toLowerCase().trim();
    const res = allOptions.filter(function(d) {
      return d.label.match( searchString );
    });

    const newOptions = res.slice(0, 5)

    setOptions(newOptions)
  }

  const onInputChange = (input, actionMeta) => {
    const {action} = actionMeta
    if (action === "input-blur" || action === "menu-close") {
      return
    }

    const tokens = input.split(' ')
    const lastToken = tokens[tokens.length-1].trim()
    onChange(input)
    filterOptions(lastToken)
  }

  const handleChange = (newValue, actionMeta) => {
    // TODO: dispatch on change
    if (!!newValue && newValue.length) {
      let newInputValue = props.searchText
      if (newInputValue.length && newInputValue.slice(-1) === ' ') {
        newInputValue = `${newInputValue} ${newValue[0].label}`
      } else {
        const tokens = props.searchText.trim().split(" ").filter(t => t.length)
        tokens.pop()
        tokens.push(newValue[0].label)
        newInputValue = tokens.join(' ')
      }

      onChange(newInputValue)
    }
  };

  const onChange = (newInputValue) => {
    props.onChange(newInputValue)
  }

  return (
    <Recommender
      delimeter=" "
      formatCreateLabel={(inputValue) => (inputValue)}
      filterOption={(option) => true}
      isMulti
      styles={{
        control: (provided, state) => ({
          ...provided,
          border: 'none',
          boxShadow: 'none'
        }),
        menu: (provided, state) => ({
          ...provided,
          width: '85%'
        })
      }}
      onBlur={() => {}}
      onInputChange={onInputChange}
      onChange={handleChange}
      onKeyDown={props.onKeyDown}
      options={options}
      placeholder={t("searchbar.placeholder")}
      inputValue={props.searchText}
      value={[]}
    />
  )
}

export default translate('translation')(SearchInput)

const Recommender = styled(Creatable)`
  font-size: 1em !important;
  line-height: 1em !important;
  font-weight: 100;
  padding-left: 2.7em !important;
  padding-right: 0.5em !important;
  z-index: 999 !important;
`