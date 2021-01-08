import validUrl from 'valid-url'
import i18n from "../i18n";

const entryForm = (data) => {
  let errors, h, l, ref, u;
  errors = {};

  const t = (key) => {
    return i18n.t("entryForm." + key);
  }

  if (data == null) {
    errors._error = t("invalidValues");
    return errors;
  }
  if (data.title == null) {
    errors.title = t("requiredField");
  } else {
    if (!((l = data.title.length) <= 50)) {
      if (errors.title == null) {
        errors.title = t("titleTooLong") + ": " + l + " " + t("maxNumCharactersTitle");
      }
    }
    if (!((l = data.title.length) >= 3)) {
      if (errors.title == null) {
        errors.title = t("titleTooShort") + ": " + l + " " + t("minNumCharactersTitle");
      }
    }
  }
  if (data.description == null) {
    errors.description = t("requiredField");
  } else {
    // 250 is hard coded however a more dynamic number from .env is more desired (ENTRY_DESCRIPTION_WARN_LIMIT)
    // if (!((l = data.description.length) <= 250)) {
    //   if (errors.description == null) {
    //     errors.description = t("descriptionTooLong") + ": " + l + " " + t("maxNumCharactersDescription");
    //   }
    // }
    if (!((l = data.description.length) >= 10)) {
      if (errors.description == null) {
        errors.description =  t("descriptionTooShort") + ": " + l + " " + t("maxNumCharactersDescription");
      }
    }
  }
  if (data.lat == null) {
    errors.lat = t("requiredField");
  } else {
    if (!(data.lat * 1)) {
      errors.lat = t("invalidLatitude");
    }
  }
  if (data.lng == null) {
    errors.lng = t("requiredField");
  } else {
    if (!(data.lng * 1)) {
      errors.lng = t("invalidLongitude");
    }
  }
  if (data.category == null || data.category == "-1") {
    errors.category = t("requiredField");
  } else {
    if ((typeof data.category) !== "string") {
      errors.category = t("invalidCategory");
    }
  }
  if (data.tags == null) {
    errors.tags = t("requiredField");
  } else {
    if ((typeof data.tags) !== "string") {
      errors.tags = t("invalidTags");
    } else if (data.tags.length < 3) {
      errors.tags = t("minNumCharactersTags");
    }
  }
  if (data.license == null) {
    errors.license = t("acceptLicense");
  } else {
    if ((typeof data.license) !== "boolean") {
      errors.license = t("invalidLicenseAgreement");
    } else if (data.license === false) {
      errors.license = t("acceptLicense");
    }
  }
  const urlRegexp =  /^(?:(?:https?):\/\/)?(?:(?!(?:10|127)(?:\.\d{1,3}){3})(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/\S*)?$/;
  if ((h = data.homepage) != null) {
    if (!urlRegexp.test(h)) {
      errors.homepage = t("invalidURL");
    }
  }
  if ((u = data.image_url) != null) {
    if (!urlRegexp.test(u)) {
      errors.image_url = t("invalidURL");
    }
  }
  if ((u = data.image_link_url) != null) {
    if (!urlRegexp.test(u)) {
      errors.image_link_url = t("invalidURL");
    }
  }

  // the errors for extra links
  // if a description or title is provided, the url is mandatory
  const createLinkUrl = (relativeField) => {
    const fieldParts = relativeField.split('_')
    fieldParts[1] = 'url'
    return fieldParts.join('_')
  }
  Object.keys(data).map(field => {
    if ((field.startsWith("link_title") || field.startsWith("link_description")) && data[field]) {
      const urlField = createLinkUrl(field)
      if (!data[urlField]) {
        errors[urlField] = t("requiredField");
      }
    }

    if (field.startsWith("link_url")) {
      if (data[field] && !validUrl.isWebUri(data[field])) {
        errors[field] = t("invalidURL")
      } else {
        const filedNumber = parseInt(field.split('_')[2])
        for (let i = 0; i !== filedNumber; i++) {
          if (data[`link_url_${i}`] === data[field]) {
            errors[field] = t("invalidURL")
            break
          }
        }
      }
    }

    if (field.startsWith('link_description') && data[field].length > 30) {
      errors[field] = t("descriptionTooLong")
    }
  })

  return errors;
};

const ratingForm = (data) => {
  let l;
  let errors = {};

  const t = (key) => {
    return i18n.t("ratingForm." + key);
  }

  if (data == null) {
    errors._error = t("invalidValues");
    return errors;
  }
  if (data.title == null) {
    errors.title = t("requiredField");
  } else {
    if (!((l = data.title.length) <= 40)) {
      if (errors.title == null) {
        errors.title = t("titleTooLong") + ": " + l + " " + t("maxNumCharactersTitle");
      }
    }
    if (!((l = data.title.length) >= 3)) {
      if (errors.title == null) {
        errors.title = t("titleTooShort") + ": " + l + " " + t("minNumCharactersTitle");
      }
    }
  }
  if (data.context == null) {
    errors.context = t("requiredField");
  } else {
    if ((typeof data.context) !== "string") {
      errors.context = t("invalidRatingContext");
    }
  }
  if (data.value == null) {
    errors.value = t("requiredField");
  } else {
    if (data.value < -1 || data.value > 2) {
      errors.value = t("invalidRating");
    }
  }
  if (data.comment == null) {
    errors.comment = t("requiredField");
  } else {
    if (!((l = data.comment.length) <= 500)) {
      if (errors.comment == null) {
        errors.comment = t("commentTooLong") + ": " + l + " " + t("maxNumCharactersComment");
      }
    }
    if (!((l = data.comment.length) >= 10)) {
      if (errors.comment == null) {
        errors.comment = t("commentTooShort") + ": " + l + " " + t("minNumCharactersComment");
      }
    }
  }
  return errors;
}

const loginForm = (data) => {
  let errors = {};

  const t = (key) => {
    return i18n.t("login." + key);
  }

  if (data == null) {
    errors._error = t("invalidValues");
    return errors;
  }
  if (data.email == null) {
    errors.email = t("requiredField");
  } else {
    let l;
    if (!((l = data.email.length) >= 3)) {
      if (errors.email == null) {
        errors.email = t("invalidEmail");
      }
    }
  }
  if (data.password == null) {
    errors.password = t("requiredField");
  } else {
    let l;
    if (!((l = data.password.length) >= 3)) {
      if (errors.password == null) {
        errors.password = t("invalidPassword") +  ": " + l + " " + t("minNumCharactersPassword");
      }
    }
  }
  return errors;
}

const registerForm = (data) => {
  let errors = {};

  const t = (key) => {
    return i18n.t("register." + key);
  }

  if (data == null) {
    errors._error = t("invalidValues");
    return errors;
  }
  if (data.email == null) {
    errors.email = t("requiredField");
  } else {
    if (!(data.email.length >= 3)) {
      if (errors.email == null) {
        errors.email = t("invalidEmail");
      }
    }
  }
  if (data.password == null) {
    errors.password = t("requiredField");
  } else {
    let l;
    if (!((l = data.password.length) >= 3)) {
      if (errors.password == null) {
        errors.password = t("invalidPassword") +  ": " + l + " " + t("minNumCharactersPassword");
      }
    }
  }
  if (data.password2 == null) {
    errors.password2 = t("repeatPassword");
  } else if (data.password != data.password2){
    if (errors.password2 == null) {
      errors.password2 = t("passwordsDontAgree");
    }
  }
  return errors;
}

export default { entryForm, ratingForm, loginForm, registerForm };