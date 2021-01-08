import React, { Component, Fragment } from "react";
import { connect }          from 'react-redux'
import { translate } from "react-i18next";
import T                    from "prop-types";
import styled               from "styled-components";
import classNames            from "classnames";
import DatePicker from 'react-datepicker';
import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
import { reduxForm, Field, initialize}       from "redux-form";

import update from 'immutability-helper'
import lodashGet from 'lodash/get'
import moment, {min} from 'moment'

import 'react-datepicker/dist/react-datepicker.min.css';
import en_GB from "date-fns/locale/en-GB";

import {pink} from './styling/Variables';
import Actions              from "../Actions";
import validation           from "../util/validation";
import NavButton            from "./pure/NavButton";
import { IDS, NAMES }       from "../constants/Categories";
import * as URLs            from "../constants/URLs";
import LICENSES             from "../constants/Licenses";
import { EDIT             } from "../constants/Form";
import SelectTags           from './SelectTags';
import ScrollableDiv        from "./pure/ScrollableDiv";
import NavButtonWrapper     from "./pure/NavButtonWrapper";



const renderDatePickerStart = ({input, initEndDate, endDate, ...props}) => {
  const minDate = moment()
  const minTime = moment()

  const isDateSelected = !!input.value
  let selectedDate = new window.Date()
  if (isDateSelected) {
    selectedDate = moment(input.value > 99999999999 ? input.value : ((input.value + (new window.Date(input.value * 1000).getTimezoneOffset() * 60)) * 1000))
  }

  if (isDateSelected && selectedDate.isAfter(new window.Date(), 'day')) {
    minTime.set({hour: 0, minute: 0})
  }

  return (
    <DatePicker
      {...props}
      locale={en_GB}
      selected={isDateSelected ? selectedDate.toDate() : ''}
      showTimeSelect
      timeFormat="HH:mm"
      dateFormat="dd.MM.yyyy HH:mm"
      onChange={(day) => input.onChange(day)}
      minDate={minDate.toDate()}
      maxDate={endDate ? endDate : (initEndDate ? initEndDate : '')}
      minTime={minTime.toDate()}
      maxTime={moment().set({hour: 23, minute: 30}).toDate()}
    />
  )
}

const renderDatePickerEnd = ({ input, initStartDate, startDate,  ...props }) => {
  const hasStartDate = !!startDate
  let firstDate = moment()
  if (hasStartDate) {
    firstDate = moment(startDate)
  } else if(initStartDate) {
    firstDate = moment(initStartDate)
  }

  const isDateSelected = !!input.value
  let selectedDate = new window.Date()
  if (isDateSelected) {
    selectedDate = moment(input.value > 99999999999 ? input.value : ((input.value + (new window.Date(input.value * 1000).getTimezoneOffset() * 60)) * 1000))
  }

  let minDate = firstDate.clone()
  let minTime = moment()

  // show all times
  if (!hasStartDate && !isDateSelected) {
    minTime = moment(firstDate).clone().add(30, 'minutes')
  } else if (hasStartDate && !isDateSelected) {
    minTime = moment(firstDate).clone().add(30, 'minutes')
  } else if (hasStartDate && isDateSelected) {
    if(selectedDate.isSame(firstDate, 'day')){
      minTime = moment(firstDate).clone().add(30, 'minutes')
      if (selectedDate.isSameOrBefore(firstDate)) {
        selectedDate = firstDate.clone().add(30, 'minute')
        if (selectedDate.isAfter(firstDate, 'day')) {
          minDate.add(1, 'day')
        }
      }
    } else if (selectedDate.isBefore(firstDate, 'day')) {
      selectedDate = firstDate.clone().add(30, 'minute')
      minTime = moment(firstDate).clone().add(30, 'minutes')
    } else if (selectedDate.isAfter(firstDate, 'day')) {
      minTime.set({hour: 0, minutes: 0})
    }
  }

  return (
    <DatePicker
      {...props}
      locale={en_GB}
      selected={isDateSelected ? selectedDate.toDate() : ''}
      showTimeSelect
      timeFormat="HH:mm"
      dateFormat="dd.MM.yyyy HH:mm"
      onChange={(day) => input.onChange(day)}
      minDate={minDate.toDate()}
      minTime={minTime.toDate()}
      maxTime={firstDate.clone().hours(23).minutes(30).toDate()}
      popperPlacement="bottom-end"
    />
  );
};

