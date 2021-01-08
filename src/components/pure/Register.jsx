import React                from "react"
import { reduxForm, Field } from "redux-form"
import i18n                 from "i18next";
import validation           from "../../util/validation"
import normalize            from "../../util/normalize";
import { REGISTER }         from "../../constants/Form";
import styled               from "styled-components";

const errorMessage = ({meta}) =>
  meta.error && meta.touched
    ? <div className="err">{meta.error}</div>
    : null

const Register = props => {

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
      <Fieldset>
        <StyledField
          name="email"
          className="pure-input-1"
          type="email"
          component="input"
          required={true}
          placeholder={t("email")} />
        <StyledField name="email" component={errorMessage} />
        <StyledField name="password" className="pure-input-1" type="password" component="input" required={true} placeholder={t("password1")} />
        <StyledField name="password" component={errorMessage} />
        <StyledField name="password2" className="pure-input-1" type="password" component="input" required={true} placeholder={t("password2")} />
        <StyledField name="password2" component={errorMessage} />
        <SubmitButton type="submit" className="pure-button pure-button-primary" disabled={submitting}>{t("submitButton")}</SubmitButton>
      </Fieldset>
      <p>
        {t("loginText")} <a onClick={onLogin} href="#">{t("loginLink")}</a>.
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
  form     : REGISTER.id,
  validate : validation.registerForm
})(Register)
