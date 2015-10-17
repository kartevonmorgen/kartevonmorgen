# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React       = require "react"
T           = React.PropTypes
udeep       = require "updeep"
validation  = require "../util/validation"

{ IDS } = require "../constants/Categories"

{ connectReduxForm } = require "redux-form"

{
  div,
  h3,
  span,
  form,
  fieldset,
  legend,
  label,
  input,
  button,
  textarea,
  select,
  i,
  option
} = React.DOM

FIELD_PROPS =
  title  : { type: "text" }
  lat    : { type: "text", readOnly: yes }
  lng    : { type: "text", readOnly: yes }

Form = React.createClass

  displayName: "NewEntryForm"

  propTypes:
    fields        : T.object.isRequired
    onCancel      : T.func.isRequired
    handleSubmit  : T.func.isRequired
    isEdit        : T.bool

  render: ->
    { fields, handleSubmit, onCancel, isEdit} = @props
    { title, description, homepage, phone, lat, lng, category } = fields

    fieldProps = udeep FIELD_PROPS, fields

    classes =
      title       : className: "pure-u-23-24"
      description : className: "pure-u-23-24"
      homepage    : className: "pure-u-23-24"
      phone       : className: "pure-u-23-24"
      lat         : className: "pure-u-23-24"
      lng         : className: "pure-u-23-24"
      category    : className: ""

    for k,f of fieldProps when classes[k]? and f.error and f.touched
      classes[k].className += " err"

    fieldProps = udeep classes, fieldProps

    form onSubmit: handleSubmit, className: "add-entry-form pure-u-1",
      h3 null, if isEdit then "Eintrag bearbeiten" else "Neuer Eintrag"
      @props.error and div className: "err",
        "Der Eintrag konnte nicht gespeichert werden: #{@props.error.message}"
      div className: "pure-form pure-form-stacked",

        fieldset null,
          legend null, "Kategorie"
          div className: "pure-g",
            div className: "pure-u-1 pure-u-md-1-3",
              select fieldProps.category,
                option value: -1,                   "- auswählen -"
                option value: IDS.INITIATIVE, "Initiative"
                option value: IDS.EVENT, disabled: yes, "Event"
                option value: IDS.COMPANY,   "Unternehmen"
              category.error and category.touched and div className: "err",
                category.error

        fieldset null,
          div className: "pure-g",
            div className: "pure-u-1",
              label null, "Titel"
              input fieldProps.title
              title.error and title.touched and div className: "err",
                title.error

          div className: "pure-g",
            div className: "pure-u-1",
              label null,
                span className:"text","Beschreibung"
              textarea fieldProps.description
              description.error and description.touched and div className:"err",
               description.error

        fieldset null,
          legend null,
            span className:"text","Kontakt"
          div className: "pure-g",
            div className: "pure-u-1",
              label null, "Homepage"
              input fieldProps.homepage

          div className: "pure-g",
            div className: "pure-u-1",
              label null, "Telefon"
              input fieldProps.phone

        fieldset null,
          legend null,
            span className:"text","Ort"
            span className:"desc","(Klick auf Karte)"
          div className: "pure-g",
            div className: "pure-u-1 pure-u-md-1-3",
              label null, "Latitude"
              input fieldProps.lat
              lat.error and lat.touched and div className: "err", lat.error

            div className: "pure-u-1 pure-u-md-1-3",
              label null, "Longitude"
              input fieldProps.lng
              lng.error and lng.touched and div className: "err", lng.error

        fieldset null,
          legend null, ""
          div className: "pure-g",
            div className: "pure-u-1 pure-u-md-1-3",
              button
                className: "pure-u-23-24 pure-button pure-button-primary"
                type: "submit",
                  i className: "fa fa-floppy-o"
                  "speichern"

            div className: "pure-u-1 pure-u-md-1-3",
              button
                onClick: (ev) =>
                  ev.preventDefault()
                  @props.onCancel()
                className:"pure-u-23-24 pure-button",
                  i className: "fa fa-ban"
                  "abbrechen"

module.exports = connectReduxForm(
  form      : 'edit'
  fields    : [
    'title',
    'description',
    'homepage',
    'telephone',
    'lat',
    'lng',
    'category'
  ]
  validate  : validation.entryForm
)(Form)
