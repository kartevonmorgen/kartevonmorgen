import i18n from "../i18n";

const entryForm = (data) => {
  let errors, h, l, ref;
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
    if (!((l = data.description.length) <= 250)) {
      if (errors.description == null) {
        errors.description = t("descriptionTooLong") + ": " + l + " " + t("maxNumCharactersDescription");
      }
    }
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
  if (data.category == null) {
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
  if ((h = data.homepage) != null) {
    if (!((h.indexOf("http://") === 0) || (h.indexOf("https://") === 0))) {
      errors.homepage = t("invalidURL") + t("httpMissing");
    }
    if (((ref = (h = data.homepage)) != null ? ref.length : void 0) < 9) {
      errors.homepage = t("invalidURL");
    }
  }
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
    return i18n.t("loginForm." + key);
  }

  if (data == null) {
    errors._error = t("invalidValues");
    return errors;
  }
  if (data.username == null) {
    errors.username = t("requiredField");
  } else {
    let l;
    if (!((l = data.username.length) >= 3)) {
      if (errors.username == null) {
        errors.username = t("invalidUsername") + ": " + l + " " + t("minNumCharactersUsername");
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
    return i18n.t("registerForm." + key);
  }

  if (data == null) {
    errors._error = t("invalidValues");
    return errors;
  }
  if (data.username == null) {
    errors.username = t("requiredField");
  } else {
    let l;
    if (!((l = data.username.length) >= 3)) {
      if (errors.username == null) {
        errors.username = t("invalidUsername") + ": " + l + " " + t("minNumCharactersUsername");
      }
    }
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

module.exports = { entryForm, ratingForm, loginForm, registerForm };