# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

URL       = "https://api.ofdb.io/v0"
NOMINATIM = "https://nominatim.openstreetmap.org"
request   = require "superagent/lib/client"
saPrefix  = require "superagent-prefix"
prefix    = saPrefix URL

jsonCallback = (cb) ->
  (err, res) -> if err then cb err else cb null, res.body

module.exports =

  search: (txt='', cats=[], bbox=[], cb) ->
    request
      .get '/search'
      .use prefix
      .query text: txt.trim().split ' '
      .query 'categories=' + cats.join ','
      .query 'bbox=' + bbox.join ','
      .set 'Accept', 'application/json'
      .end jsonCallback cb
    undefined

  searchAddress: (addr='', cb) ->
    request
      .get '/search'
      .use saPrefix NOMINATIM
      .query q: addr
      .query format: 'json'
      .query addressdetails: 1
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
    .end (err, res) -> if err then cb err else cb null, res.text
    undefined

  saveEntry: (e, cb) ->
    request
    .put '/entries/' + e.id
    .use prefix
    .set 'Accept', 'application/json'
    .send e
    .end (err, res) -> if err then cb err else cb null, res.text
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
