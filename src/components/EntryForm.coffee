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
    handleSubmit  : T.func.isRequired
    isEdit        : T.bool

  render: ->
    { fields, handleSubmit, onCancel, isEdit} = @props
    { title, description, homepage, telephone, lat, lng, category,
      city, zip, street, email } = fields

    fieldProps = udeep FIELD_PROPS, fields

    classes =
      title       : className: "pure-input-1", placeholder: "Titel"
      description : className: "pure-input-1", placeholder: "Beschreibung"
      homepage    : className: "pure-input-1", placeholder: "Homepage"
      telephone   : className: "pure-input-1", placeholder: "Telefon"
      street      : className: "pure-input-1", placeholder: "Straße"
      city        : className: "pure-input-1", placeholder: "Stadt"
      zip         : className: "pure-input-1", placeholder: "PLZ"
      email       : className: "pure-input-1", placeholder: "eMail"
      lat         : className: "pure-input-1"
      lng         : className: "pure-input-1"
      category    : className: "pure-input-1"

    for k,f of fieldProps when classes[k]? and f.error and f.touched
      classes[k].className += " err"

    fieldProps = udeep classes, fieldProps

    form onSubmit: handleSubmit, className: "add-entry-form pure-u-1",
      h3 null, if isEdit then "Eintrag bearbeiten" else "Neuer Eintrag"
      @props.error and div className: "err",
        "Der Eintrag konnte nicht gespeichert werden: #{@props.error.message}"
      div className: "pure-form",

        fieldset null,
          select fieldProps.category,
            option value: -1,"- Kategorie auswählen -"
            option value: IDS.INITIATIVE, "Initiative"
            option value: IDS.EVENT, disabled: yes, "Event"
            option value: IDS.COMPANY,   "Unternehmen"
          category.error and category.touched and div className: "err",
            category.error

        fieldset null,
          input fieldProps.title
          title.error and title.touched and div className: "err",
            title.error

        fieldset null,
          textarea fieldProps.description
          description.error and description.touched and div className:"err",
            description.error

        fieldset null,
          legend null,
            span className:"text","Ort"
            span className:"desc","(auf Karte klicken)"

          div className: "pure-g",
            label className: "pure-u-2-24",
              i className: "fa fa-map-marker"
            div className: "pure-u-22-24 pure-g",
              div className: "pure-u-11-24",
                input fieldProps.lat
                lat.error and lat.touched and div className: "err", lat.error
              div className: "pure-u-2-24"
              div className: "pure-u-11-24",
                input fieldProps.lng
                lng.error and lng.touched and div className: "err", lng.error
        fieldset null,
          input fieldProps.street
          street.error and street.touched and div className:"err",
            street.error
          div className: "pure-g",
            div className: "pure-u-6-24",
              input fieldProps.zip
              zip.error and zip.touched and div className:"err",
                zip.error
            div className: "pure-u-18-24",
              input fieldProps.city
              city.error and city.touched and div className:"err",
                city.error

        fieldset null,
          legend null, "Kontakt"
          div className: "pure-g",
            label className: "pure-u-2-24",
              i className: "fa fa-globe"
            div className: "pure-u-22-24",
              input fieldProps.homepage

          div className: "pure-g",
            label className: "pure-u-2-24",
              i className: "fa fa-envelope"
            div className: "pure-u-22-24",
              input fieldProps.email

         div className: "pure-g",
           label className: "pure-u-2-24",
              i className: "fa fa-phone"
            div className: "pure-u-22-24",
              input fieldProps.telephone

module.exports = connectReduxForm(
  form      : 'edit'
  fields    : [
    'title',
    'description',
    'homepage',
    'telephone',
    'city',
    'zip',
    'email',
    'street',
    'lat',
    'lng',
    'category'
  ]
  validate  : validation.entryForm
)(Form)
