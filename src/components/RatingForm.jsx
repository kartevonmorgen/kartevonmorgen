import React, { Component } from "react";
import { reduxForm, Field, initialize } from "redux-form";
import { RATING             } from "../constants/Form";
import validation           from "../util/validation";
import styled               from "styled-components";
import { translate }        from "react-i18next";
import NavButton            from "./NavButton";
import Actions              from "../Actions";
import COLORS               from "./styling/Colors";


const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

const IntroText = styled.div`
  margin-bottom: 10px;
  color: ${COLORS.darkGray};
`

const Aspect = styled.div`
  margin: 10px 0;
`

const AspectLabel = styled.label`
  font-weight: bold;
`

const AspectExplanation = styled.div`
  margin-top: 5px;
  color: ${COLORS.darkGray};
`

class RatingForm extends Component {

  render() {

    const { entryId, entryTitle, contextToExplain,
      changeContext, selectedContext, t } = this.props;

    return (
    <div>
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
            <Aspect>
              <Aspect>
                <AspectLabel>
                  <Field name="context" className="radio-button" component="input" type="radio" value="diversity" />
                  {" " + t("ratings.contextName.diversity")}
                </AspectLabel>
                <AspectExplanation>
                  { t("ratings.contextExplanation.diversity") }
                </AspectExplanation>
              </Aspect>
            </Aspect>
            <Aspect>
              <AspectLabel>
                <Field name="context" className="radio-button" component="input" type="radio" value="renewable" />
                {" " + t("ratings.contextName.renewable")}
              </AspectLabel>
              <AspectExplanation>
                { t("ratings.contextExplanation.renewable") }
              </AspectExplanation>
            </Aspect>
            <Aspect>
              <AspectLabel>
                <Field name="context" className="radio-button" component="input" type="radio" value="fairness" />
                {" " + t("ratings.contextName.fairness")}
              </AspectLabel>
              <AspectExplanation>
                { t("ratings.contextExplanation.fairness") }
              </AspectExplanation>
            </Aspect>
            <Aspect>
              <AspectLabel>
                <Field name="context" className="radio-button" component="input" type="radio" value="humanity" />
                {" " + t("ratings.contextName.humanity")}
              </AspectLabel>
              <AspectExplanation>
                { t("ratings.contextExplanation.humanity") }
              </AspectExplanation>
            </Aspect>
            <Aspect>
              <AspectLabel>
                <Field name="context" className="radio-button" component="input" type="radio" value="solidarity" />
                {" " + t("ratings.contextName.solidarity")}
              </AspectLabel>
              <AspectExplanation>
                { t("ratings.contextExplanation.solidarity") }
              </AspectExplanation>
            </Aspect>
            <Aspect>
              <AspectLabel>
                <Field name="context" className="radio-button" component="input" type="radio" value="transparency" />
                {" " + t("ratings.contextName.transparency")}
              </AspectLabel>
              <AspectExplanation>
                { t("ratings.contextExplanation.transparency") }
              </AspectExplanation>
            </Aspect>
            <Field name="context" component={errorMessage} />
          </fieldset>
          <fieldset>
            <Field name="title" className="pure-input-1" type="text" component="input" placeholder={t("ratingForm.title")} />
            <Field name="title" component={errorMessage} />
          </fieldset>
          <fieldset>
            <Field name="comment" className="pure-input-1" component="textarea" placeholder={t("ratingForm.comment")} />
            <Field name="comment" component={errorMessage} />
          </fieldset>
          <fieldset>
            <Field name="source" className="pure-input-1" type="text" component="input" placeholder={t("ratingForm.reference")} />
          </fieldset>
          <p className="form-heading">{t("ratings.rating-heading")}:</p>
          <fieldset>
            <label>
              <Field name="value" className="radio-button" component="input" type="radio" value="2" />
              {" " + t("ratings.valueName.two") + " (" + t("ratings.valueNameExplanation.two") + ")"}
            </label><br />
            <label>
              <Field name="value" className="radio-button" component="input" type="radio" value="1" />
              {" " + t("ratings.valueName.one") + " (" + t("ratings.valueNameExplanation.one") + ")"}
            </label><br/>
            <label>
              <Field name="value" className="radio-button" component="input" type="radio" value="0" />
              {" " + t("ratings.valueName.zero") + " (" + t("ratings.valueNameExplanation.zero") + ")"}
            </label><br />
            <label>
              <Field name="value" className="radio-button" component="input" type="radio" value="-1" />
              {" " + t("ratings.valueName.minusOne") + " (" + t("ratings.valueNameExplanation.minusOne") + ")"}
            </label>
            <Field name="value" component={errorMessage} />
          </fieldset>
        </div>
      </form>
      <nav className="menu pure-g">
        <NavButton
          keyName = "cancel"
          classname = "pure-u-1-2"
          onClick = {() => {
            this.props.dispatch(initialize(RATING.id, {}, RATING.fields));
            this.props.dispatch(Actions.cancelRating());
          }}
          icon = "fa fa-ban"
          text = { t("ratingForm.cancel") }
        />
        <NavButton
          keyName = "save"
          classname = "pure-u-1-2"
          onClick = { () => {
            this.props.handleSubmit();
          }}
          icon = "fa fa-floppy-o"
          text = { t("ratingForm.save") }
        />
      </nav>
    </div>)
  }
}

module.exports = reduxForm({
  validate  : validation.ratingForm,
  form      : "rating"
})(translate("translation")(RatingForm))