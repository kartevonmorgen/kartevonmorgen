import React, {Fragment} from "react"
import {translate} from "react-i18next"
import update from 'immutability-helper'
import STYLE from "./styling/Variables"
import {SpinLoader} from 'react-loaders-spinners'
import styled from "styled-components"
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import T from "prop-types"
import SearchInput from "./pure/SearchInput"
import SearchFilters from "./pure/SearchFilters"
import TypeButtons from "./pure/TypeButtons"


class SearchBar extends React.Component {
  state = {
    areDropdownsShown: true
  }

  render() {
    const {
      categoryChooser,
      categories,
      dropdownOptions,
      disabled,
      toggleCat,
      searchText,
      t,
      loading,
      fixedTagsStr,
      popularTags
    } = this.props

    const prominentOptions = dropdownOptions ? dropdownOptions.categories : []

    return (
      <Bar
        className="SearchBar pure-g"
        integrated={this.props.type === "integrated"}
        standalone={this.props.type === "standalone"}
      >
        {
          categoryChooser.show &&
          <TypeButtons
            activeCategories={categories}
            disabled={disabled}
            onToggle={toggleCat}
            t={t}
            type={this.props.type}
          />
        }

        <div className="pure-u-1">
          <div onClick={this.props.onLenseClick} className="search-icon">
            {loading ?
              <SpinLoader
                height={17}
                width={17}
                thickness={3}
                pColor={STYLE.darkGray}
                sColor="white"/>
              : <MagnifyingGlassIcon icon="search"/>
            }
          </div>
          <SearchInput
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
            onChange={this.props.onChange}
            searchText={searchText || ''}
            fixedTagsStr={fixedTagsStr}
            prominentOptions={prominentOptions}
            popularTags={popularTags}
          />
        </div>

        {
          (dropdownOptions && dropdownOptions.regions.length) && (
            <SearchFilters
              showCategoryChooser={categoryChooser.show}
              activeCategories={categories}
              disabled={disabled}
              onToggle={toggleCat}
              regions={dropdownOptions.regions}
              t={t}
              isOpen={this.state.areDropdownsShown}
            />
          )
        }

        {
          (dropdownOptions && dropdownOptions.regions.length) && (
            <CollapseTriggerContainer className="pure-u-1-1">
              <CollapseTrigger
                className="pure-u-1-3"
                onClick={() => this.setState(state => update(state, {areDropdownsShown: {$set: !state.areDropdownsShown}}))}
                isOpen={this.state.areDropdownsShown}
              >
                {
                  this.state.areDropdownsShown ?
                    'Collapse Filters' :
                    'Open Filters'
                }
              </CollapseTrigger>
            </CollapseTriggerContainer>
          )
        }

      </Bar>
    )
  }
}

SearchBar.propTypes = {
  type: T.oneOf(["standalone", "integrated", ""]),
  searchText: T.string,
  fixedTagsStr: T.string,
  categories: T.array,
  disabled: T.bool,
  toggleCat: T.func,
  onChange: T.func,
  onEnter: T.func,
  onEscape: T.func,
  t: T.func
}

module.exports = translate('translation')(SearchBar)

const borderRadius = '0.4em'

const MagnifyingGlassIcon = styled(FontAwesomeIcon)`
        margin: 0.1em 0 0 0.1em;
        animation-duration: 150ms;
        animation-name: turn;

        @keyframes turn {
        from {
        transform: rotate(330deg);
      }

        to {
        transform: rotate(360deg);
      }
      }
        `


const Bar = styled.div`
        ${props => props.integrated && `
    border-bottom: 1px solid ${STYLE.lightGray};
  `}

        ${props => props.standalone && `
    box-shadow: 2px 2px 8px 4px rgba(0,0,0,0.6);
    border-radius: ${borderRadius};

    input{
      border-radius: 0 0 ${borderRadius} ${borderRadius};
    }
  `}

        width: 100%;
        box-sizing: border-box;
        background: #fff;

        input, button{
        box - sizing:  border-box;
        border:      none;
        outline: none;
      }

        input, span.search-icon {
        font - size: 1.2em;
      }

        input {
        padding: 0.4em;
        padding-left:  2em;
      }

        .search-icon{
        position: absolute;
        margin: 0.5em 0 0 0.9em;
        display: inline-block;
        color: ${STYLE.darkGray};
        // z-index: 5;
        font-size: 1.2rem;
      }
        `
const CollapseTrigger = styled.button`
  background: none;
  margin-top: 8px;
  text-decoration: underline;
  color: gray;
  font-size: 0.8em;
  text-align: right;
`

const CollapseTriggerContainer = styled.div`
  display: flex;
  justify-content: flex-end;
  padding-bottom: 8px;
`
