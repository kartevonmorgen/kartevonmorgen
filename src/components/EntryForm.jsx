import React, { Component } from "react";
import { connect }          from 'react-redux'
import { translate        } from "react-i18next";
import T                    from "prop-types";
import styled               from "styled-components";
import DatePicker from 'react-datepicker';
import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
import { reduxForm,
         Field,
         initialize, formValueSelector, getFormSyncErrors}       from "redux-form";
         
import lodashGet from 'lodash/get'
import moment, {min} from 'moment'

import 'react-datepicker/dist/react-datepicker.min.css';
import en_GB from "date-fns/locale/en-GB";

import Actions              from "../Actions";
import validation           from "../util/validation";
import NavButton            from "./pure/NavButton";
import { IDS, NAMES }       from "../constants/Categories";
import URLs                 from "../constants/URLs";
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
  };

  componentDidMount() {
    this.setState({isEventEntry: this.props.category === IDS.EVENT})
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

    const { isEventEntry } = this.state;
    const { startDate } = this.state;
    const { endDate } = this.state;
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
        <AddEntryForm
          action    = 'javascript:void();' >

            <h3>{isEdit ? t("editEntryHeading") :  t("newEntryHeading")}</h3>

            { this.props.error &&
              <div className= "err">
                { t("savingError") + ":" + this.props.error.message}
              </div>
            }
            { (!this.props.error) && this.props.submitFailed &&
              <div className="err"> { t("valueError") }
                <FieldElement name="license" component={errorMessage} />
              </div>
            }

            <div className= "pure-form">
              <Fieldset>
                <FieldElement className="pure-input-1" name="category" disabled={ isEdit && isEvent } component="select" onChange={this.handleCategoryChange}>
                  <option value={-1}>- {t("chooseCategory")} -</option>
                  <option value={IDS.INITIATIVE}>{t("category." + NAMES[IDS.INITIATIVE])}</option>
                  <option value={IDS.COMPANY}>{t("category." + NAMES[IDS.COMPANY])}</option>
                  <option disabled={ isEdit } value={IDS.EVENT}>{t("category." + NAMES[IDS.EVENT])}</option>
                </FieldElement>

                <FieldElement name="category" component={errorMessage} />

                <FieldElement
                  name="title"
                  required={true}
                  className="pure-input-1"
                  type="text"
                  component="input"
                  placeholder={t("title")} />

                <FieldElement
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

                <FieldElement name="description" className="pure-input-1" component="textarea" placeholder={t("description")}  />
                {isDescriptionTooLong && <div className="warn">{t("keepDescriptionShort")}</div>}
                <FieldElement name="description" component={errorMessage} />

                <FieldElement
                  name="tags"
                  required={true}
                  className="pure-input-1"
                  placeholder={t("tags")}
                  component={SelectTags}
                />
                <FieldElement
                  name="tags"
                  component={errorMessage}
                />
              </Fieldset>

              <Fieldset>
                <FieldsetLegend>
                  <FieldsetTitle>{t("location")}</FieldsetTitle>
                </FieldsetLegend>

                <div className= "pure-g">
                  <div className= "pure-u-12-24">
                    <FieldElement name="country" className="pure-input-1" component="input" placeholder={t("city")} />
                    <FieldElement name="country" component={errorMessage} />
                  </div>
                  <div className= "pure-u-12-24">
                    <FieldElement name="state" className="pure-input-1" component="input" placeholder={t("zip")} />
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
                      <FieldElement name="lat" className="pure-input-1" component="input" readOnly={true}/>
                      <FieldElement name="lat" component={errorMessage} />
                    </div>
                    <div className= "pure-u-2-24"></div>
                    <div className= "pure-u-11-24">
                      <FieldElement name="lng" className="pure-input-1" component="input" readOnly={true} />
                      <FieldElement name="lng" component={errorMessage} />
                    </div>
                  </div>
                </div>
              </Fieldset>

              <Fieldset>
                <OptionalLegend>
                  <FieldsetTitle>{t("contact")}</FieldsetTitle>
                </OptionalLegend>

                {
                  this.state.isEventEntry &&
                  <div className= "pure-g">
                    <OptionalFieldLabel className= "pure-u-2-24">
                      <FontAwesomeIcon icon="user" />
                    </OptionalFieldLabel>
                    <div className= "pure-u-22-24">
                      <FieldElement
                        name="organizer"
                        className="pure-input-1 optional"
                        component="input"
                        placeholder={t("contactPerson")} />
                      <FieldElement name="organizer" component={errorMessage} />
                    </div>
                  </div>
                }

                <div className= "pure-g">
                  <OptionalFieldLabel className= "pure-u-2-24">
                    <FontAwesomeIcon icon="globe-africa" />
                  </OptionalFieldLabel>
                  <div className= "pure-u-22-24">
                    <FieldElement
                      name="homepage"
                      className="pure-input-1 optional"
                      component="input"
                      placeholder={t("homepage")} />
                    <FieldElement name="homepage" component={errorMessage} />
                  </div>
                </div>

                <div className= "pure-g">
                  <OptionalFieldLabel className= "pure-u-2-24">
                    <FontAwesomeIcon icon="envelope" />
                  </OptionalFieldLabel>
                  <div className= "pure-u-22-24">
                    <FieldElement name="email" type="email" className="pure-input-1 optional" component="input" placeholder={t("email")} />
                    <FieldElement name="email" component={errorMessage} />
                  </div>
                </div>

                <div className= "pure-g">
                  <OptionalFieldLabel className= "pure-u-2-24">
                    <FontAwesomeIcon icon="phone" />
                  </OptionalFieldLabel>
                  <div className= "pure-u-22-24">
                    <FieldElement name="telephone" className="pure-input-1 optional" component="input" placeholder={t("phone")} />
                    <FieldElement name="telephone" component={errorMessage} />
                  </div>
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
                    <FieldElement name="image_url" className="pure-input-1 optional" component="input" placeholder={t("imageUrl")} />
                    <FieldElement name="image_url" component={errorMessage} />
                  </div>
                </div>
                <div className= "pure-g">
                  <OptionalFieldLabel className= "pure-u-2-24">
                    <FontAwesomeIcon icon="link" />
                  </OptionalFieldLabel>
                  <div className= "pure-u-22-24">
                    <FieldElement name="image_link_url" className="pure-input-1 optional" component="input" placeholder={t("imageLink")} />
                    <FieldElement name="image_link_url" component={errorMessage} />
                  </div>
                </div>
              </Fieldset>

              <Fieldset>
                <FieldsetLegend>
                  <FieldsetTitle>{t("license")}</FieldsetTitle>
                </FieldsetLegend>
                <div className= "pure-g license">
                  <label className= "pure-u-2-24"
                       	onClick={function(event){event.preventDefault();document.getElementsByName('license')[0].click(event);return false;}}>
                    <FontAwesomeIcon icon={['fab', 'creative-commons']} />
                  </label>
                  <div className= "pure-u-2-24 pure-controls"
                	onClick={function(event){event.preventDefault();document.getElementsByName('license')[0].click(event);return false;}}>
                    <FieldElement name="license" component="input" type="checkbox" onClick={function(event){event.stopPropagation();}} />
                  </div>
                  <div className= "pure-u-20-24">
                    <FieldElement name="license" component={errorMessage} />
                    {t("iHaveRead") + " "}
                    { license == LICENSES.ODBL
                      ? <a target="_blank" href={URLs.ODBL_LICENSE.link}>
                        {t("openDatabaseLicense")}
                      </a>
                      : <a target="_blank" href={URLs.CC_LICENSE.link}>
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
            keyName = "cancel"
            classname = "pure-u-1-2"
            onClick = {() => {
              this.props.dispatch(initialize(EDIT.id, {}, EDIT.fields));
              this.props.dispatch(isEdit ? Actions.cancelEdit() : Actions.cancelNew());
            }}
            icon = "ban"
            text = { t("cancel") }
          />
          <NavButton
            keyName = "save"
            classname = "pure-u-1-2"
            onClick = { () => {
              this.props.handleSubmit();
            }}
            icon = "save"
            text = { t("save") }
          />
        </StyledNavButtonWrapper>
      </FormWrapper>)
  }
}

const mapStateToProps = ({form}) => {
  return {
    category: lodashGet(form, 'edit.values.category', null),
    descriptionLength: lodashGet(form, 'edit.values.description', '').length
  }
}


Form.propTypes = {
  isEdit : T.string,
  license: T.string,
  dispatch: T.func,
  tags: T.array,
  descriptionLength: T.number
};

module.exports = connect(mapStateToProps)(reduxForm({
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
  height: 68px;
`

const AddEntryForm = styled.form`
  margin: 2em 1.6em 0;
  select {
    height: 2.5em;
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
