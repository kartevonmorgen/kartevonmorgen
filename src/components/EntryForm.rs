import React, { Component } from "react";
import { translate        } from "react-i18next";
import T                    from "prop-types";
import styled               from "styled-components";
import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
import { reduxForm,
         Field,
         initialize }       from "redux-form";

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

class Form extends Component {

  render() {

    const { isEdit, license, dispatch, handleSubmit } = this.props;
    var t = (key) => {
      return this.props.t("entryForm." + key);
    };

    return (
    <FormWrapper>
      <ScrollableDiv>
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
                <FieldElement className="pure-input-1" name="category" component="select">
                  <option value={-1}>- {t("chooseCategory")} -</option>
                  <option value={IDS.INITIATIVE}>{t("category." + NAMES[IDS.INITIATIVE])}</option>
                  <option value={IDS.COMPANY}>{t("category." + NAMES[IDS.COMPANY])}</option>
                  {/* <option value={IDS.EVENT}>{t("category." + NAMES[IDS.EVENT])}</option> */}
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

                <FieldElement name="description" className="pure-input-1" component="textarea" placeholder={t("description")}  />
                <FieldElement name="description" component={errorMessage} />

              <FieldElement
                name="tags"
                required={true}
                className="pure-input-1"
                component="input"
                placeholder={t("tags")}
                component={SelectTags} 
              />
              <FieldElement
                name="tags"
                component={errorMessage} />
            </Fieldset>

              <Fieldset>
                <FieldsetLegend>
                  <FieldsetTitle>{t("location")}</FieldsetTitle>
                </FieldsetLegend>
                <div className= "pure-g">
                  <div className= "pure-u-15-24">
                    <FieldElement name="city" className="pure-input-1" component="input" placeholder={t("city")} />
                    <FieldElement name="city" component={errorMessage} />
                  </div>
                  <div className= "pure-u-9-24">
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
                  <label className= "pure-u-2-24">
                    <FontAwesomeIcon icon={['fab', 'creative-commons']} />
                  </label>
                  <div className= "pure-u-2-24 pure-controls">
                    <FieldElement name="license" component="input" type="checkbox" />
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

Form.propTypes = {
  isEdit : T.string,
  license: T.string,
  dispatch: T.func,
  tags: T.array
};

module.exports = reduxForm({
  form            : EDIT.id,
  validate        : validation.entryForm,
  asyncBlurFields : ['street', 'zip', 'city'],
  asyncValidate: function(values, dispatch) {
    dispatch(Actions.geocodeAndSetMarker(
          (values.street ? values.street + ' ' : '')
          .concat(
            (values.zip ? values.zip + ' ' : '')
              .concat((values.city ? values.city : '')))
      ));
      return new Promise((resolve, reject) => resolve());
  }
})(translate('translation')(Form))

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

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null
