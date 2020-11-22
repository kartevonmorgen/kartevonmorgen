import React from "react"
import {translate} from "react-i18next"
import STYLE from "./styling/Variables"
import {SpinLoader} from 'react-loaders-spinners'
import styled from "styled-components"
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import T from "prop-types"
import SearchInput from "./pure/SearchInput"
import SearchFilters from "./pure/SearchFilters"
import TypeButtons from "./pure/TypeButtons"


class SearchBar extends React.Component {
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
      fixedTagsStr
    } = this.props

    return (
      <Bar
        className="SearchBar pure-g"
        integrated={this.props.type === "integrated"}
        standalone={this.props.type === "standalone"}
      >
        {
          categoryChooser.show && !dropdownOptions &&
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
          />
        </div>

        {
          dropdownOptions && (
            <SearchFilters
              showCategoryChooser={categoryChooser.show}
              activeCategories={categories}
              disabled={disabled}
              onToggle={toggleCat}
              categories={dropdownOptions.categories}
              regions={dropdownOptions.regions}
              t={t}
            />
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
        z-index: 5;
        font-size: 1.2rem;
      }
        `