function convertToDateForPicker(date) {
  const d = new window.Date(date);
  return `${d.getFullYear()}-${d.getMonth() + 1}-${d.getDate()}`;
}

class Form extends Component {
  state = {
    isEventEntry: false,
    startDate: '',
    endDate: '',
    numberOfCustomLinks: 1,
  };

  componentDidMount() {
    this.setState({
      isEventEntry: this.props.category === IDS.EVENT,
      numberOfCustomLinks: this.props.numberOfCustomLinks || 1
    })

    this.props.dispatch(Actions.search(true))
  }

  componentWillUnmount() {
    this.props.dispatch(Actions.search(false))
  }

  handleCategoryChange = (event) => {
    const category = event.target.value;
    this.setState({ isEventEntry: category=== IDS.EVENT});
  };

  handleFromChange = (from) => {
    this.setState({ startDate: from });
  };

  handleToChange = (to) => {
    this.setState({ endDate: to });
  };
 

  render() {
    const { isEdit, isEvent, formStartEndDate, descriptionLength, license, dispatch, handleSubmit } = this.props;

    const {saveButtonCustomization, cancelButtonCustomization} = this.props;

    const { isEventEntry, startDate, endDate } = this.state;
    const initStartDate = formStartEndDate.startDate ? new window.Date(formStartEndDate.startDate) : '';
    const initEndDate = formStartEndDate.endDate ? new window.Date(formStartEndDate.endDate) : '';
    // TODO: use process.env.ENTRY_DESCRIPTION_WARN_LIMIT instead of hard code
    const isDescriptionTooLong = descriptionLength > 250

    const t = (key) => {
      return this.props.t("entryForm." + key);
    };

    return (
    <FormWrapper>
      <ScrollableDiv id="entryFormScrollableDiv">
        <AddEntryForm role="form"   action='javascript:void();' >

            <h3>{isEdit ? t("editEntryHeading") :  t("newEntryHeading")}</h3>

            { this.props.error &&
              <div className= "err">
                { t("savingError") + ":" + this.props.error.message}
              </div>
            }
            { (!this.props.error) && this.props.submitFailed &&
              <div className="err"> { t("valueError") }
                <FieldElement aria-label="license error" name="license" component={errorMessage} />
              </div>
            }

            <div className= "pure-form">
              <Fieldset>
                <FieldElement aria-label="category" className="pure-input-1" name="category" disabled={ isEdit && isEvent } component="select" onChange={this.handleCategoryChange}>
                  <option value={-1}>{t("chooseCategory")}</option>
                  <option value={IDS.INITIATIVE}>{t("category." + NAMES[IDS.INITIATIVE])}</option>
                  <option value={IDS.COMPANY}>{t("category." + NAMES[IDS.COMPANY])}</option>
                  <option disabled={ isEdit } value={IDS.EVENT}>{t("category." + NAMES[IDS.EVENT])}</option>
                </FieldElement>

                <FieldElement aria-label="category error" name="category" component={errorMessage} />

                <FieldElement
                  aria-label="title"
                  name="title"
                  required={true}
                  className="pure-input-1"
                  type="text"
                  component="input"
                  placeholder={t("title")} />

                <FieldElement
                  aria-label="title error"
                  name="title"
                  component={errorMessage} />

                {(isEventEntry || isEvent ) && (

                  <RangeDates>

                    <Date>
                      <FieldElement
                        name="start"
                        component={ renderDatePickerStart }
                        className="pure-input-1"
                        initEndDate={ initEndDate }
                        endDate={ endDate }
                        onChange={ this.handleFromChange }
                        placeholderText={t("start")}
                      />

                      <FieldElement
                        name="start"
                        component={errorMessage}
                      />
                    </Date>

                    <Date>
                      <FieldElement
                        name="end"
                        component={ renderDatePickerEnd }
                        className="pure-input-1"
                        initStartDate={ initStartDate }
                        startDate={ startDate }
                        placeholderText={t("end")}
                        onChange={ this.handleToChange }
                      />

                      <FieldElement
                        name="end"
                        component={errorMessage}
                      />
                    </Date>

                  </RangeDates>

                )}

                <FieldElement aria-label="description" name="description" className="pure-input-1" component="textarea" placeholder={t("description")}  />
                {isDescriptionTooLong && <div className="warn">{t("keepDescriptionShort")}</div>}
                <FieldElement aria-label="description error" name="description" component={errorMessage} />

                <FieldElement
                  aria-label="tags"
                  name="tags"
                  required={true}
                  className="pure-input-1"
                  placeholder={t("tags")}
                  component={SelectTags}
                />
                <FieldElement
                  aria-label="tags error"
                  name="tags"
                  component={errorMessage}
                />
              </Fieldset>

              <Fieldset>
                <FieldsetLegend>
                  <FieldsetTitle aria-label="location section">{t("location")}</FieldsetTitle>
                </FieldsetLegend>

                <div className={classNames("pure-g", "hidden")}>
                  <div className= "pure-u-12-24">
                    <FieldElement name="country" className="pure-input-1" component="input" placeholder={"Country"} />
                    <FieldElement name="country" component={errorMessage} />
                  </div>
                  <div className= "pure-u-12-24">
                    <FieldElement name="state" className="pure-input-1" component="input" placeholder={"State"} />
                    <FieldElement name="state" component={errorMessage} />
                  </div>
                </div>

                <div className= "pure-g">
                  <div className= "pure-u-12-24">
                    <FieldElement name="city" className="pure-input-1" component="input" placeholder={t("city")} />
                    <FieldElement name="city" component={errorMessage} />
                  </div>
                  <div className= "pure-u-12-24">
                    <FieldElement name="zip" className="pure-input-1" component="input" placeholder={t("zip")} />
                    <FieldElement name="zip" component={errorMessage} />
                  </div>
                </div>

                <FieldElement name="street" className="pure-input-1" component="input" placeholder={t("street")}/>
                <FieldElement name="street" component={errorMessage} />

                <ClickOnMapText>{t("clickOnMap")}</ClickOnMapText>

                <div className= "pure-g">
                  <label className= "pure-u-2-24">
                    <FontAwesomeIcon icon="map-marker" />
                  </label>
                  <div className= "pure-u-22-24 pure-g">
                    <div className= "pure-u-11-24">
                      <FieldElement
                        aria-label="latitude"
                        name="lat"
                        className="pure-input-1"
                        component="input"
                        readOnly={true}
                        placeholder="Latitude"
                      />
                      <FieldElement aria-label="latitude error" name="lat" component={errorMessage} />
                    </div>
                    <div className= "pure-u-2-24" />
                    <div className= "pure-u-11-24">
                      <FieldElement
                        aria-label="longitude"
                        name="lng"
                        className="pure-input-1"
                        component="input"
                        readOnly={true}
                        placeholder="longitude"
                      />
                      <FieldElement aria-label="longitude error" name="lng" component={errorMessage} />
                    </div>
                  </div>
                </div>
              </Fieldset>

              <Fieldset>
                <OptionalLegend>
                  <FieldsetTitle aria-label="contact section">{t("contact")}</FieldsetTitle>
                </OptionalLegend>

                <div className= "pure-g">
                  <OptionalFieldLabel className= "pure-u-2-24">
                    <FontAwesomeIcon icon="user" />
                  </OptionalFieldLabel>
                  <div className= "pure-u-22-24">
                    <FieldElement
                      aria-label="organizer"
                      name={isEvent ? "organizer" : "contact_name"}
                      className="pure-input-1 optional"
                      component="input"
                      placeholder={t("contactPerson")} />
                    <FieldElement name="organizer" component={errorMessage} />
                  </div>
                </div>

                <div className= "pure-g">
                  <OptionalFieldLabel className= "pure-u-2-24">
                    <FontAwesomeIcon icon="phone" />
                  </OptionalFieldLabel>
                  <div className= "pure-u-22-24">
                    <FieldElement aria-label="telephone" name="telephone" className="pure-input-1 optional" component="input" placeholder={t("phone")} />
                    <FieldElement aria-label="telephone error" name="telephone" component={errorMessage} />
                  </div>
                </div>

                <div className= "pure-g">
                  <OptionalFieldLabel className= "pure-u-2-24">
                    <FontAwesomeIcon icon="envelope" />
                  </OptionalFieldLabel>
                  <div className= "pure-u-22-24">
                    <FieldElement aria-label="email" name="email" type="email" className="pure-input-1 optional" component="input" placeholder={t("email")} />
                    <FieldElement aria-label="email error" name="email" component={errorMessage} />
                  </div>
                </div>

                <div className= "pure-g">
                  <OptionalFieldLabel className= "pure-u-2-24">
                    <FontAwesomeIcon icon="globe-africa" />
                  </OptionalFieldLabel>
                  <div className= "pure-u-22-24">
                    <FieldElement
                      aria-label="homepage"
                      name="homepage"
                      className="pure-input-1 optional"
                      component="input"
                      placeholder={t("homepage")} />
                    <FieldElement name="homepage" component={errorMessage} />
                  </div>
                </div>

                { !this.state.isEventEntry &&
                  <div className= "pure-g">
                    <OptionalFieldLabel className= "pure-u-2-24">
                      <FontAwesomeIcon icon="clock" />
                    </OptionalFieldLabel>
                    <div className= "pure-u-22-24">
                      <FieldElement aria-label="opening hours string" name="opening_hours" className="pure-input-1 optional" component="input" placeholder={t("openingHours")} />
                      <FieldElement aria-label="opening hours error" name="opening_hours" component={errorMessage} />
                      {/*for the accessibility the element with focus should be destiguishable*/}
                      {/*on google chrome elements get a blue border and since it happened to be*/}
                      {/*the same with the primary color of pure css, a pink border (contrast) is considered*/}
                    </div>
                    <div className= "pure-u-2-24"/>
                    <div className= "pure-u-22-24">
                      <a
                        aria-label="link to an automatic opening hours string generator."
                        className={classNames("pure-u-1-1", "opening-hours-generator")}
                        href="https://projets.pavie.info/yohours"
                        rel="noopener noreferrer"
                        target="_blank"
                      >
                        {t("generateHours")}
                      </a>
                    </div>
                  </div>
                }
              </Fieldset>
              <Fieldset>
                <OptionalLegend>
                  <FieldsetTitle>{t("links")}</FieldsetTitle>
                </OptionalLegend>

                {[...Array(this.state.numberOfCustomLinks).keys()].map(i => (
                  <Fragment key={`link_${i}`}>
                    <OptionalFieldText>#{i+1}</OptionalFieldText>
                    <div className="pure-g">
                      <OptionalFieldLabel className="pure-u-2-24">
                        <FontAwesomeIcon icon="link"/>
                      </OptionalFieldLabel>
                      <div className="pure-u-22-24">
                        <FieldElement
                          name={`link_url_${i}`}
                          className="pure-input-1 optional"
                          component="input"
                          placeholder={t("linkUrl")}
                        />
                        <FieldElement name={`link_url_${i}`} component={errorMessage}/>
                      </div>
                    </div>

                    <div className="pure-g">
                      <OptionalFieldLabel className="pure-u-2-24">
                        <FontAwesomeIcon icon="marker"/>
                      </OptionalFieldLabel>
                      <div className="pure-u-22-24">
                        <FieldElement
                          name={`link_title_${i}`}
                          className="pure-input-1 optional"
                          component="input"
                          placeholder={t("linkTitle")}/>
                      </div>
                    </div>

                    <div className="pure-g">
                      <OptionalFieldLabel className="pure-u-2-24">
                        <FontAwesomeIcon icon="align-justify"/>
                      </OptionalFieldLabel>
                      <div className="pure-u-22-24">
                        <FieldElement
                          name={`link_description_${i}`}
                          className="pure-input-1 optional"
                          component="input"
                          placeholder={t("linkDescription")}
                        />
                        <FieldElement name={`link_description_${i}`} component={errorMessage}/>
                      </div>
                    </div>

                    {this.state.numberOfCustomLinks !== i+1 && <Hr/>}
                  </Fragment>
                ))}
                <div style={{marginTop: 10}} className="pure-g">
                  <div className="pure-u-2-24"/>
                  <button
                    className={classNames("pure-button", "button-secondary", "pure-u-11-24")}
                    onClick={() => this.setState(prevState => update(
                      prevState,
                      {numberOfCustomLinks: {$set: prevState.numberOfCustomLinks + 1}}
                    ))}
                  >
                    <FontAwesomeIcon icon="plus"/>
                  </button>
                  <button
                    className={classNames("pure-button", "button-warning", "pure-u-11-24")}
                    onClick={() => {
                      if (this.state.numberOfCustomLinks === 1) {
                        return
                      }

                      this.setState(prevState => update(
                        prevState,
                        {numberOfCustomLinks: {$set: prevState.numberOfCustomLinks - 1}})
                      )

                    }}
                  >
                    <FontAwesomeIcon icon="minus"/>
                  </button>
                </div>
              </Fieldset>

              <Fieldset>
                <OptionalLegend>
                  <FieldsetTitle>{t("entryImage")}</FieldsetTitle>
                </OptionalLegend>
                <OptionalFieldText>{t("imageUrlExplanation")}</OptionalFieldText>
                <div className= "pure-g">
                  <OptionalFieldLabel className= "pure-u-2-24">
                    <FontAwesomeIcon icon="camera" />
                  </OptionalFieldLabel>
                  <div className= "pure-u-22-24">
                    <FieldElement aira-label="cover image url" name="image_url" className="pure-input-1 optional" component="input" placeholder={t("imageUrl")} />
                    <FieldElement aria-label="cover image url error" name="image_url" component={errorMessage} />
                  </div>
                </div>
                <div className= "pure-g">
                  <OptionalFieldLabel className= "pure-u-2-24">
                    <FontAwesomeIcon icon="link" />
                  </OptionalFieldLabel>
                  <div className= "pure-u-22-24">
                    <FieldElement aria-label="link behind the cover image" name="image_link_url" className="pure-input-1 optional" component="input" placeholder={t("imageLink")} />
                    <FieldElement aria-label="link behind the cover image error" name="image_link_url" component={errorMessage} />
                  </div>
                </div>
              </Fieldset>

              <Fieldset>
                <FieldsetLegend>
                  <FieldsetTitle>{t("license")}</FieldsetTitle>
                </FieldsetLegend>
                <div className= "pure-g license">
                  <label className="pure-u-2-24"
                    onClick={function (event) {
                         event.preventDefault()
                         document.getElementsByName('license')[0].click(event)
                         return false
                       }}>
                    <FontAwesomeIcon icon={['fab', 'creative-commons']}/>
                  </label>
                  <div className="pure-u-2-24 pure-controls"
                       onClick={function (event) {
                         event.preventDefault()
                         document.getElementsByName('license')[0].click(event)
                         return false
                       }}>
                    <FieldElement
                      id="license-agreement-checkbox"
                      aria-label="accept licence"
                      name="license"
                      component="input"
                      type="checkbox"
                      onClick={(event) => {event.stopPropagation()}}
                    />
                  </div>
                  <div className= "pure-u-20-24">
                    <FieldElement aria-label="license agreement error" name="license" component={errorMessage} />
                    {t("iHaveRead") + " "}
                    { license == LICENSES.ODBL
                      ? <a aria-label="link to open database license" target="_blank" href={URLs.ODBL_LICENSE.link}>
                        {t("openDatabaseLicense")}
                      </a>
                      : <a aria-label="link to creative common license" target="_blank" href={URLs.CC_LICENSE.link}>
                        {t("creativeCommonsLicense")}
                      </a>
                    } {" " + t("licenseAccepted")}
                  </div>
                </div>
              </Fieldset>

            </div>
          </AddEntryForm>
        </ScrollableDiv>
        <StyledNavButtonWrapper className="menu pure-g">
          <NavButton
            tabIndex={0}
            keyName = "cancel"
            classname = "pure-u-1-2"
            onClick = {() => {
              this.props.dispatch(initialize(EDIT.id, {}, EDIT.fields));
              this.props.dispatch(isEdit ? Actions.cancelEdit() : Actions.cancelNew());
            }}
            icon = "ban"
            text = { t("cancel") }
            style={cancelButtonCustomization}
          />
          <NavButton
            tabIndex={0}
            keyName = "save"
            classname = "pure-u-1-2"
            onClick = { () => {
              this.props.handleSubmit();
            }}
            icon = "save"
            text = { t("save") }
            style={saveButtonCustomization}
          />
        </StyledNavButtonWrapper>
      </FormWrapper>)
  }
}

