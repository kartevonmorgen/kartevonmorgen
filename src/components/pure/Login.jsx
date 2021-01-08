import React                from "react"
import { reduxForm, Field } from "redux-form"
import styled               from "styled-components"
import validation           from "../../util/validation"
import { LOGIN            } from "../../constants/Form"
import i18n                 from "../../i18n"

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

const Login = (props) => {

  const { error, submitting, handleSubmit, onRegister } = props;
  const t = (key) => {
    return i18n.t("login." + key);
  }

  let error_message = "";
  if(error){
    switch(error.message){
      case "Unauthorized":
        error_message = t("invalidPasswordOrEmail");
        break;
      case "Forbidden":
        error_message = t("emailUnconfirmed");
        break;
      default:
        error_message = error.message;
    }
  }

  return (
  <form
    className = "login pure-form pure-form-stacked"
    action    = 'javascript:void(0);'
    onSubmit  = { handleSubmit } >

    <h3>Login</h3>
    { error &&
      <div className= "err">
        {t("loginFailed") + ": " + error_message}
      </div>
    }
    <div>
      <Fieldset>
        <StyledField
          name="email"
          className="pure-input-1"
          type="text"
          component="input"
          required={true}
          placeholder={t("email")}
        />
        <StyledField
          name="email"
          component={errorMessage}
        />
        <StyledField
          name="password"
          className="pure-input-1"
          type="password"
          component="input"
          required={true}
          placeholder={t("password")}
        />
        <StyledField
          name="password"
          component={errorMessage}
        />
        <SubmitButton
          type="submit"
          className="pure-button pure-button-primary"
          disabled={submitting}>
          {t("loginButton")}
        </SubmitButton>
      </Fieldset>
      <p>
        {t("registerText") + " "}
        <a
          onClick={ onRegister }
          href="#">{ t("registerLink") }
        </a>
      </p>
       <p>
          {t("passwordResetText") + " "}
          <a href="https://openfairdb.org/reset-password" target="__blank">
            {t("passwordResetLink")}
          </a>
        </p>
    </div>
  </form>)
}

const Fieldset = styled.fieldset`
  margin: 20px auto !important;
  max-width: 300px !important;
`

const StyledField = styled(Field)`
  margin: 20px 0 !important;
`

const SubmitButton = styled.button`
  margin-top: 15px !important;
  margin-bottom: 40px !important;
  padding: 12px 30px !important;
`

export default reduxForm({
  form     : LOGIN.id,
  validate : validation.loginForm
})(Login)
