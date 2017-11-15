import React, { Component } from "react"
import Actions              from "../Actions"
import validation           from "../util/validation"
import normalize            from "../util/normalize";
import { reduxForm, Field } from "redux-form"
import { IDS              } from "../constants/Categories"
import { CC_LICENSE       } from "../constants/URLs"
import { EDIT             } from "../constants/Form"

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

class Form extends Component {

  render() {

    const { isEdit } = this.props;

    return (
    <form
      className = "add-entry-form"
      action    = 'javascript:void();' >

      <h3>{isEdit ? "Eintrag bearbeiten" : "Neuer Eintrag"}</h3>
      { this.props.error &&
        <div className= "err">
          Der Eintrag konnte nicht gespeichert werden: {this.props.error.message}
        </div>
      }
      { (!this.props.error) && this.props.submitFailed &&
        <div className="err">Bitte überprüfen Sie ihre Eingaben!
          <Field name="license" component={errorMessage} />
        </div>
      }
      <div className= "pure-form">
        <fieldset>
          <Field className="pure-input-1" name="category" component="select">
            <option value={-1}>- Eintragstyp auswählen -</option>
            <option value={IDS.INITIATIVE}>Initiative</option>
            {/*<option value={IDS.EVENT}>Event</option>*/}
            <option value={IDS.COMPANY}>Unternehmen</option>
          </Field>
          <Field name="category" component={errorMessage} />

          <Field
            name="title"
            required={true}
            className="pure-input-1"
            type="text"
            component="input"
            placeholder="Titel" />

          <Field
            name="title"
            component={errorMessage} />

          <Field name="description" className="pure-input-1" component="textarea" placeholder="Beschreibung"  />
          <Field name="description" component={errorMessage} />

        </fieldset>

        <fieldset>
          <Field
            name="tags"
            required={true}
            className="pure-input-1"
            component="input"
            placeholder="Stichworte (Komma getrennt)"
            normalize={normalize.tags} />
          <Field
            name="tags"
            component={errorMessage} />
        </fieldset>

        <fieldset>
          <legend>
            <span className="text">Ort</span>
          </legend>
          <div className= "pure-g">
            <div className= "pure-u-15-24">
              <Field name="city" className="pure-input-1" component="input" placeholder="Stadt" />
              <Field name="city" component={errorMessage} />
            </div>
            <div className= "pure-u-9-24">
              <Field name="zip" className="pure-input-1" component="input" placeholder="PLZ(optional)" />
              <Field name="zip" component={errorMessage} />
            </div>
          </div>
          <Field name="street" className="pure-input-1" component="input" placeholder="Straße & Hausnummer"/>
          <Field name="street" component={errorMessage} />
          </fieldset>
          <span className="desc">oder auf Karte klicken...</span>
          <fieldset>
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
        </fieldset>

        <fieldset>
          <legend>Kontakt (optional)</legend>
          <div className= "pure-g">
            <label className= "pure-u-2-24">
              <i className= "fa fa-globe" />
            </label>
            <div className= "pure-u-22-24">
              <Field
                name="homepage"
                className="pure-input-1"
                component="input"
                placeholder="Homepage" />
              <Field name="homepage" component={errorMessage} />
            </div>
          </div>

          <div className= "pure-g">
            <label className= "pure-u-2-24">
              <i className= "fa fa-envelope" />
            </label>
            <div className= "pure-u-22-24">
              <Field name="email" type="email" className="pure-input-1" component="input" placeholder="eMail" />
              <Field name="email" component={errorMessage} />
            </div>
          </div>

          <div className= "pure-g">
            <label className= "pure-u-2-24">
              <i className= "fa fa-phone" />
            </label>
            <div className= "pure-u-22-24">
              <Field name="telephone" className="pure-input-1" component="input" placeholder="Telefon" />
              <Field name="telephone" component={errorMessage} />
            </div>
          </div>

        </fieldset>

        <fieldset>
          <legend>
            <span className="text">Lizenz</span>
            <span className="desc">(CC-0)</span>
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
              Ich habe die {" "}
              <a target="_blank" href={CC_LICENSE.link}>
                Bestimmungen der Creative-Commons Lizenz CC0
              </a> {" "}
              gelesen und akzeptiere sie
            </div>
          </div>
        </fieldset>
      </div>
    </form>)
  }
}

const T = React.PropTypes;

Form.propTypes = { isEdit : T.bool };

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
})(Form)