const mapStateToProps = ({form, customizations}) => {
  return {
    category: lodashGet(form, 'edit.values.category', null),
    descriptionLength: lodashGet(form, 'edit.values.description', '').length,
    saveButtonCustomization: customizations.saveButton.style,
    cancelButtonCustomization: customizations.cancelButton.style,
  }
}


Form.propTypes = {
  isEdit : T.string,
  license: T.string,
  dispatch: T.func,
  tags: T.array,
  descriptionLength: T.number
};

export default connect(mapStateToProps)(reduxForm({
  form            : EDIT.id,
  validate        : validation.entryForm,
  asyncBlurFields : ['street', 'zip', 'city'],
    onSubmitFail: (errors, dispatch, submitError) => {
	if (errors.license && Object.keys(errors).length == 1){
    var ele = document.getElementsByName('license');
    var div = document.getElementById('entryFormScrollableDiv');
    if (ele && ele.length > 0 && ele[0] && div) {
        div.scrollTo(0, ele[0].offsetTop - 100);
    }
    }},
    asyncValidate: function(values, dispatch) {
    dispatch(Actions.geocodeAndSetMarker(
          (values.street ? values.street + ' ' : '')
          .concat(
            (values.zip ? values.zip + ' ' : '')
              .concat((values.city ? values.city : '')))
      ));
      return new Promise((resolve, reject) => resolve());
  }
})(translate('translation')(Form)));

