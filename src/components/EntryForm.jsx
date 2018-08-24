import React, { Component } from "react";
import Actions              from "../Actions";
import validation           from "../util/validation";
import normalize            from "../util/normalize";
import { reduxForm, Field, initialize } from "redux-form";
import NavButton            from "./NavButton";
import { IDS, NAMES }       from "../constants/Categories";
import URLs                 from "../constants/URLs";
import LICENSES             from "../constants/Licenses";
import { EDIT             } from "../constants/Form";
import { translate        } from "react-i18next";
import T                    from "prop-types";
import styled               from "styled-components";

const Fieldset = styled.fieldset`
  margin-top: 10px !important;
`;

const OptionalFieldLabel = styled.label`
  color: #777;
`;

const OptionalFieldText = styled.div`
  color: #777;
  margin-bottom: 4px;
`;

const OptionalLegend = styled.legend`
  color: #777 !important;
`;

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

class Form extends Component {

  render() {

    const { isEdit, license, dispatch, handleSubmit } = this.props;
    var t = (key) => {
      return this.props.t("entryForm." + key);
    };

    return (
    <div>
      <form
        className = "add-entry-form"
        action    = 'javascript:void();' >

        <h3>{isEdit ? t("editEntryHeading") :  t("newEntryHeading")}</h3>
        { this.props.error &&
          <div className= "err">
            { t("savingError") + ":" + this.props.error.message}
          </div>
        }
        { (!this.props.error) && this.props.submitFailed &&
          <div className="err"> { t("valueError") }
            <Field name="license" component={errorMessage} />
          </div>
        }
        <div className= "pure-form">
          <Fieldset>
            <Field className="pure-input-1" name="category" component="select">
              <option value={-1}>- {t("chooseCategory")} -</option>
              <option value={IDS.INITIATIVE}>{this.props.t("category." + NAMES[IDS.INITIATIVE])}</option>
              {/*<option value={IDS.EVENT}>Event</option>*/}
              <option value={IDS.COMPANY}>{this.props.t("category." + NAMES[IDS.COMPANY])}</option>
            </Field>
            <Field name="category" component={errorMessage} />

            <Field
              name="title"
              required={true}
              className="pure-input-1"
              type="text"
              component="input"
              placeholder={t("title")} />

            <Field
              name="title"
              component={errorMessage} />

            <Field name="description" className="pure-input-1" component="textarea" placeholder={t("description")}  />
            <Field name="description" component={errorMessage} />

            <Field
              name="tags"
              required={true}
              className="pure-input-1"
              component="input"
              placeholder={t("tags")}
              normalize={normalize.tags} />
            <Field
              name="tags"
              component={errorMessage} />
          </Fieldset>

          <Fieldset>
            <legend>
              <span className="text">Ort</span>
            </legend>
            <div className= "pure-g">
              <div className= "pure-u-15-24">
                <Field name="city" className="pure-input-1" component="input" placeholder={t("city")} />
                <Field name="city" component={errorMessage} />
              </div>
              <div className= "pure-u-9-24">
                <Field name="zip" className="pure-input-1" component="input" placeholder={t("zip")} />
                <Field name="zip" component={errorMessage} />
              </div>
            </div>
            <Field name="street" className="pure-input-1" component="input" placeholder={t("street")}/>
            <Field name="street" component={errorMessage} />
            </Fieldset>
            <span className="desc">{t("clickOnMap")}</span>
            <Fieldset>
            <div className= "pure-g">
              <label className= "pure-u-2-24">
                <i className= "fa fa-map-marker" />
              </label>
              <div className= "pure-u-22-24 pure-g">
                <div className= "pure-u-11-24">
                  <Field name="lat" className="pure-input-1" component="input" readOnly={true}/>
                  <Field name="lat" component={errorMessage} />
                </div>
                <div className= "pure-u-2-24"></div>
                <div className= "pure-u-11-24">
                  <Field name="lng" className="pure-input-1" component="input" readOnly={true} />
                  <Field name="lng" component={errorMessage} />
                </div>
              </div>
            </div>
          </Fieldset>

          <Fieldset>
            <OptionalLegend>{t("contact")}</OptionalLegend>
            <div className= "pure-g">
              <OptionalFieldLabel className= "pure-u-2-24">
                <i className= "fa fa-globe" />
              </OptionalFieldLabel>
              <div className= "pure-u-22-24">
                <Field
                  name="homepage"
                  className="pure-input-1 optional"
                  component="input"
                  placeholder={t("homepage")} />
                <Field name="homepage" component={errorMessage} />
              </div>
            </div>

            <div className= "pure-g">
              <OptionalFieldLabel className= "pure-u-2-24">
                <i className= "fa fa-envelope" />
              </OptionalFieldLabel>
              <div className= "pure-u-22-24">
                <Field name="email" type="email" className="pure-input-1 optional" component="input" placeholder={t("email")} />
                <Field name="email" component={errorMessage} />
              </div>
            </div>

            <div className= "pure-g">
              <OptionalFieldLabel className= "pure-u-2-24">
                <i className= "fa fa-phone" />
              </OptionalFieldLabel>
              <div className= "pure-u-22-24">
                <Field name="telephone" className="pure-input-1 optional" component="input" placeholder={t("phone")} />
                <Field name="telephone" component={errorMessage} />
              </div>
            </div>
          </Fieldset>

          <Fieldset>
            <OptionalLegend>{t("entryImage")}</OptionalLegend>
            <OptionalFieldText>{t("imageUrlExplanation")}</OptionalFieldText>
            <div className= "pure-g">
              <OptionalFieldLabel className= "pure-u-2-24">
                <i className= "fa fa-camera" />
              </OptionalFieldLabel>
              <div className= "pure-u-22-24">
                <Field name="image_url" className="pure-input-1 optional" component="input" placeholder={t("imageUrl")} />
                <Field name="image_url" component={errorMessage} />
              </div>
            </div>
            <div className= "pure-g">
              <OptionalFieldLabel className= "pure-u-2-24">
                <i className= "fa fa-link" />
              </OptionalFieldLabel>
              <div className= "pure-u-22-24">
                <Field name="image_link_url" className="pure-input-1 optional" component="input" placeholder={t("imageLink")} />
                <Field name="image_link_url" component={errorMessage} />
              </div>
            </div>
          </Fieldset>

          <Fieldset>
            <legend>
              <span className="text">{t("license")}</span>
            </legend>
            <div className= "pure-g license">
              <label className= "pure-u-2-24">
                <i className= "fa fa-creative-commons" />
              </label>
              <div className= "pure-u-2-24 pure-controls">
                <Field name="license" component="input" type="checkbox" />
              </div>
              <div className= "pure-u-20-24">
                <Field name="license" component={errorMessage} />
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
        </form>
        <nav className="menu pure-g">
          <NavButton
            keyName = "cancel"
            classname = "pure-u-1-2"
            onClick = {() => {
              this.props.dispatch(initialize(EDIT.id, {}, EDIT.fields));
              this.props.dispatch(isEdit ? Actions.cancelEdit() : Actions.cancelNew());
            }}
            icon = "fa fa-ban"
            text = { t("cancel") }
          />
          <NavButton
            keyName = "save"
            classname = "pure-u-1-2"
            onClick = { () => {
              this.props.handleSubmit();
            }}
            icon = "fa fa-floppy-o"
            text = { t("save") }
          />
        </nav>
      </div>)
  }
}

Form.propTypes = {
  isEdit : T.string,
  license: T.string,
  dispatch: T.func
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