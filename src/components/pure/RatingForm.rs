// TODO: import React                            from "react";
// TODO: import { reduxForm, Field }             from "redux-form";
// TODO: import styled                           from "styled-components";
// TODO: import { translate }                    from "react-i18next";
// TODO: 
// TODO: import { RATING }                       from "../../constants/Form";
// TODO: import validation                       from "../../util/validation";
// TODO: import NavButton                        from "./NavButton";
// TODO: import STYLE                            from "../styling/Variables";
// TODO: import ScrollableDiv                    from "./ScrollableDiv";
// TODO: import NavButtonWrapper                 from "./NavButtonWrapper";
// TODO: 
// TODO: const errorMessage = ({meta}) =>
// TODO:   meta.error && meta.touched
// TODO:     ? <div className="err">{meta.error}</div>
// TODO:     : null
// TODO: 
// TODO: const IntroText = styled.div`
// TODO:   margin-bottom: 10px;
// TODO:   color: ${STYLE.darkGray};
// TODO: `
// TODO: 
// TODO: const Aspect = styled.div`
// TODO:   margin: 10px 0;
// TODO: `
// TODO: 
// TODO: const AspectLabel = styled.label`
// TODO:   font-weight: bold;
// TODO: `
// TODO: 
// TODO: const AspectExplanation = styled.div`
// TODO:   margin-top: 5px;
// TODO:   color: ${STYLE.darkGray};
// TODO: `
// TODO: 
// TODO: const Form = styled.form`
// TODO:   margin: 1.8em;
// TODO: `
// TODO: 
// TODO: const RatingFormWrapper = styled.div`
// TODO:   display: flex;
// TODO:   flex-direction: column;
// TODO:   height: 100%;
// TODO: `
// TODO: 
// TODO: const StyledScrollableDiv = styled(ScrollableDiv)`
// TODO:   flex-grow: 1;
// TODO: `
// TODO: 
// TODO: const StyledNavButtonWrapper = styled(NavButtonWrapper)`
// TODO:   height: 68px;
// TODO: `
// TODO: 
// TODO: const RatingForm = props => {
// TODO: 
// TODO:   const {
// TODO:     entryId,
// TODO:     entryTitle,
// TODO:     contextToExplain,
// TODO:     changeContext,
// TODO:     selectedContext,
// TODO:     t,
// TODO:     onCancel
// TODO:   } = props;
// TODO: 
// TODO:   return (
// TODO:     <RatingFormWrapper>
// TODO:       <StyledScrollableDiv>
// TODO:         <Form
// TODO:           className = "new-rating-form"
// TODO:           action    = 'javascript:void();' >
// TODO: 
// TODO:           <h3>{ t("ratingForm.newRatingFor") + " " + entryTitle}</h3>
// TODO:           <IntroText>
// TODO:             { t("ratingForm.introText") + " "}
// TODO:             <a href="http://bildungsagenten.org/kartevonmorgen/2/">
// TODO:             { t("ratingForm.moreInfoLink") }
// TODO:             </a>
// TODO:           </IntroText>
// TODO:           { props.error &&
// TODO:             <div className= "err">
// TODO:               {t("ratingForm.savingError") + ":" + props.error.message}
// TODO:             </div>
// TODO:           }
// TODO:           { (!props.error) && props.submitFailed &&
// TODO:             <div className="err">{t("ratingForm.valuesError")}
// TODO:               <Field name="license" component={errorMessage} />
// TODO:             </div>
// TODO:           }
// TODO:           <div>
// TODO:             {t("ratingForm.chooseContext") + ": "}
// TODO:           </div>
// TODO:           <div className= "pure-form">
// TODO:             <fieldset>
// TODO:               <Aspect>
// TODO:                 <Aspect>
// TODO:                   <AspectLabel>
// TODO:                     <Field name="context" className="radio-button" component="input" type="radio" value="diversity" />
// TODO:                     {" " + t("ratings.contextName.diversity")}
// TODO:                   </AspectLabel>
// TODO:                   <AspectExplanation>
// TODO:                     { t("ratings.contextExplanation.diversity") }
// TODO:                   </AspectExplanation>
// TODO:                 </Aspect>
// TODO:               </Aspect>
// TODO:               <Aspect>
// TODO:                 <AspectLabel>
// TODO:                   <Field name="context" className="radio-button" component="input" type="radio" value="renewable" />
// TODO:                   {" " + t("ratings.contextName.renewable")}
// TODO:                 </AspectLabel>
// TODO:                 <AspectExplanation>
// TODO:                   { t("ratings.contextExplanation.renewable") }
// TODO:                 </AspectExplanation>
// TODO:               </Aspect>
// TODO:               <Aspect>
// TODO:                 <AspectLabel>
// TODO:                   <Field name="context" className="radio-button" component="input" type="radio" value="fairness" />
// TODO:                   {" " + t("ratings.contextName.fairness")}
// TODO:                 </AspectLabel>
// TODO:                 <AspectExplanation>
// TODO:                   { t("ratings.contextExplanation.fairness") }
// TODO:                 </AspectExplanation>
// TODO:               </Aspect>
// TODO:               <Aspect>
// TODO:                 <AspectLabel>
// TODO:                   <Field name="context" className="radio-button" component="input" type="radio" value="humanity" />
// TODO:                   {" " + t("ratings.contextName.humanity")}
// TODO:                 </AspectLabel>
// TODO:                 <AspectExplanation>
// TODO:                   { t("ratings.contextExplanation.humanity") }
// TODO:                 </AspectExplanation>
// TODO:               </Aspect>
// TODO:               <Aspect>
// TODO:                 <AspectLabel>
// TODO:                   <Field name="context" className="radio-button" component="input" type="radio" value="solidarity" />
// TODO:                   {" " + t("ratings.contextName.solidarity")}
// TODO:                 </AspectLabel>
// TODO:                 <AspectExplanation>
// TODO:                   { t("ratings.contextExplanation.solidarity") }
// TODO:                 </AspectExplanation>
// TODO:               </Aspect>
// TODO:               <Aspect>
// TODO:                 <AspectLabel>
// TODO:                   <Field name="context" className="radio-button" component="input" type="radio" value="transparency" />
// TODO:                   {" " + t("ratings.contextName.transparency")}
// TODO:                 </AspectLabel>
// TODO:                 <AspectExplanation>
// TODO:                   { t("ratings.contextExplanation.transparency") }
// TODO:                 </AspectExplanation>
// TODO:               </Aspect>
// TODO:               <Field name="context" component={errorMessage} />
// TODO:             </fieldset>
// TODO:             <fieldset>
// TODO:               <Field name="title" className="pure-input-1" type="text" component="input" placeholder={t("ratingForm.title")} />
// TODO:               <Field name="title" component={errorMessage} />
// TODO:             </fieldset>
// TODO:             <fieldset>
// TODO:               <Field name="comment" className="pure-input-1" component="textarea" placeholder={t("ratingForm.comment")} />
// TODO:               <Field name="comment" component={errorMessage} />
// TODO:             </fieldset>
// TODO:             <fieldset>
// TODO:               <Field name="source" className="pure-input-1" type="text" component="input" placeholder={t("ratingForm.reference")} />
// TODO:             </fieldset>
// TODO:             <p className="form-heading">{t("ratings.rating-heading")}:</p>
// TODO:             <fieldset>
// TODO:               <label>
// TODO:                 <Field name="value" className="radio-button" component="input" type="radio" value="2" />
// TODO:                 {" " + t("ratings.valueName.two") + " (" + t("ratings.valueNameExplanation.two") + ")"}
// TODO:               </label><br />
// TODO:               <label>
// TODO:                 <Field name="value" className="radio-button" component="input" type="radio" value="1" />
// TODO:                 {" " + t("ratings.valueName.one") + " (" + t("ratings.valueNameExplanation.one") + ")"}
// TODO:               </label><br/>
// TODO:               <label>
// TODO:                 <Field name="value" className="radio-button" component="input" type="radio" value="0" />
// TODO:                 {" " + t("ratings.valueName.zero") + " (" + t("ratings.valueNameExplanation.zero") + ")"}
// TODO:               </label><br />
// TODO:               <label>
// TODO:                 <Field name="value" className="radio-button" component="input" type="radio" value="-1" />
// TODO:                 {" " + t("ratings.valueName.minusOne") + " (" + t("ratings.valueNameExplanation.minusOne") + ")"}
// TODO:               </label>
// TODO:               <Field name="value" component={errorMessage} />
// TODO:             </fieldset>
// TODO:           </div>
// TODO:         </Form>
// TODO:       </StyledScrollableDiv>
// TODO:       <StyledNavButtonWrapper className="menu pure-g">
// TODO:         <NavButton
// TODO:           keyName = "cancel"
// TODO:           classname = "pure-u-1-2"
// TODO:           onClick = { onCancel }
// TODO:           icon = "ban"
// TODO:           text = { t("ratingForm.cancel") }
// TODO:         />
// TODO:         <NavButton
// TODO:           keyName = "save"
// TODO:           classname = "pure-u-1-2"
// TODO:           onClick = { () => {
// TODO:             props.handleSubmit();
// TODO:           }}
// TODO:           icon = "save"
// TODO:           text = { t("ratingForm.save") }
// TODO:         />
// TODO:       </StyledNavButtonWrapper>
// TODO:     </RatingFormWrapper>)
// TODO: }
// TODO: 
// TODO: module.exports = reduxForm({
// TODO:   validate  : validation.ratingForm,
// TODO:   form      : "rating"
// TODO: })(translate("translation")(RatingForm))
