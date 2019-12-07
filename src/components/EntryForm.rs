// TODO: import React, { Component } from "react";
// TODO: import { translate        } from "react-i18next";
// TODO: import T                    from "prop-types";
// TODO: import styled               from "styled-components";
// TODO: import { FontAwesomeIcon }  from '@fortawesome/react-fontawesome'
// TODO: import { reduxForm,
// TODO:          Field,
// TODO:          initialize }       from "redux-form";
// TODO:
// TODO: import Actions              from "../Actions";
// TODO: import validation           from "../util/validation";
// TODO: import NavButton            from "./pure/NavButton";
// TODO: import { IDS, NAMES }       from "../constants/Categories";
// TODO: import URLs                 from "../constants/URLs";
// TODO: import LICENSES             from "../constants/Licenses";
// TODO: import { EDIT             } from "../constants/Form";
// TODO: import SelectTags           from './SelectTags';
// TODO: import ScrollableDiv        from "./pure/ScrollableDiv";
// TODO: import NavButtonWrapper     from "./pure/NavButtonWrapper";
// TODO:
// TODO: class Form extends Component {
// TODO:
// TODO:   render() {
// TODO:
// TODO:     const { isEdit, license, dispatch, handleSubmit } = this.props;
// TODO:     var t = (key) => {
// TODO:       return this.props.t("entryForm." + key);
// TODO:     };
// TODO:
// TODO:     return (
// TODO:     <FormWrapper>
// TODO:       <ScrollableDiv>
// TODO:         <AddEntryForm
// TODO:           action    = 'javascript:void();' >
// TODO:
// TODO:             <h3>{isEdit ? t("editEntryHeading") :  t("newEntryHeading")}</h3>
// TODO:             { this.props.error &&
// TODO:               <div className= "err">
// TODO:                 { t("savingError") + ":" + this.props.error.message}
// TODO:               </div>
// TODO:             }
// TODO:             { (!this.props.error) && this.props.submitFailed &&
// TODO:               <div className="err"> { t("valueError") }
// TODO:                 <FieldElement name="license" component={errorMessage} />
// TODO:               </div>
// TODO:             }
// TODO:             <div className= "pure-form">
// TODO:               <Fieldset>
// TODO:                 <FieldElement className="pure-input-1" name="category" component="select">
// TODO:                   <option value={-1}>- {t("chooseCategory")} -</option>
// TODO:                   <option value={IDS.INITIATIVE}>{t("category." + NAMES[IDS.INITIATIVE])}</option>
// TODO:                   <option value={IDS.COMPANY}>{t("category." + NAMES[IDS.COMPANY])}</option>
// TODO:                   {/* <option value={IDS.EVENT}>{t("category." + NAMES[IDS.EVENT])}</option> */}
// TODO:                 </FieldElement>
// TODO:                 <FieldElement name="category" component={errorMessage} />
// TODO:
// TODO:                 <FieldElement
// TODO:                   name="title"
// TODO:                   required={true}
// TODO:                   className="pure-input-1"
// TODO:                   type="text"
// TODO:                   component="input"
// TODO:                   placeholder={t("title")} />
// TODO:
// TODO:                 <FieldElement
// TODO:                   name="title"
// TODO:                   component={errorMessage} />
// TODO:
// TODO:                 <FieldElement name="description" className="pure-input-1" component="textarea" placeholder={t("description")}  />
// TODO:                 <FieldElement name="description" component={errorMessage} />
// TODO:
// TODO:               <FieldElement
// TODO:                 name="tags"
// TODO:                 required={true}
// TODO:                 className="pure-input-1"
// TODO:                 component="input"
// TODO:                 placeholder={t("tags")}
// TODO:                 component={SelectTags}
// TODO:               />
// TODO:               <FieldElement
// TODO:                 name="tags"
// TODO:                 component={errorMessage} />
// TODO:             </Fieldset>
// TODO:
// TODO:               <Fieldset>
// TODO:                 <FieldsetLegend>
// TODO:                   <FieldsetTitle>{t("location")}</FieldsetTitle>
// TODO:                 </FieldsetLegend>
// TODO:                 <div className= "pure-g">
// TODO:                   <div className= "pure-u-15-24">
// TODO:                     <FieldElement name="city" className="pure-input-1" component="input" placeholder={t("city")} />
// TODO:                     <FieldElement name="city" component={errorMessage} />
// TODO:                   </div>
// TODO:                   <div className= "pure-u-9-24">
// TODO:                     <FieldElement name="zip" className="pure-input-1" component="input" placeholder={t("zip")} />
// TODO:                     <FieldElement name="zip" component={errorMessage} />
// TODO:                   </div>
// TODO:                 </div>
// TODO:                 <FieldElement name="street" className="pure-input-1" component="input" placeholder={t("street")}/>
// TODO:                 <FieldElement name="street" component={errorMessage} />
// TODO:                 <ClickOnMapText>{t("clickOnMap")}</ClickOnMapText>
// TODO:                 <div className= "pure-g">
// TODO:                   <label className= "pure-u-2-24">
// TODO:                     <FontAwesomeIcon icon="map-marker" />
// TODO:                   </label>
// TODO:                   <div className= "pure-u-22-24 pure-g">
// TODO:                     <div className= "pure-u-11-24">
// TODO:                       <FieldElement name="lat" className="pure-input-1" component="input" readOnly={true}/>
// TODO:                       <FieldElement name="lat" component={errorMessage} />
// TODO:                     </div>
// TODO:                     <div className= "pure-u-2-24"></div>
// TODO:                     <div className= "pure-u-11-24">
// TODO:                       <FieldElement name="lng" className="pure-input-1" component="input" readOnly={true} />
// TODO:                       <FieldElement name="lng" component={errorMessage} />
// TODO:                     </div>
// TODO:                   </div>
// TODO:                 </div>
// TODO:               </Fieldset>
// TODO:
// TODO:               <Fieldset>
// TODO:                 <OptionalLegend>
// TODO:                   <FieldsetTitle>{t("contact")}</FieldsetTitle>
// TODO:                 </OptionalLegend>
// TODO:                 <div className= "pure-g">
// TODO:                   <OptionalFieldLabel className= "pure-u-2-24">
// TODO:                     <FontAwesomeIcon icon="globe-africa" />
// TODO:                   </OptionalFieldLabel>
// TODO:                   <div className= "pure-u-22-24">
// TODO:                     <FieldElement
// TODO:                       name="homepage"
// TODO:                       className="pure-input-1 optional"
// TODO:                       component="input"
// TODO:                       placeholder={t("homepage")} />
// TODO:                     <FieldElement name="homepage" component={errorMessage} />
// TODO:                   </div>
// TODO:                 </div>
// TODO:
// TODO:                 <div className= "pure-g">
// TODO:                   <OptionalFieldLabel className= "pure-u-2-24">
// TODO:                     <FontAwesomeIcon icon="envelope" />
// TODO:                   </OptionalFieldLabel>
// TODO:                   <div className= "pure-u-22-24">
// TODO:                     <FieldElement name="email" type="email" className="pure-input-1 optional" component="input" placeholder={t("email")} />
// TODO:                     <FieldElement name="email" component={errorMessage} />
// TODO:                   </div>
// TODO:                 </div>
// TODO:
// TODO:                 <div className= "pure-g">
// TODO:                   <OptionalFieldLabel className= "pure-u-2-24">
// TODO:                     <FontAwesomeIcon icon="phone" />
// TODO:                   </OptionalFieldLabel>
// TODO:                   <div className= "pure-u-22-24">
// TODO:                     <FieldElement name="telephone" className="pure-input-1 optional" component="input" placeholder={t("phone")} />
// TODO:                     <FieldElement name="telephone" component={errorMessage} />
// TODO:                   </div>
// TODO:                 </div>
// TODO:               </Fieldset>
// TODO:
// TODO:               <Fieldset>
// TODO:                 <OptionalLegend>
// TODO:                   <FieldsetTitle>{t("entryImage")}</FieldsetTitle>
// TODO:                 </OptionalLegend>
// TODO:                 <OptionalFieldText>{t("imageUrlExplanation")}</OptionalFieldText>
// TODO:                 <div className= "pure-g">
// TODO:                   <OptionalFieldLabel className= "pure-u-2-24">
// TODO:                     <FontAwesomeIcon icon="camera" />
// TODO:                   </OptionalFieldLabel>
// TODO:                   <div className= "pure-u-22-24">
// TODO:                     <FieldElement name="image_url" className="pure-input-1 optional" component="input" placeholder={t("imageUrl")} />
// TODO:                     <FieldElement name="image_url" component={errorMessage} />
// TODO:                   </div>
// TODO:                 </div>
// TODO:                 <div className= "pure-g">
// TODO:                   <OptionalFieldLabel className= "pure-u-2-24">
// TODO:                     <FontAwesomeIcon icon="link" />
// TODO:                   </OptionalFieldLabel>
// TODO:                   <div className= "pure-u-22-24">
// TODO:                     <FieldElement name="image_link_url" className="pure-input-1 optional" component="input" placeholder={t("imageLink")} />
// TODO:                     <FieldElement name="image_link_url" component={errorMessage} />
// TODO:                   </div>
// TODO:                 </div>
// TODO:               </Fieldset>
// TODO:
// TODO:               <Fieldset>
// TODO:                 <FieldsetLegend>
// TODO:                   <FieldsetTitle>{t("license")}</FieldsetTitle>
// TODO:                 </FieldsetLegend>
// TODO:                 <div className= "pure-g license">
// TODO:                   <label className= "pure-u-2-24">
// TODO:                     <FontAwesomeIcon icon={['fab', 'creative-commons']} />
// TODO:                   </label>
// TODO:                   <div className= "pure-u-2-24 pure-controls">
// TODO:                     <FieldElement name="license" component="input" type="checkbox" />
// TODO:                   </div>
// TODO:                   <div className= "pure-u-20-24">
// TODO:                     <FieldElement name="license" component={errorMessage} />
// TODO:                     {t("iHaveRead") + " "}
// TODO:                     { license == LICENSES.ODBL
// TODO:                       ? <a target="_blank" href={URLs.ODBL_LICENSE.link}>
// TODO:                         {t("openDatabaseLicense")}
// TODO:                       </a>
// TODO:                       : <a target="_blank" href={URLs.CC_LICENSE.link}>
// TODO:                         {t("creativeCommonsLicense")}
// TODO:                       </a>
// TODO:                     } {" " + t("licenseAccepted")}
// TODO:                   </div>
// TODO:                 </div>
// TODO:               </Fieldset>
// TODO:
// TODO:             </div>
// TODO:           </AddEntryForm>
// TODO:         </ScrollableDiv>
// TODO:         <StyledNavButtonWrapper className="menu pure-g">
// TODO:           <NavButton
// TODO:             keyName = "cancel"
// TODO:             classname = "pure-u-1-2"
// TODO:             onClick = {() => {
// TODO:               this.props.dispatch(initialize(EDIT.id, {}, EDIT.fields));
// TODO:               this.props.dispatch(isEdit ? Actions.cancelEdit() : Actions.cancelNew());
// TODO:             }}
// TODO:             icon = "ban"
// TODO:             text = { t("cancel") }
// TODO:           />
// TODO:           <NavButton
// TODO:             keyName = "save"
// TODO:             classname = "pure-u-1-2"
// TODO:             onClick = { () => {
// TODO:               this.props.handleSubmit();
// TODO:             }}
// TODO:             icon = "save"
// TODO:             text = { t("save") }
// TODO:           />
// TODO:         </StyledNavButtonWrapper>
// TODO:       </FormWrapper>)
// TODO:   }
// TODO: }
// TODO:
// TODO: Form.propTypes = {
// TODO:   isEdit : T.string,
// TODO:   license: T.string,
// TODO:   dispatch: T.func,
// TODO:   tags: T.array
// TODO: };
// TODO:
// TODO: module.exports = reduxForm({
// TODO:   form            : EDIT.id,
// TODO:   validate        : validation.entryForm,
// TODO:   asyncBlurFields : ['street', 'zip', 'city'],
// TODO:   asyncValidate: function(values, dispatch) {
// TODO:     dispatch(Actions.geocodeAndSetMarker(
// TODO:           (values.street ? values.street + ' ' : '')
// TODO:           .concat(
// TODO:             (values.zip ? values.zip + ' ' : '')
// TODO:               .concat((values.city ? values.city : '')))
// TODO:       ));
// TODO:       return new Promise((resolve, reject) => resolve());
// TODO:   }
// TODO: })(translate('translation')(Form))
// TODO:
// TODO: const StyledNavButtonWrapper = styled(NavButtonWrapper)`
// TODO:   height: 68px;
// TODO: `
// TODO:
// TODO: const AddEntryForm = styled.form`
// TODO:   margin: 2em 1.6em 0;
// TODO:   select {
// TODO:     height: 2.5em;
// TODO:   }
// TODO: `
// TODO: const FieldsetTitle = styled.span`
// TODO:   margin-top: 0.5em;
// TODO:   margin-bottom: 0;
// TODO: `
// TODO:
// TODO: const ClickOnMapText = styled.div`
// TODO:   margin: 0.5em 0;
// TODO: `
// TODO:
// TODO: const FormWrapper = styled.div`
// TODO:   display: flex;
// TODO:   flex-direction: column;
// TODO:   height: 100%;
// TODO:   select, input, textarea, .pure-input-1 {
// TODO:     margin: 0.25rem 0;
// TODO:   }
// TODO:
// TODO:   textarea.pure-input-1 {
// TODO:     min-height: 6rem;
// TODO:     margin-bottom: 1rem;
// TODO:   }
// TODO: `
// TODO:
// TODO: const FieldElement = styled(Field)`
// TODO:
// TODO: `;
// TODO:
// TODO: const Fieldset = styled.fieldset`
// TODO:   margin: 1em 0 1.5em !important;
// TODO:   .err {
// TODO:     color: red;
// TODO:     margin-bottom: 10px;
// TODO:   }
// TODO: `;
// TODO:
// TODO: const OptionalFieldLabel = styled.label`
// TODO:   color: #777;
// TODO: `;
// TODO:
// TODO: const OptionalFieldText = styled.div`
// TODO:   color: #777;
// TODO:   margin-bottom: 4px;
// TODO: `;
// TODO:
// TODO: const FieldsetLegend = styled.legend`
// TODO:   font-weight: 500 !important;
// TODO: `;
// TODO:
// TODO: const OptionalLegend = styled.legend`
// TODO:   color: #777 !important;
// TODO:   font-weight: 400 !important;
// TODO: `;
// TODO:
// TODO: const errorMessage = ({meta}) =>
// TODO:   meta.error && meta.touched
// TODO:     ? <div className="err">{meta.error}</div>
// TODO:     : null
