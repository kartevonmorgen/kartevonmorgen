const isInt = (v) => {
  return (typeof v) === "number" && (isFinite(v)) && (Math.floor(v)) === v;
};

const entryForm = (data) => {
  var errors, h, l, ref;
  errors = {};
  if (data == null) {
    errors._error = "Ungültige Daten";
    return errors;
  }
  if (data.title == null) {
    errors.title = 'Pflichtangabe';
  } else {
    if (!((l = data.title.length) <= 40)) {
      if (errors.title == null) {
        errors.title = "Zu langer Titel: " + l + " statt max. 40 Zeichen";
      }
    }
    if (!((l = data.title.length) >= 3)) {
      if (errors.title == null) {
        errors.title = "Zu kurzer Titel: " + l + " von mind. 3 Zeichen";
      }
    }
  }
  if (data.description == null) {
    errors.description = 'Pflichtangabe';
  } else {
    if (!((l = data.description.length) <= 250)) {
      if (errors.description == null) {
        errors.description = "Zu lange Beschreibung: " + l + " statt max. 250 Zeichen";
      }
    }
    if (!((l = data.description.length) >= 10)) {
      if (errors.description == null) {
        errors.description = "Zu wenig Text: " + l + " von mind. 10 Zeichen";
      }
    }
  }
  if (data.lat == null) {
    errors.lat = 'Pflichtangabe';
  } else {
    if (!(data.lat * 1)) {
      errors.lat = 'Ungültiger Breitengrad';
    }
  }
  if (data.lng == null) {
    errors.lng = 'Pflichtangabe';
  } else {
    if (!(data.lng * 1)) {
      errors.lng = 'Ungültiger Längengrad';
    }
  }
  if (data.category == null) {
    errors.category = 'Pflichtangabe';
  } else {
    if ((typeof data.category) !== "string") {
      errors.category = 'Ungültige Kategorie';
    }
  }
  if (data.tags == null) {
    errors.tags = 'Pflichtangabe';
  } else {
    if ((typeof data.tags) !== "string") {
      errors.tags = 'Ungültige Stichworte';
    } else if (data.tags.length < 3) {
      errors.tags = 'Mindestlänge von Stichworten: 3 Zeichen';
    }
  }
  if (data.license == null) {
    errors.license = 'Lizenzzustimmung ist nötig';
  } else {
    if ((typeof data.license) !== "boolean") {
      errors.license = 'Ungültige Zustimmung';
    } else if (data.license === false) {
      errors.license = 'Lizenzzustimmung ist nötig';
    }
  }
  if ((h = data.homepage) != null) {
    if (!((h.indexOf("http://") === 0) || (h.indexOf("https://") === 0))) {
      errors.homepage = 'Ungültige URL ("http://" oder "https://" fehlt)';
    }
    if (((ref = (h = data.homepage)) != null ? ref.length : void 0) < 9) {
      errors.homepage = 'Ungültige URL';
    }
  }
  return errors;
};

const ratingForm = (data) => {
  var h, l, ref;
  var errors = {};
  if (data == null) {
    errors._error = "Ungültige Daten";
    return errors;
  }
  if (data.title == null) {
    errors.title = 'Pflichtangabe';
  } else {
    if (!((l = data.title.length) <= 40)) {
      if (errors.title == null) {
        errors.title = "Zu langer Titel: " + l + " statt max. 40 Zeichen";
      }
    }
    if (!((l = data.title.length) >= 3)) {
      if (errors.title == null) {
        errors.title = "Zu kurzer Titel: " + l + " von mind. 3 Zeichen";
      }
    }
  }
  if (data.context == null) {
    errors.context = 'Pflichtangabe';
  } else {
    if ((typeof data.context) !== "string") {
      errors.context = 'Ungültiger Bewertungskontext';
    }
  }
  if (data.value == null) {
    errors.value = 'Pflichtangabe';
  } else {
    if (data.value < -1 || data.value > 2) {
      errors.value = 'Ungültige Bewertung';
    }
  }
  if (data.comment == null) {
    errors.comment = 'Pflichtangabe';
  } else {
    if (!((l = data.comment.length) <= 500)) {
      if (errors.comment == null) {
        errors.comment = "Zu langer Kommentar: " + l + " statt max. 500 Zeichen";
      }
    }
    if (!((l = data.comment.length) >= 10)) {
      if (errors.comment == null) {
        errors.comment = "Zu wenig Text: " + l + " von mind. 10 Zeichen";
      }
    }
  }
  return errors;
}

module.exports = { entryForm, ratingForm };
