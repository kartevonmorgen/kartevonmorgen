import React, { Component } from "react"
import { reduxForm, Field } from "redux-form"
import validation           from "../util/validation"
import { LOGIN            } from "../constants/Form"
import { translate        } from "react-i18next"

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

const Login = (props) => {

  const { error, submitting, handleSubmit, onRegister } = props;
  const t = (key) => {
    return props.t("login." + key);
  }

  let error_message = "";
  if(error){
    switch(error.message){
      case "Unauthorized":
        error_message = t("invalidPasswordOrUsername");
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
      <fieldset>
        <Field name="username" className="pure-input-1" type="text" component="input" required={true} placeholder={t("username")} />
        <Field name="username" component={errorMessage} />
        <Field name="password" className="pure-input-1" type="password" component="input" required={true} placeholder={t("password")} />
        <Field name="password" component={errorMessage} />
        <button type="submit" className="pure-button pure-button-primary" disabled={submitting}>{t("loginButton")}</button>
      </fieldset>
      <p>
        {t("registerText")} <a onClick={onRegister} href="#">{t("registerLink")}</a>
      </p>
    </div>
  </form>)
}

module.exports = reduxForm({
  form     : LOGIN.id,
  validate : validation.loginForm
})(translate("translation")(Login))
