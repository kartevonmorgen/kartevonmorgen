// TODO: import i18n from "../i18n";
// TODO:
// TODO: const entryForm = (data) => {
// TODO:   let errors, h, l, ref, u;
// TODO:   errors = {};
// TODO:
// TODO:   const t = (key) => {
// TODO:     return i18n.t("entryForm." + key);
// TODO:   }
// TODO:
// TODO:   if (data == null) {
// TODO:     errors._error = t("invalidValues");
// TODO:     return errors;
// TODO:   }
// TODO:   if (data.title == null) {
// TODO:     errors.title = t("requiredField");
// TODO:   } else {
// TODO:     if (!((l = data.title.length) <= 50)) {
// TODO:       if (errors.title == null) {
// TODO:         errors.title = t("titleTooLong") + ": " + l + " " + t("maxNumCharactersTitle");
// TODO:       }
// TODO:     }
// TODO:     if (!((l = data.title.length) >= 3)) {
// TODO:       if (errors.title == null) {
// TODO:         errors.title = t("titleTooShort") + ": " + l + " " + t("minNumCharactersTitle");
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   if (data.description == null) {
// TODO:     errors.description = t("requiredField");
// TODO:   } else {
// TODO:     if (!((l = data.description.length) <= 250)) {
// TODO:       if (errors.description == null) {
// TODO:         errors.description = t("descriptionTooLong") + ": " + l + " " + t("maxNumCharactersDescription");
// TODO:       }
// TODO:     }
// TODO:     if (!((l = data.description.length) >= 10)) {
// TODO:       if (errors.description == null) {
// TODO:         errors.description =  t("descriptionTooShort") + ": " + l + " " + t("maxNumCharactersDescription");
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   if (data.lat == null) {
// TODO:     errors.lat = t("requiredField");
// TODO:   } else {
// TODO:     if (!(data.lat * 1)) {
// TODO:       errors.lat = t("invalidLatitude");
// TODO:     }
// TODO:   }
// TODO:   if (data.lng == null) {
// TODO:     errors.lng = t("requiredField");
// TODO:   } else {
// TODO:     if (!(data.lng * 1)) {
// TODO:       errors.lng = t("invalidLongitude");
// TODO:     }
// TODO:   }
// TODO:   if (data.category == null || data.category == "-1") {
// TODO:     errors.category = t("requiredField");
// TODO:   } else {
// TODO:     if ((typeof data.category) !== "string") {
// TODO:       errors.category = t("invalidCategory");
// TODO:     }
// TODO:   }
// TODO:   if (data.tags == null) {
// TODO:     errors.tags = t("requiredField");
// TODO:   } else {
// TODO:     if ((typeof data.tags) !== "string") {
// TODO:       errors.tags = t("invalidTags");
// TODO:     } else if (data.tags.length < 3) {
// TODO:       errors.tags = t("minNumCharactersTags");
// TODO:     }
// TODO:   }
// TODO:   if (data.license == null) {
// TODO:     errors.license = t("acceptLicense");
// TODO:   } else {
// TODO:     if ((typeof data.license) !== "boolean") {
// TODO:       errors.license = t("invalidLicenseAgreement");
// TODO:     } else if (data.license === false) {
// TODO:       errors.license = t("acceptLicense");
// TODO:     }
// TODO:   }
// TODO:   const urlRegexp =  /^(?:(?:https?):\/\/)?(?:(?!(?:10|127)(?:\.\d{1,3}){3})(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/\S*)?$/;
// TODO:   if ((h = data.homepage) != null) {
// TODO:     if (!urlRegexp.test(h)) {
// TODO:       errors.homepage = t("invalidURL");
// TODO:     }
// TODO:   }
// TODO:   if ((u = data.image_url) != null) {
// TODO:     if (!urlRegexp.test(u)) {
// TODO:       errors.image_url = t("invalidURL");
// TODO:     }
// TODO:   }
// TODO:   if ((u = data.image_link_url) != null) {
// TODO:     if (!urlRegexp.test(u)) {
// TODO:       errors.image_link_url = t("invalidURL");
// TODO:     }
// TODO:   }
// TODO:   return errors;
// TODO: };
// TODO:
// TODO: const ratingForm = (data) => {
// TODO:   let l;
// TODO:   let errors = {};
// TODO:
// TODO:   const t = (key) => {
// TODO:     return i18n.t("ratingForm." + key);
// TODO:   }
// TODO:
// TODO:   if (data == null) {
// TODO:     errors._error = t("invalidValues");
// TODO:     return errors;
// TODO:   }
// TODO:   if (data.title == null) {
// TODO:     errors.title = t("requiredField");
// TODO:   } else {
// TODO:     if (!((l = data.title.length) <= 40)) {
// TODO:       if (errors.title == null) {
// TODO:         errors.title = t("titleTooLong") + ": " + l + " " + t("maxNumCharactersTitle");
// TODO:       }
// TODO:     }
// TODO:     if (!((l = data.title.length) >= 3)) {
// TODO:       if (errors.title == null) {
// TODO:         errors.title = t("titleTooShort") + ": " + l + " " + t("minNumCharactersTitle");
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   if (data.context == null) {
// TODO:     errors.context = t("requiredField");
// TODO:   } else {
// TODO:     if ((typeof data.context) !== "string") {
// TODO:       errors.context = t("invalidRatingContext");
// TODO:     }
// TODO:   }
// TODO:   if (data.value == null) {
// TODO:     errors.value = t("requiredField");
// TODO:   } else {
// TODO:     if (data.value < -1 || data.value > 2) {
// TODO:       errors.value = t("invalidRating");
// TODO:     }
// TODO:   }
// TODO:   if (data.comment == null) {
// TODO:     errors.comment = t("requiredField");
// TODO:   } else {
// TODO:     if (!((l = data.comment.length) <= 500)) {
// TODO:       if (errors.comment == null) {
// TODO:         errors.comment = t("commentTooLong") + ": " + l + " " + t("maxNumCharactersComment");
// TODO:       }
// TODO:     }
// TODO:     if (!((l = data.comment.length) >= 10)) {
// TODO:       if (errors.comment == null) {
// TODO:         errors.comment = t("commentTooShort") + ": " + l + " " + t("minNumCharactersComment");
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   return errors;
// TODO: }
// TODO:
// TODO: const loginForm = (data) => {
// TODO:   let errors = {};
// TODO:
// TODO:   const t = (key) => {
// TODO:     return i18n.t("login." + key);
// TODO:   }
// TODO:
// TODO:   if (data == null) {
// TODO:     errors._error = t("invalidValues");
// TODO:     return errors;
// TODO:   }
// TODO:   if (data.email == null) {
// TODO:     errors.email = t("requiredField");
// TODO:   } else {
// TODO:     let l;
// TODO:     if (!((l = data.email.length) >= 3)) {
// TODO:       if (errors.email == null) {
// TODO:         errors.email = t("invalidEmail");
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   if (data.password == null) {
// TODO:     errors.password = t("requiredField");
// TODO:   } else {
// TODO:     let l;
// TODO:     if (!((l = data.password.length) >= 3)) {
// TODO:       if (errors.password == null) {
// TODO:         errors.password = t("invalidPassword") +  ": " + l + " " + t("minNumCharactersPassword");
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   return errors;
// TODO: }
// TODO:
// TODO: const registerForm = (data) => {
// TODO:   let errors = {};
// TODO:
// TODO:   const t = (key) => {
// TODO:     return i18n.t("register." + key);
// TODO:   }
// TODO:
// TODO:   if (data == null) {
// TODO:     errors._error = t("invalidValues");
// TODO:     return errors;
// TODO:   }
// TODO:   if (data.email == null) {
// TODO:     errors.email = t("requiredField");
// TODO:   } else {
// TODO:     if (!(data.email.length >= 3)) {
// TODO:       if (errors.email == null) {
// TODO:         errors.email = t("invalidEmail");
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   if (data.password == null) {
// TODO:     errors.password = t("requiredField");
// TODO:   } else {
// TODO:     let l;
// TODO:     if (!((l = data.password.length) >= 3)) {
// TODO:       if (errors.password == null) {
// TODO:         errors.password = t("invalidPassword") +  ": " + l + " " + t("minNumCharactersPassword");
// TODO:       }
// TODO:     }
// TODO:   }
// TODO:   if (data.password2 == null) {
// TODO:     errors.password2 = t("repeatPassword");
// TODO:   } else if (data.password != data.password2){
// TODO:     if (errors.password2 == null) {
// TODO:       errors.password2 = t("passwordsDontAgree");
// TODO:     }
// TODO:   }
// TODO:   return errors;
// TODO: }
// TODO:
// TODO: module.exports = { entryForm, ratingForm, loginForm, registerForm };
