import React, { Component } from "react"
import { reduxForm, Field } from "redux-form"
import validation           from "../util/validation"
import styled               from "styled-components"
import { DIVERSITY, RENEWABLE, FAIRNESS, HUMANITY,
         TRANSPARENCY, SOLIDARITY, EXPLANATION } from "../constants/RatingContexts";

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null    

const IntroText = styled.div `
  margin-bottom: 10px;
`;

const AspectLabel = styled.label `
  font-weight: bold;
`;

const AspectExplanation = styled.div `

`;

class RatingForm extends Component {

  render() {

    const { entryId, entryTitle, contextToExplain, 
      changeContext, selectedContext } = this.props;

    return (
    <form
      className = "new-rating-form"
      action    = 'javascript:void();' >

      <h3>Neue Bewertung für {entryTitle}</h3>
      <IntroText>
      Positivfaktoren entscheiden darüber, wie sichtbar ein Eintrag auf der Karte von morgen ist. Je größer der Anteil positiver Aspekte einer Organisation ist, desto höher steigt der Pin in den Suchergebnissen.
      { } <a href="http://bildungsagenten.org/kartevonmorgen/2/">weitere Infos...</a>
      </IntroText>
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
      <div>
      Wähle einen Aspekt der Nachhaltigkeit für deine Bewertung: 
      </div>
      <div className= "pure-form">
        <fieldset>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="diversity" />
            {" "} Natürlichkeit
          </AspectLabel>
          <AspectExplanation>
            { EXPLANATION.diversity }
          </AspectExplanation>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="renewable" />
            {" "} Erneuerbarkeit
          </AspectLabel>
          <AspectExplanation>
            { EXPLANATION.renewable }
          </AspectExplanation>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="fairness" />
            {" "} Fairness
          </AspectLabel>
          <AspectExplanation>
            { EXPLANATION.fairness }
          </AspectExplanation>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="humanity" />
            {" "} Menschlichkeit
          </AspectLabel>
          <AspectExplanation>
            { EXPLANATION.humanity }
          </AspectExplanation>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="solidarity" />
            {" "} Solidarität
          </AspectLabel>
          <AspectExplanation>
            { EXPLANATION.solidarity }
          </AspectExplanation>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="transparency" />
            {" "} Transparenz
          </AspectLabel>
          <AspectExplanation>
            { EXPLANATION.transparency }
          </AspectExplanation>
          <Field name="context" component={errorMessage} />
        </fieldset>
        <fieldset>
          <Field name="title" className="pure-input-1" type="text" component="input" placeholder="Überschrift" />
          <Field name="title" component={errorMessage} />
        </fieldset>
        <fieldset>
          <Field name="comment" className="pure-input-1" component="textarea" placeholder="Kommentar/Erklärung"  />
          <Field name="comment" component={errorMessage} />
        </fieldset>
        <fieldset>
          <Field name="source" className="pure-input-1" type="text" component="input" placeholder="Quelle (z.B. ein Link oder 'ich arbeite da'...)" />
        </fieldset>
        <p className="form-heading">Bewertung:</p>
        <fieldset>  
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="2" />
            {" "} von übermorgen (besser geht's nicht!)
          </label><br />
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="1" />
            {" "} von morgen (zukunftsweisend)
          </label><br/>
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="0" />
            {" "} von heute (nicht besonders nachhaltig)
          </label><br />
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="-1" />
            {" "} von gestern (einige Kritikpunkte)
          </label>
          <Field name="value" component={errorMessage} />
        </fieldset>
      </div>
    </form>)
  }
}

module.exports = reduxForm({
  validate  : validation.ratingForm,
  form      : "rating"
})(RatingForm)