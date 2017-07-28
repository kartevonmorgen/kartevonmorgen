import React, { Component } from "react"
import { reduxForm, Field } from "redux-form"
import validation           from "../util/validation"
import { LOGIN             } from "../constants/Form"

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

const Login = (props) => {

  const { error, submitting, handleSubmit, onRegister } = props;
  let error_message = error ? error.message : "";
  if(error){
    switch(error.message){
      case "Unauthorized":
        error_message = "falsches Passwort oder falscher Benutzername."
      case "Forbidden":
        error_message = "Email-Adresse noch nicht bestätigt. Bitte schaue in deinem Postfach nach, möglicherweise auch im Spam-Ordner."
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
        Der Login ist fehlgeschlagen: {error_message} 
      </div>
    }
    <div>
      <fieldset>
        <Field name="username" className="pure-input-1" type="text" component="input" required={true} placeholder="Benutzername" />
        <Field name="username" component={errorMessage} />
        <Field name="password" className="pure-input-1" type="password" component="input" required={true} placeholder="Password" />
        <Field name="password" component={errorMessage} />
        <button type="submit" className="pure-button pure-button-primary" disabled={submitting}>Log In</button>
      </fieldset>
      <p>
        Du hast noch keinen Account? Dann kannst du dich <a onClick={onRegister} href="#">hier kostenlos registrieren</a>.
      </p>
    </div>
  </form>)
}

module.exports = reduxForm({
  form     : LOGIN.id,
  validate : validation.loginForm
})(Login)
