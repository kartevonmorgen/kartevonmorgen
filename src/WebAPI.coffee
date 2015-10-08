# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

{ URL } = require "./constants/API"
request = require "superagent/lib/client"
prefix  = (require "superagent-prefix") URL

module.exports =

  search: (txt='', cats=[], cb) ->
    unless txt.length > 0
      cb (new Error "invalid search text")
    else
      request
        .get '/search'
        .use prefix
        .query entries: txt.trim().split ' '
        .query 'categories=' + cats.join ','
        .set 'Accept', 'application/json'
        .end cb
    undefined

  getEntries: (ids=[], cb) ->
    ids = [ids] unless Array.isArray ids
    unless ids.length > 0
      cb (new Error "no IDs were passed")
    else
      request
        .get '/entries/' + ids.join ','
        .use prefix
        .set 'Accept', 'application/json'
        .end cb
    undefined

  saveNewEntry: (e, cb) ->
    request
      .post '/entries/'
      .use prefix
      .set 'Accept', 'application/json'
      .send e
      .end cb
    undefined

  getAllCategories: (cb) ->
    request
      .get '/categories/'
      .use prefix
      .set 'Accept', 'application/json'
      .end cb
    undefined
