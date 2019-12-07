// TODO: import React                from "react"
// TODO: import { reduxForm, Field } from "redux-form"
// TODO: import styled               from "styled-components"
// TODO: import validation           from "../../util/validation"
// TODO: import { LOGIN            } from "../../constants/Form"
// TODO: import i18n                 from "../../i18n"
// TODO:
// TODO: const errorMessage = ({meta}) =>
// TODO:   meta.error && meta.touched
// TODO:     ? <div className="err">{meta.error}</div>
// TODO:     : null
// TODO:
// TODO: const Login = (props) => {
// TODO:
// TODO:   const { error, submitting, handleSubmit, onRegister } = props;
// TODO:   const t = (key) => {
// TODO:     return i18n.t("login." + key);
// TODO:   }
// TODO:
// TODO:   let error_message = "";
// TODO:   if(error){
// TODO:     switch(error.message){
// TODO:       case "Unauthorized":
// TODO:         error_message = t("invalidPasswordOrEmail");
// TODO:         break;
// TODO:       case "Forbidden":
// TODO:         error_message = t("emailUnconfirmed");
// TODO:         break;
// TODO:       default:
// TODO:         error_message = error.message;
// TODO:     }
// TODO:   }
// TODO:
// TODO:   return (
// TODO:   <form
// TODO:     className = "login pure-form pure-form-stacked"
// TODO:     action    = 'javascript:void(0);'
// TODO:     onSubmit  = { handleSubmit } >
// TODO:
// TODO:     <h3>Login</h3>
// TODO:     { error &&
// TODO:       <div className= "err">
// TODO:         {t("loginFailed") + ": " + error_message}
// TODO:       </div>
// TODO:     }
// TODO:     <div>
// TODO:       <Fieldset>
// TODO:         <StyledField
// TODO:           name="email"
// TODO:           className="pure-input-1"
// TODO:           type="text"
// TODO:           component="input"
// TODO:           required={true}
// TODO:           placeholder={t("email")}
// TODO:         />
// TODO:         <StyledField
// TODO:           name="email"
// TODO:           component={errorMessage}
// TODO:         />
// TODO:         <StyledField
// TODO:           name="password"
// TODO:           className="pure-input-1"
// TODO:           type="password"
// TODO:           component="input"
// TODO:           required={true}
// TODO:           placeholder={t("password")}
// TODO:         />
// TODO:         <StyledField
// TODO:           name="password"
// TODO:           component={errorMessage}
// TODO:         />
// TODO:         <SubmitButton
// TODO:           type="submit"
// TODO:           className="pure-button pure-button-primary"
// TODO:           disabled={submitting}>
// TODO:           {t("loginButton")}
// TODO:         </SubmitButton>
// TODO:       </Fieldset>
// TODO:       <p>
// TODO:         {t("registerText") + " "}
// TODO:         <a
// TODO:           onClick={ onRegister }
// TODO:           href="#">{ t("registerLink") }
// TODO:         </a>
// TODO:       </p>
// TODO:        <p>
// TODO:           {t("passwordResetText") + " "}
// TODO:           <a href="https://openfairdb.org/reset-password" target="__blank">
// TODO:             {t("passwordResetLink")}
// TODO:           </a>
// TODO:         </p>
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
// TODO:   form     : LOGIN.id,
// TODO:   validate : validation.loginForm
// TODO: })(Login)
