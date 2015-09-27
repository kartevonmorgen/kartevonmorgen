# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

c =
  BASE  : '/api/v0'
  PORT  : 6767

c.URL = "http://127.0.0.1:#{c.PORT}#{c.BASE}"

module.exports = c
