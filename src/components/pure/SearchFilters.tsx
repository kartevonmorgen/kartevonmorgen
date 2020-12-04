import React, {FC, CSSProperties, useState, useEffect} from 'react'
import {connect} from 'react-redux'
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
  fontSize: number | string;
}

interface RegionOption extends Option {
  type: string;
  zoom: number;
}

type Regions = RegionOption[]

interface RegionsSelectorProps {
  regions: Regions;
}

interface DropdownsProps {
  categories: Option[];
  regions: Regions;
}

interface SearchFiltersProps extends DropdownsProps, TypeButtonsProps {
  showCategoryChooser: boolean;
  isOpen: boolean;
  fixedTagsStr: string;
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
    fontSize: lodashGet(props, 'data.styles.fontSize', 0) || base.fontSize
  })
}

const SearchFilters: FC<SearchFiltersProps> = (props) => {
  const {fixedTagsStr, regions, categories, isOpen} = props

  const dispatch = useDispatch()

  const onChangeCategory = (value: ValueType<Option>, action: ActionMeta<Option>): void => {
    const term: string = (value as Option).value

    if (action.action === 'select-option') {
      dispatch(Actions.setSearchText(`${fixedTagsStr} ${term}`))
      dispatch(Actions.search())
    }
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

          {!isEmpty(regions) &&
          <RegionSelector
            regions={regions}
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


const RegionSelector: FC<RegionsSelectorProps> = (props) => {
  const [selectedRegion, setSelectedRegion] = useState<RegionOption | undefined>(undefined)
  const [regions, setRegions] = useState<Regions>([])

  useEffect(() => {
    setRegions(props.regions)
  }, [props.regions])

  const dispatch = useDispatch()

  const searchRegion = (region: string, zoom: number) => {
    // console.log("search region: ", region, zoom)
    dispatch(Actions.setRegion(region))
    // dispatch(Actions.setZoom(zoom))
  }

  const onChangeRegion = (value: ValueType<Option>, action: ActionMeta<Option>): void => {
    const region: RegionOption = value as RegionOption
    if (action.action === 'select-option') {
      setSelectedRegion(region)
      searchRegion(region.value, region.zoom)
    }
  }

  const onCreateRegion = (inputValue: string) => {
    const newRegion: RegionOption = {
      label: inputValue,
      value: inputValue,
      zoom: 13,
      styles: {
        bold: false,
        italic: false,
        underline: false,
        fontSize: 0
      },
      type: ""
    }

    setRegions((regions) => ([newRegion, ...regions]))
    setSelectedRegion(newRegion)

    searchRegion(newRegion.value, newRegion.zoom)
  }

  return (
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
      value={selectedRegion}
    />
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

const mapStateToProps = ({search}: any) => ({
  fixedTagsStr: search.fixedTags.map((tag: string) => `#${tag}`).join(' ')
})

export default connect(mapStateToProps)(SearchFilters)
