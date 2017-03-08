import React          from "react"
import udeep          from "updeep"
import validation     from "../util/validation"
import { IDS        } from "../constants/Categories"
import { reduxForm  } from "redux-form"
import { CC_LICENSE } from "../constants/URLs"
import { EDIT       } from "../constants/Form"
import Actions        from "../Actions"

const FIELD_PROPS = {
  title       : { type: "text" },
  description : { type: "text" },
  homepage    : { type: "text" },
  telephone   : { type: "text" },
  street      : { type: "text" },
  city        : { type: "text" },
  zip         : { type: "text" },
  email       : { type: "email" },
  lat         : { type: "text", readOnly: true },
  lng         : { type: "text", readOnly: true },
  license     : { type: "checkbox"            }
};

class Form extends React.Component {

  render() {

    const { fields, handleSubmit, onCancel, isEdit } = this.props;
    const { title, description, homepage, telephone, lat, lng, category,
      city, zip, street, email, license } = fields;

    let fieldProps = udeep(FIELD_PROPS, fields);

    const classes = {
      title       : { className: "pure-input-1", placeholder: "Titel"        },
      description : { className: "pure-input-1", placeholder: "Beschreibung" },
      homepage    : { className: "pure-input-1", placeholder: "Homepage"     },
      telephone   : { className: "pure-input-1", placeholder: "Telefon"      },
      street      : { className: "pure-input-1", placeholder: "Straße"       },
      city        : { className: "pure-input-1", placeholder: "Stadt"        },
      zip         : { className: "pure-input-1", placeholder: "PLZ"          },
      email       : { className: "pure-input-1", placeholder: "eMail"        },
      lat         : { className: "pure-input-1"                              },
      lng         : { className: "pure-input-1"                              },
      category    : { className: "pure-input-1"                              }
    };

    for (var k in fieldProps) {
      const f = fieldProps[k];
      if ((classes[k] != null) && f.error && f.touched) {
        classes[k].className += " err";
      }
    }

    fieldProps = udeep(classes, fieldProps);

    return (
    <form
      onSubmit  = {handleSubmit}
      className = "add-entry-form"
      action    = 'javascript:void();' >

      <h3>{isEdit ? "Eintrag bearbeiten" : "Neuer Eintrag"}</h3>
      { this.props.error &&
        <div className= "err">
          Der Eintrag konnte nicht gespeichert werden: {this.props.error.message}
        </div>
      }
      { (!this.props.error) && this.props.submitFailed &&
        <div className="err">Bitte überprüfen Sie ihre Eingaben!</div>
      }
      { license.error && license.touched &&
        <div className="err">{license.error}</div>
      }
      <div className= "pure-form">

        <fieldset>
          <select {...fieldProps.category} >
            <option value={-1}>- Kategorie auswählen -</option>
            <option value={IDS.INITIATIVE}>Initiative</option>
            <option value={IDS.EVENT}>Event</option>
            <option value={IDS.COMPANY}>Unternehmen</option>
          </select>
          {category.error && category.touched &&
            <div className= "err">{category.error}</div>
          }
          <input {...fieldProps.title } />
          {title.error && title.touched &&
            <div className = "err">{title.error}</div>
          }
          <textarea {...fieldProps.description }/>
          {description.error && description.touched &&
            <div className="err">{description.error}</div>
          }
        </fieldset>

        <fieldset>
          <legend>
            <span className="text">Ort</span>
            <span className="desc">(auf Karte klicken)</span>
          </legend>
          <div className= "pure-g">
            <label className= "pure-u-2-24">
              <i className= "fa fa-map-marker" />
            </label>
            <div className= "pure-u-22-24 pure-g">
              <div className= "pure-u-11-24">
                <input {...fieldProps.lat} />
                { lat.error && lat.touched &&
                   <div className= "err">{lat.error}</div>
                }
              </div>
              <div className= "pure-u-2-24"></div>
              <div className= "pure-u-11-24">
                <input {...fieldProps.lng} />
                { lng.error && lng.touched &&
                  <div className= "err">{lng.error}</div>
                }
              </div>
            </div>
          </div>
        </fieldset>

        <fieldset>
          <input {...fieldProps.street} />
          {street.error && street.touched &&
            <div className="err">{street.error}</div>
          }
          <div className= "pure-g">
            <div className= "pure-u-6-24">
              <input {...fieldProps.zip} />
              {zip.error && zip.touched &&
                <div className="err">{zip.error}</div>
              }
            </div>
            <div className= "pure-u-18-24">
              <input {...fieldProps.city} />
              {city.error && city.touched &&
                <div className="err">{city.error}</div>
              }
            </div>
          </div>
        </fieldset>

        <fieldset>
          <legend>Kontakt</legend>
          <div className= "pure-g">
            <label className= "pure-u-2-24">
              <i className= "fa fa-globe" />
            </label>
            <div className= "pure-u-22-24">
              <input {...fieldProps.homepage} />
              { homepage.error && homepage.touched &&
                <div className="err">{homepage.error}</div>
              }
            </div>
          </div>

          <div className= "pure-g">
            <label className= "pure-u-2-24">
              <i className= "fa fa-envelope" />
            </label>
            <div className= "pure-u-22-24">
              <input {...fieldProps.email} />
            </div>
          </div>

          <div className= "pure-g">
            <label className= "pure-u-2-24">
              <i className= "fa fa-phone" />
            </label>
            <div className= "pure-u-22-24">
              <input {...fieldProps.telephone} />
            </div>
          </div>

        </fieldset>

        <fieldset>
          <legend>
            <span className="text">Lizenz</span>
            <span className="desc">(CC-0)</span>
          </legend>
          <div className= "pure-g license">
            <label className= "pure-u-2-24">
              <i className= "fa fa-creative-commons" />
            </label>
            <div className= "pure-u-2-24 pure-controls">
              <input {...fieldProps.license } />
            </div>
            <div className= "pure-u-20-24">
              { license.error && license.touched &&
                <div className="err">{license.error}</div>
              }
              Ich habe die
              <a href={CC_LICENSE.link}>
                Bestimmungen der Creative-Commons Lizenz CC0
              </a>
              gelesen und akzeptiere sie
            </div>
          </div>
        </fieldset>

      </div>
    </form>)
  }
}

const T = React.PropTypes;

Form.propTypes = {
  fields        : T.object.isRequired,
  handleSubmit  : T.func.isRequired,
  isEdit        : T.bool
};

module.exports = reduxForm({
  form            : EDIT.id,
  fields          : EDIT.fields,
  validate        : validation.entryForm,
  asyncBlurFields : ['street', 'zip', 'city'],
  asyncValidate: function(values, dispatch) {
    dispatch(Actions.geocodeAndSetMarker(
          (values.street ? values.street + ' ' : '')
          .concat(
            (values.zip ? values.zip + ' ' : '')
              .concat((values.city ? values.city : '')))
      ));
      return new Promise((resolve, reject) => resolve());
  }
})(Form)
