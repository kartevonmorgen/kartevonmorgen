import React                            from "react";
import { reduxForm, Field }             from "redux-form";
import styled                           from "styled-components";
import { translate }                    from "react-i18next";

import { RATING }                       from "../../constants/Form";
import validation                       from "../../util/validation";
import NavButton                        from "./NavButton";
import STYLE                            from "../styling/Variables";
import ScrollableDiv                    from "./ScrollableDiv";
import NavButtonWrapper                 from "./NavButtonWrapper";

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

const IntroText = styled.div`
  margin-bottom: 10px;
  color: ${STYLE.darkGray};
`

const Aspect = styled.div`
  margin: 10px 0;
`

const AspectLabel = styled.label`
  font-weight: 500 !important;
`

const AspectExplanation = styled.div`
  margin-top: 5px;
  color: ${STYLE.darkGray};
`

const Form = styled.form`
  margin: 1.8em;
`

const RatingFormWrapper = styled.div`
  display: flex;
  flex-direction: column;
  height: 100%;
`

const StyledScrollableDiv = styled(ScrollableDiv)`
  flex-grow: 1;
`

const StyledNavButtonWrapper = styled(NavButtonWrapper)`
  height: auto;
`

const RatingForm = props => {

  const {
    entryId,
    entryTitle,
    contextToExplain,
    changeContext,
    selectedContext,
    t,
    onCancel
  } = props;

  return (
    <RatingFormWrapper>
      <StyledScrollableDiv>
        <Form
          className = "new-rating-form"
          action    = 'javascript:void();' >

          <h3>{ t("ratingForm.newRatingFor") + " " + entryTitle}</h3>
          <IntroText>
            { t("ratingForm.introText") + " "}
            <a href="http://bildungsagenten.org/kartevonmorgen/2/">
            { t("ratingForm.moreInfoLink") }
            </a>
          </IntroText>
          { props.error &&
            <div className= "err">
              {t("ratingForm.savingError") + ":" + props.error.message}
            </div>
          }
          { (!props.error) && props.submitFailed &&
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
        </Form>
      </StyledScrollableDiv>
      <StyledNavButtonWrapper className="menu pure-g">
        <NavButton
          keyName = "cancel"
          classname = "pure-u-1-2"
          onClick = { onCancel }
          icon = "ban"
          text = { t("ratingForm.cancel") }
        />
        <NavButton
          keyName = "save"
          classname = "pure-u-1-2"
          onClick = { () => {
            props.handleSubmit();
          }}
          icon = "save"
          text = { t("ratingForm.save") }
        />
      </StyledNavButtonWrapper>
    </RatingFormWrapper>)
}

export default reduxForm({
  validate  : validation.ratingForm,
  form      : "rating"
})(translate("translation")(RatingForm))
