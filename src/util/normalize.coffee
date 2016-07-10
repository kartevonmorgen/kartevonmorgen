url = (value) ->
  if not value? or value.length is 0
    return value
  unless (value.indexOf("http://") is 0) or (value.indexOf("https://") is 0)
    value = "http://#{value}"
  value

module.exports = { url }
