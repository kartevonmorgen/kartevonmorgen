# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

{ URL } = require "./constants/API"
request = require "superagent/lib/client"
prefix  = (require "superagent-prefix") URL

jsonCallback = (cb) ->
  (err, res) -> if err then cb err else cb null, res.body

module.exports =

  search: (txt='', cats=[], bbox=[], cb) ->
    unless txt.length > 0
      cb (new Error "invalid search text")
    else
      request
        .get '/search'
        .use prefix
        .query text: txt.trim().split ' '
        .query 'categories=' + cats.join ','
        .query 'bbox=' + bbox.join ','
        .set 'Accept', 'application/json'
        .end jsonCallback cb
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
        .end jsonCallback cb
    undefined

  saveNewEntry: (e, cb) ->
    request
    .post '/entries/'
    .use prefix
    .set 'Accept', 'application/json'
    .send e
    .end jsonCallback cb
    undefined

  saveEntry: (e, cb) ->
    request
    .put '/entries/' + e.id
    .use prefix
    .set 'Accept', 'application/json'
    .send e
    .end jsonCallback cb
    undefined

  getAllCategories: (cb) ->
    request
      .get '/categories/'
      .use prefix
      .set 'Accept', 'application/json'
      .end cb
    undefined

  getServerInfo: (cb) ->
    request
      .get '/server/version'
      .set 'Accept', 'application/json'
      .use prefix
      .end (err, res) -> if err then cb err else cb null, version: res.text
    undefined
