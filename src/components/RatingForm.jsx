import React, { Component } from "react"
import { reduxForm, Field } from "redux-form"
import validation           from "../util/validation"

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

class RatingForm extends Component {

  render() {

    const { entryId, entryTitle } = this.props;

    return (
    <form
      className = "new-rating-form"
      action    = 'javascript:void();' >

      <h3>Neue Bewertung</h3>
      { this.props.error &&
        <div className= "err">
          Die Bewertung konnte nicht gespeichert werden: {this.props.error.message}
        </div>
      }
      { (!this.props.error) && this.props.submitFailed &&
        <div className="err">Bitte überprüfen Sie ihre Eingaben!
          <Field name="license" component={errorMessage} />
        </div>
      }
      <div className= "pure-form">
        <p>Bewertung für <span className="title">{entryTitle}</span></p>
        <fieldset>
          <Field name="title" className="pure-input-1" type="text" component="input" placeholder="Titel" />
          <Field name="title" component={errorMessage} />
        </fieldset>
        <fieldset>
          <Field className="pure-input-1" name="context" component="select">
            <option value={-1}>- Bewertungskontext auswählen -</option>
            <option value="diversity">Natürlichkeit</option>
            <option value="renewable">Erneuerbarkeit</option>
            <option value="fairness">Fairness</option>
            <option value="humanity">Menschlichkeit</option>
            <option value="transparency">Transparenz</option>
            <option value="solidarity">Solidarität</option>
          </Field>
          <Field name="context" component={errorMessage} />
          <Field className="pure-input-1" name="value" component="select">
            <option value={-100}>- Bewertung auswählen -</option>
            <option value={-1}>von gestern (-1)</option>
            <option value={0}>von heute (0)</option>
            <option value={1}>von morgen (1)</option>
            <option value={2}>Visionär (2)</option>
          </Field>
          <Field name="value" component={errorMessage} />
        </fieldset>
        <fieldset>
          <Field name="comment" className="pure-input-1" component="textarea" placeholder="Kommentar"  />
          <Field name="comment" component={errorMessage} />
        </fieldset>
      </div>
    </form>)
  }
}

module.exports = reduxForm({
  validate  : validation.ratingForm,
  form      : "rating"
})(RatingForm)
