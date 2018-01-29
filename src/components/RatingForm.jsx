import React, { Component } from "react"
import { reduxForm, Field } from "redux-form"
import validation           from "../util/validation"
import styled               from "styled-components"
import { translate }        from "react-i18next";

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
      changeContext, selectedContext, t } = this.props;

    return (
    <form
      className = "new-rating-form"
      action    = 'javascript:void();' >

      <h3>{ t("ratingForm.newRatingFor") + " " + entryTitle}</h3>
      <IntroText>
        { t("ratingForm.introText") + " "}
        <a href="http://bildungsagenten.org/kartevonmorgen/2/">{t("ratingForm.moreInfoLink")}</a>
      </IntroText>
      { this.props.error &&
        <div className= "err">
          {t("ratingForm.savingError") + ":" + this.props.error.message}
        </div>
      }
      { (!this.props.error) && this.props.submitFailed &&
        <div className="err">{t("ratingForm.valuesError")}
          <Field name="license" component={errorMessage} />
        </div>
      }
      <div>
      {t("ratingForm.chooseContext") + ": "}
      </div>
      <div className= "pure-form">
        <fieldset>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="diversity" />
            {" " + t("ratings.contextName.diversity")}
          </AspectLabel>
          <AspectExplanation>
            { t("ratings.contextExplanation.diversity") }
          </AspectExplanation>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="renewable" />
            {" " + t("ratings.contextName.renewable")}
          </AspectLabel>
          <AspectExplanation>
            { t("ratings.contextExplanation.renewable") }
          </AspectExplanation>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="fairness" />
            {" " + t("ratings.contextName.fairness")}
          </AspectLabel>
          <AspectExplanation>
            { t("ratings.contextExplanation.fairness") }
          </AspectExplanation>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="humanity" />
            {" " + t("ratings.contextName.humanity")}
          </AspectLabel>
          <AspectExplanation>
            { t("ratings.contextExplanation.humanity") }
          </AspectExplanation>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="solidarity" />
            {" " + t("ratings.contextName.solidarity")}
          </AspectLabel>
          <AspectExplanation>
            { t("ratings.contextExplanation.solidarity") }
          </AspectExplanation>
          <AspectLabel>
            <Field name="context" className="radio-button" component="input" type="radio" value="transparency" />
            {" " + t("ratings.contextName.transparency")}
          </AspectLabel>
          <AspectExplanation>
            { t("ratings.contextExplanation.transparency") }
          </AspectExplanation>
          <Field name="context" component={errorMessage} />
        </fieldset>
        <fieldset>
          <Field name="title" className="pure-input-1" type="text" component="input" placeholder={t("title")} />
          <Field name="title" component={errorMessage} />
        </fieldset>
        <fieldset>
          <Field name="comment" className="pure-input-1" component="textarea" placeholder={t("comment")} />
          <Field name="comment" component={errorMessage} />
        </fieldset>
        <fieldset>
          <Field name="source" className="pure-input-1" type="text" component="input" placeholder={t("reference")} />
        </fieldset>
        <p className="form-heading">{t("ratings.rating")}:</p>
        <fieldset>
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="2" />
            {" " + t("ratings.valueName.minusOne") + " (" + t("ratings.valueNameExplanation.minusOne") + ")"}
          </label><br />
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="1" />
            {" " + t("ratings.valueName.zero") + " (" + t("ratings.valueNameExplanation.zero") + ")"}
          </label><br/>
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="0" />
            {" " + t("ratings.valueName.one") + " (" + t("ratings.valueNameExplanation.one") + ")"}
          </label><br />
          <label>
            <Field name="value" className="radio-button" component="input" type="radio" value="-1" />
            {" " + t("ratings.valueName.two") + " (" + t("ratings.valueNameExplanation.two") + ")"}
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
})(translate("translation")(RatingForm))