import React, {FC, CSSProperties} from 'react'
import styled from 'styled-components'
import PropTypes from 'prop-types'
import {useDispatch} from 'react-redux'
import lodashGet from 'lodash/get'
import isEmpty from 'lodash/isEmpty'
import Actions from '../../Actions'
import Select, {ActionMeta, ValueType, StylesConfig, Props} from 'react-select'
import Creatable from 'react-select/creatable'
import {Collapse} from 'react-collapse'
import TypeButtons, {TypeButtonsProps} from './TypeButtons'


interface Option {
  label: string;
  value: string;
  styles: OptionStyle
}

interface OptionStyle {
  bold: boolean;
  underline: boolean;
  italic: boolean;
  fontSize: number;
}

interface RegionOption extends Option {
  type: string;
  zoom: number;
}

interface DropdownsProps {
  categories: Option[];
  regions: RegionOption[];
}

interface SearchFiltersProps extends DropdownsProps, TypeButtonsProps {
  showCategoryChooser: boolean;
  isOpen: boolean;
}

const dropdownsStyles: StylesConfig = {
  container: (base: CSSProperties): CSSProperties => ({
    ...base,
    // paddingLeft: "8px",
    // paddingRight: "8px",
    marginBottom: '8px',
  }),
  control: (provided, state) => ({
    ...provided,
    border: 'none',
    boxShadow: 'none'
  }),
  menu: (base: CSSProperties): CSSProperties => ({
    ...base,
    zIndex: 4,
    width: '90%'
  }),
  option: (base: CSSProperties, props: Props) => ({
    ...base,
    fontWeight: lodashGet(props, 'data.styles.bold', false) ? 'bold' : base.fontWeight,
    fontStyle: lodashGet(props, 'data.styles.italic', false) ? 'italic' : base.fontStyle,
    textDecoration: lodashGet(props, 'data.styles.underline', false) ? 'underline' : base.textDecoration,
  })
}

const SearchFilters: FC<SearchFiltersProps> = (props) => {
  const {regions, categories, isOpen} = props

  const dispatch = useDispatch()

  const onChangeCategory = (value: ValueType<Option>, action: ActionMeta<Option>): void => {
    const term: string = (value as Option).value

    if (action.action === 'select-option') {
      dispatch(Actions.setSearchText(term))
      dispatch(Actions.search())
    }
  }

  const searchRegion = (region: string) => {
    dispatch(Actions.setRegion(region))
  }

  const onChangeRegion = (value: ValueType<Option>, action: ActionMeta<Option>): void => {
    const region: string = (value as Option).value
    if (action.action === 'select-option') {
      console.log(region)
      searchRegion(region)
    }
  }

  const onCreateRegion = (inputValue: string) => {
    searchRegion(inputValue)
  }

  return (
    <CollapseContainer className="pure-u-1-1">
      <Collapse
        isOpened={isOpen}
        theme={{collapse: 'pure-g ReactCollapse--collapse', content: 'pure-u-1-1'}}
      >
        <div className="pure-g">
          {props.showCategoryChooser &&
          <TypeButtons
            activeCategories={props.activeCategories}
            disabled={props.disabled}
            onToggle={props.onToggle}
            type={props.type}
            t={props.t}
          />}

          { !isEmpty(regions) &&
          <StyledCreatable
            placeholder="Search a region"
            autoFocus={false}
            aria-label="region filter dropdown"
            className="pure-u-1-1"
            onChange={onChangeRegion}
            onCreateOption={onCreateRegion}
            createOptionPosition="first"
            options={regions}
            name="regions dropdowns"
            styles={dropdownsStyles}
            formatCreateLabel={(inputValue: string) => (`Search for: ${inputValue}`)}
          />
          }

          {!isEmpty(categories) &&
          <StyledSelect
            placeholder="Choose a category"
            autoFocus={false}
            aria-label="category filter dropdown"
            className="pure-u-1-1"
            onChange={onChangeCategory}
            options={categories}
            name="category dropdowns"
            styles={dropdownsStyles}
            isSearchable
          />}

        </div>
      </Collapse>
    </CollapseContainer>
  )
}

const CollapseContainer = styled.div`
  .ReactCollapse--collapse {
    transition: height 1000ms;
  }
`

SearchFilters.propTypes = {
  categories: PropTypes.array.isRequired,
  regions: PropTypes.array.isRequired
}

SearchFilters.defaultProps = {
  categories: [],
  regions: []
}

const StyledCreatable = styled(Creatable)`
  margin-top: 2px;
  padding-left: 0.5em;
  padding-right: 0.5em;
`

const StyledSelect = styled(Select)`
  margin-top: 2px;
  padding-left: 0.5em;
  padding-right: 0.5em;
`

export default SearchFilters
