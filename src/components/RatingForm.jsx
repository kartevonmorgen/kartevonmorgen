import React, { Component } from "react"
import { reduxForm, Field } from "redux-form"
import validation           from "../util/validation"
import { DIVERSITY, RENEWABLE, FAIRNESS, HUMANITY,
         TRANSPARENCY, SOLIDARITY, EXPLANATION } from "../constants/RatingContexts";

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null    

class RatingForm extends Component {

  render() {

    const { entryId, entryTitle, contextToExplain, 
      changeContext, selectedContext } = this.props;

    const explainDiversity = () => {
      changeContext(DIVERSITY);
    }

    const explainRenewable = () => {
      changeContext(RENEWABLE);
    }

    const explainFairness = () => {
      changeContext(FAIRNESS);
    }

    const explainHumanity = () => {
      changeContext(HUMANITY);
    }

    const explainTransparency = () => {
      changeContext(TRANSPARENCY);
    }

    const explainSolidarity = () => {
      changeContext(SOLIDARITY);
    }

    const explainSelected = () => {
      changeContext(selectedContext);
    }

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
          <span onMouseOver={explainDiversity}>
          <label>
            <Field name="context" className="radio-button" component="input" type="radio" value="diversity" />
            {" "} Natürlichkeit
          </label>
          </span><br />
          <span onMouseOver={explainRenewable}>
          <label>
            <Field name="context" className="radio-button" component="input" type="radio" value="renewable" />
            {" "} Erneuerbarkeit
          </label>
          </span><br />
          <span onMouseOver={explainFairness}>
          <label>
            <Field name="context" className="radio-button" component="input" type="radio" value="fairness" />
            {" "} Fairness
          </label>
          </span><br />
          <span onMouseOver={explainHumanity}>
          <label>
            <Field name="context" className="radio-button" component="input" type="radio" value="humanity" />
            {" "} Menschlichkeit
          </label>
          </span><br />
          <span onMouseOver={explainTransparency}>
          <label>
            <Field name="context" className="radio-button" component="input" type="radio" value="solidarity" />
            {" "} Solidarität
          </label>
          </span><br />
          <span onMouseOver={explainSolidarity}>
          <label>
            <Field name="context" className="radio-button" component="input" type="radio" value="transparency" />
            {" "} Transparenz
          </label>
          </span>
          <Field name="context" component={errorMessage} />
          <div className="rating-context-explanation">
            {contextToExplain ? EXPLANATION[contextToExplain] : EXPLANATION["null"]}
          </div>
        </fieldset>
        <span onMouseOver={explainSelected}>
        <fieldset>
          <Field name="comment" className="pure-input-1" component="textarea" placeholder="Kommentar"  />
          <Field name="comment" component={errorMessage} />
        </fieldset>
        <fieldset>
          <Field name="source" className="pure-input-1" type="text" component="input" placeholder="Quelle (z.B. ein Link oder 'ich arbeite da'...)" />
        </fieldset>
        <p className="form-heading">Bewertung:</p>
        <fieldset>  
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="2" />
            {" "} von übermorgen (2)
          </label><br />
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="1" />
            {" "} von morgen (1)
          </label><br/>
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="0" />
            {" "} von heute (0)
          </label><br />
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="-1" />
            {" "} von gestern (-1)
          </label>
          <Field name="value" component={errorMessage} />
        </fieldset>
        </span>
      </div>
    </form>)
  }
}

module.exports = reduxForm({
  validate  : validation.ratingForm,
  form      : "rating"
})(RatingForm)