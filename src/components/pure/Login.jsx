import React                from "react"
import { reduxForm, Field } from "redux-form"
import validation           from "../../util/validation"
import { LOGIN            } from "../../constants/Form"
import i18n                 from "../../i18n";

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
        error_message = i18n.t("invalidPasswordOrUsername");
        break;
      case "Forbidden":
        error_message = i18n.t("emailUnconfirmed");
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
        {i18n.t("loginFailed") + ": " + error_message}
      </div>
    }
    <div>
      <fieldset>
        <Field
          name="username"
          className="pure-input-1"
          type="text"
          component="input"
          required={true}
          placeholder={i18n.t("username")}
        />
        <Field
          name="username"
          component={errorMessage}
        />
        <Field
          name="password"
          className="pure-input-1"
          type="password"
          component="input"
          required={true}
          placeholder={i18n.t("password")}
        />
        <Field
          name="password"
          component={errorMessage}
        />
        <button
          type="submit"
          className="pure-button pure-button-primary"
          disabled={submitting}>
          {i18n.t("loginButton")}
        </button>
      </fieldset>
      <p>
        {i18n.t("registerText")}
        <a
          onClick={ onRegister }
          href="#">{ i18n.t("registerLink") }
        </a>
      </p>
    </div>
  </form>)
}

module.exports = reduxForm({
  form     : LOGIN.id,
  validate : validation.loginForm
})(Login)
