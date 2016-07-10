# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

isInt = (v) -> (typeof v) is "number" and (isFinite v) and (Math.floor v) is v

entryForm = (data) ->

  errors = {}

  unless data?
    errors._error = "Ungültige Daten"
    return errors

  unless data.title?
    errors.title = 'Pflichtangabe'
  else
    unless (l = data.title.length) <= 40
      errors.title ?= "Zu langer Titel: #{l} statt max. 40 Zeichen"
    unless (l = data.title.length) >= 3
      errors.title ?= "Zu kurzer Titel: #{l} von mind. 3 Zeichen"

  unless data.description?
    errors.description = 'Pflichtangabe'
  else
    unless (l = data.description.length) <= 250
      errors.description ?= "Zu lange Beschreibung: #{l} statt max. 250 Zeichen"
    unless (l = data.description.length) >= 10
      errors.description ?= "Zu wenig Text: #{l} von mind. 10 Zeichen"

  unless data.lat?
    errors.lat = 'Pflichtangabe'
  else
    errors.lat = 'Ungültiger Breitengrad' unless data.lat * 1

  unless data.lng?
    errors.lng = 'Pflichtangabe'
  else
    errors.lng = 'Ungültiger Längengrad' unless data.lng * 1

  unless data.category?
    errors.category = 'Pflichtangabe'
  else
    unless (typeof data.category) is "string"
      errors.category = 'Ungültige Kategorie'

  unless data.license?
    errors.license = 'Lizenzzustimmung ist nötig'
  else
    unless (typeof data.license) is "boolean"
      errors.license = 'Ungültige Zustimmung'
    else if data.license is false
      errors.license = 'Lizenzzustimmung ist nötig'

  if (h = data.homepage)?
    unless ((h.indexOf("http://") == 0) or (h.indexOf("https://") == 0))
      errors.homepage = 'Ungültige URL'

    if (h = data.homepage)?.length < 9
      errors.homepage = 'Ungültige URL'

  errors

module.exports = { entryForm }
