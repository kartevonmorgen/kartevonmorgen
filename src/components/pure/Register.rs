// TODO: import React                from "react"
// TODO: import { reduxForm, Field } from "redux-form"
// TODO: import i18n                 from "i18next";
// TODO: import validation           from "../../util/validation"
// TODO: import normalize            from "../../util/normalize";
// TODO: import { REGISTER }         from "../../constants/Form";
// TODO: import styled               from "styled-components";
// TODO: 
// TODO: const errorMessage = ({meta}) =>
// TODO:   meta.error && meta.touched
// TODO:     ? <div className="err">{meta.error}</div>
// TODO:     : null
// TODO: 
// TODO: const Register = props => {
// TODO: 
// TODO:   const { error, submitting, handleSubmit, onLogin } = props;
// TODO:   const t = (key) => {
// TODO:     return i18n.t("register." + key);
// TODO:   }
// TODO: 
// TODO:   return (
// TODO:   <form
// TODO:     className = "register pure-form pure-form-stacked"
// TODO:     action    = 'javascript:void(0);'
// TODO:     onSubmit  = { handleSubmit } >
// TODO: 
// TODO:     <h3>{t("heading")}</h3>
// TODO:     { error &&
// TODO:       <div className= "err">
// TODO:         {t("genericError")}
// TODO:       </div>
// TODO:     }
// TODO:     <div className= "pure-form">
// TODO:       <Fieldset>
// TODO:         <StyledField
// TODO:           name="email"
// TODO:           className="pure-input-1"
// TODO:           type="email"
// TODO:           component="input"
// TODO:           required={true}
// TODO:           placeholder={t("email")} />
// TODO:         <StyledField name="email" component={errorMessage} />
// TODO:         <StyledField name="password" className="pure-input-1" type="password" component="input" required={true} placeholder={t("password1")} />
// TODO:         <StyledField name="password" component={errorMessage} />
// TODO:         <StyledField name="password2" className="pure-input-1" type="password" component="input" required={true} placeholder={t("password2")} />
// TODO:         <StyledField name="password2" component={errorMessage} />
// TODO:         <SubmitButton type="submit" className="pure-button pure-button-primary" disabled={submitting}>{t("submitButton")}</SubmitButton>
// TODO:       </Fieldset>
// TODO:       <p>
// TODO:         {t("loginText")} <a onClick={onLogin} href="#">{t("loginLink")}</a>.
// TODO:       </p>
// TODO:     </div>
// TODO:   </form>)
// TODO: }
// TODO: 
// TODO: const Fieldset = styled.fieldset`
// TODO:   margin: 20px auto !important;
// TODO:   max-width: 300px !important;
// TODO: `
// TODO: 
// TODO: const StyledField = styled(Field)`
// TODO:   margin: 20px 0 !important;
// TODO: `
// TODO: 
// TODO: const SubmitButton = styled.button`
// TODO:   margin-top: 15px !important;
// TODO:   margin-bottom: 40px !important;
// TODO:   padding: 12px 30px !important;
// TODO: `
// TODO: 
// TODO: module.exports = reduxForm({
// TODO:   form      : REGISTER.id,
// TODO:   validate : validation.registerForm
// TODO: })(Register)
