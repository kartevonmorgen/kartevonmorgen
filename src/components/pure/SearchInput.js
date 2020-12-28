import React         from 'react'
import styled        from 'styled-components'
import Select        from "react-select"
import { translate } from "react-i18next"

const SearchInput = ({
  t,
  fixedTagsStr,
  onChange,
  onKeyDown,
  popularTags,
  searchText,
  prominentOptions
}) => {

  let options = [];

  const tokens = searchText.split(' ')
  const term = tokens[tokens.length-1].trim()

  if (term.length === 0) {
    options = prominentOptions
  } else {
    options = popularTags.map(tag => ({label: `#${tag[0]}`, value: `#${tag[0]}`}))
  }

  const onInputChange = (input, actionMeta) => {
    const { action } = actionMeta
    if (action === "input-blur" || action === "menu-close") {
      return
    }
    onChange(input)
  }

  const handleChange = (newValue, actionMeta) => {
    // TODO: dispatch on change
    if (!!newValue && newValue.length) {
      let newInputValue = searchText
      if (newInputValue.length && newInputValue.slice(-1) === ' ') {
        newInputValue = `${newInputValue} ${newValue[0].label}`
      } else {
        const tokens = searchText.trim().split(" ").filter(t => t.length)
        tokens.pop()
        tokens.push(newValue[0].label)
        newInputValue = tokens.join(' ')
      }
      onChange(newInputValue)
    }
  };

  return (
    <Recommender
      tabIndex={1}
      autoFocus={false}
      delimeter=" "
      filterOption={(option) => true}
      styles={{
        control: (provided, state) => ({
          ...provided,
          border: 'none',
          boxShadow: 'none'
        }),
        menu: (provided, state) => ({
          ...provided,
          width: '85%',
          zIndex: 4
        })
      }}
      onInputChange={onInputChange}
      onChange={handleChange}
      onKeyDown={onKeyDown}
      options={options}
      placeholder={fixedTagsStr || t("searchbar.placeholder")}
      inputValue={searchText}
    />
  )
}

export default translate('translation')(SearchInput)

const Recommender = styled(Select)`
  font-size: 0.9em !important;
  line-height: 1em !important;
  font-weight: 100;
  padding-left: 2.7em !important;
  padding-right: 0.5em !important;
  // z-index: 999 !important;
  margin-top: 2px;
`