const StyledNavButtonWrapper = styled(NavButtonWrapper)`
  height: auto;
`

const AddEntryForm = styled.form`
  margin: 2em 1.6em 0;
  select {
    height: 2.5em;
  }

  .opening-hours-generator {
  margin-top: 8px;
    &:focus {
      border: 2px solid ${pink}
    }
  }
`
const FieldsetTitle = styled.span`
  margin-top: 0.5em;
  margin-bottom: 0;
`

const ClickOnMapText = styled.div`
  margin: 0.5em 0;
`

const FormWrapper = styled.div`
  display: flex;
  flex-direction: column;
  height: 100%;
  select, input, textarea, .pure-input-1 {
    margin: 0.25rem 0;
  }
  textarea.pure-input-1 {
    min-height: 6rem;
    margin-bottom: 1rem;
  }
`

const FieldElement = styled(Field)`
   font-weight: 400 !important;
`;

const Fieldset = styled.fieldset`
  margin: 1em 0 1.5em !important;
  .err {
    color: red;
    margin-bottom: 10px;
  }
`;

const OptionalFieldLabel = styled.label`
  display: felx;
  align-items: center;
  color: #777;
`;

const OptionalFieldText = styled.div`
  color: #777;
  margin-bottom: 4px;
`;

const FieldsetLegend = styled.legend`
  font-weight: 500 !important;
`;

const OptionalLegend = styled.legend`
  color: #777 !important;
  font-weight: 400 !important;
`;

const RangeDates = styled.div`
  display: flex;
  .DayPickerInput input {
    width: 100%;
  }
  
  input[readonly] {
    background-color: #fff;
    color: initial;
  }
  
  .DayPickerInput-OverlayWrapper {
    position: static;
  }
  .DayPickerInput-Overlay {
    left: 50%;
    transform: translateX(-50%);
  }
`;

const Hr = styled.hr`
  background-color: #e5e5e5;
  border-width: 0;
  height: 1px;
  width: 150px;
`

const Date = styled.div`
  display: flex;
  flex-direction: column;
  :first-child {
    margin-right: 10px;
  }
`;

const errorMessage = ({ meta }) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null
