import React, {FC} from 'react'
import styled from 'styled-components'
import STYLE from '../styling/Variables'
import {CSS_CLASS_SIZE, MAIN_IDS, NAMES} from '../../constants/Categories'


type toggleFunc = (category: string) => void
type translateFunc = (test: string) => string

interface CategoryButtonsProps {
  activeCategories: string[];
  disabled: boolean;
  onToggle: toggleFunc;
  t: translateFunc
}

export interface TypeButtonsProps extends CategoryButtonsProps{
  type?: string;
}

const TypeButtons: FC<TypeButtonsProps> = (props) => {
  return (
    <MainCategories
      className="main-categories pure-u-1 pure-g"
      standalone={props.type === 'standalone'}
    >
      <CategoryButtons
        activeCategories={props.activeCategories}
        disabled={props.disabled}
        onToggle={props.onToggle}
        t={props.t}
      />
    </MainCategories>)
}

const CategoryButtons: FC<CategoryButtonsProps> = ({disabled, activeCategories, onToggle, t}) => {
  const buttons = MAIN_IDS.map((c: string, i: number) => {
    const isActive = activeCategories.indexOf(c) !== -1
    return (
      <button
        tabIndex={16 + i}
        key={c}
        disabled={disabled}
        onClick={() => {
          onToggle(c)
        }}
        className={NAMES[c] + ' ' + CSS_CLASS_SIZE[c] + (isActive ? ' active' : '')}
      >
        {t('category.' + NAMES[c]) + ' '}
      </button>)
  })

  return (<div>{buttons}</div>)
}

CategoryButtons.defaultProps = {
  activeCategories: [],
}

const borderRadius = '0.4em'

interface MainCategoriesProps {
  standalone: boolean
}

const MainCategories = styled.div<MainCategoriesProps>`
  font-size: 0.8em;
  color: ${STYLE.darkGray};

  button {
    padding: 0.5em;
    text-transform: uppercase;
    background-color: #f7f7f7;
  }

  button > i.toggle {
    text-align: left;
    display: block;
    width: 1.8em;
    height: 0.9em;
    border: 1px solid #fff;
    border-radius: 0.5em;
    float: right;

    > i {
      display: inline-block;
      height: 0.9em;
      width: 0.9em;
      border-radius: 0.5em;
      background-color: #FFF;
      vertical-align: top;
      border: 1px solid #FFF;
      margin: -1px;
    }
  }

  button.active > i.toggle {
    text-align: right !important;
  }

  ${props => props.standalone && `
    button:first-child {
      border-radius: ${borderRadius} 0 0 0;
    }
    button:last-child {
      border-radius: 0 ${borderRadius} 0 0;
    }
  `}

  .active{
    color: #fff;
    box-shadow: inset 0.2px 0.2px 2px 1px rgba(0, 0, 0, 0.4);
  }

  .initiative.active{
    background: ${STYLE.initiative};
  }

  .event.active {
    background: ${STYLE.event};
  }

  .company.active {
    background: ${STYLE.company};
  }
`

export default TypeButtons