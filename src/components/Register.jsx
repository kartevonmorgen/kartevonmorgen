import React, { Component } from "react"
import { reduxForm, Field } from "redux-form"
import validation           from "../util/validation"
import normalize            from "../util/normalize";

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

const Register = (props) => {

  const { error, submitting, handleSubmit, onLogin } = props;

  return (
  <form
    className = "register pure-form pure-form-stacked"
    action    = 'javascript:void(0);'
    onSubmit  = { handleSubmit } >

    <h3>Registrieren</h3>
    { error &&
      <div className= "err">
        Die Registrierung ist fehlgeschlagen: {error.message}
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
          placeholder="Benutzername"
          normalize={normalize.username} />
        <Field name="username" component={errorMessage} />
        <Field name="email" className="pure-input-1" type="email" component="input" required={true} placeholder="eMail" />
        <Field name="email" component={errorMessage} />
        <Field name="password" className="pure-input-1" type="password" component="input" required={true} placeholder="Password" />
        <Field name="password" component={errorMessage} />
        <button type="submit" className="pure-button pure-button-primary" disabled={submitting}>Registrieren</button>
      </fieldset>
      <p>
        Du hast schon einen Account? Dann kannst du dich <a onClick={onLogin} href="#">hier einloggen</a>.
      </p>
    </div>
  </form>)
}

module.exports = reduxForm({
  form      : "register",
  validate : validation.registerForm
})(Register)
