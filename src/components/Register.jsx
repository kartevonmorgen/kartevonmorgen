import React, { Component } from "react"
import { reduxForm, Field } from "redux-form"
import validation           from "../util/validation"
import normalize            from "../util/normalize";
import { REGISTER }         from "../constants/Form";
import i18n                 from "i18next";

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

const Register = (props) => {

  const { error, submitting, handleSubmit, onLogin } = props;
  const t = (key) => {
    return i18n.t("register." + key);
  }

  return (
  <form
    className = "register pure-form pure-form-stacked"
    action    = 'javascript:void(0);'
    onSubmit  = { handleSubmit } >

    <h3>{t("heading")}</h3>
    { error &&
      <div className= "err">
        {t("genericError")}
      </div>
    }
    <div className= "pure-form">
      <fieldset>
        <Field
          name="username"
          className="pure-input-1"
          type="text"
          component="input"
          required={true}
          placeholder={t("username")}
          normalize={normalize.username} />
        <Field name="username" component={errorMessage} />
        <Field name="email" className="pure-input-1" type="email" component="input" required={true} placeholder={t("email")} />
        <Field name="email" component={errorMessage} />
        <Field name="password" className="pure-input-1" type="password" component="input" required={true} placeholder={t("password1")} />
        <Field name="password" component={errorMessage} />
        <Field name="password2" className="pure-input-1" type="password" component="input" required={true} placeholder={t("password2")} />
        <Field name="password2" component={errorMessage} />
        <button type="submit" className="pure-button pure-button-primary" disabled={submitting}>{t("submitButton")}</button>
      </fieldset>
      <p>
        {t("loginText")} <a onClick={onLogin} href="#">{t("loginLink")}</a>.
      </p>
    </div>
  </form>)
}

module.exports = reduxForm({
  form      : REGISTER.id,
  validate : validation.registerForm
})(Register)
