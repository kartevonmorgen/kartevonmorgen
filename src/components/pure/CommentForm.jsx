import React                            from "react";
import { reduxForm, Field }             from "redux-form";
import styled                           from "styled-components";
import { translate }                    from "react-i18next";

import Rating                           from "./Rating";
import { RATING }                       from "../../constants/Form";
import validation                       from "../../util/validation";
import NavButton                        from "./NavButton";
import STYLE                            from "../styling/Variables";
import ScrollableDiv                    from "./ScrollableDiv";
import NavButtonWrapper                 from "./NavButtonWrapper";

class CommentForm extends React.Component {

// New comments get the parent's title in a fixed manner
componentWillMount() {
  this.setState((state, props) => {
    return {title: props.ratingList[0].title};
  });
}

render() {
  const {
    entryId,
    entryTitle,
    ratingContext,
    ratingList,
    t,
    onCancel
  } = this.props;

  return (
    <CommentFormWrapper>
      <StyledScrollableDiv>
        <Form
          className = "new-rating-form"
          action    = 'javascript:void();' >

          <h3>{ t("commentForm.newCommentFor") + " " + entryTitle }</h3>
          <IntroText>
            { t("ratingForm.introText") + " "}
            <a href="http://bildungsagenten.org/kartevonmorgen/2/">
            { t("ratingForm.moreInfoLink") }
            </a>
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
            {t("commentForm.chooseContext") + ": "}
          </div>
          <Aspect>
            <AspectLabel>
              { t("ratings.contextName." + ratingContext) }
            </AspectLabel>
            <RatingTopicWrapper>
              { ratingList.map( (rating, index) =>
                <li key={rating.id}>
                  {Rating(rating, t, {hideSource: false, hideTitle: (index!=0)} )}
                </li>
              ) }
            </RatingTopicWrapper>
          </Aspect>
          <div className= "pure-form">
            <HiddenField>
              <Field name="title" component="input" type="text" props={{value: this.state.title, autoFocus: true}} autofocus='true' />
            </HiddenField>
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
            this.props.handleSubmit();
          }}
          icon = "save"
          text = { t("commentForm.save") }
        />
      </StyledNavButtonWrapper>
    </CommentFormWrapper>)
}
}


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
  font-weight: bold;
`

const RatingTopicWrapper = styled.ul`
  margin-left: 0.5em;
  margin-top: 0.6em;
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;

  & li:not(:first-child) {
    border-left: solid 0.3em #d8d8d8;
    padding-left: 1.1em;
    margin-left: 1.1em;
    margin-top: 0.5em;
    border-bottom: solid 1px #d8d8d8;
  }
`

const HiddenField = styled.label`
  .pure-form &,
  .pure-form & > input {
    margin: 0;
    padding: 0;
    border: 0;
    height: 0;
    display: block;
  }
`

const Form = styled.form`
  margin: 1.8em;
`

const CommentFormWrapper = styled.div`
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


export default reduxForm({
  validate  : validation.ratingForm,
  form      : "comment"
})(translate("translation")(CommentForm))
