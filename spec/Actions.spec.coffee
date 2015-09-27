(require "chai").should()

describe "Actions", ->

  A = require "../src/Actions"

  it "should be functions", ->
    for own k,v of A
      v.should.be.a "function"

  it "should return objects or functions", ->
    for own k,v of A
      (typeof v() in ["object", "function"]).should.be.true

  #TODO: test async actions

  it "should return objects with a type attribute", ->
    for own k,v of A when typeof (a = v()) is "object"
      a.type.should.be.a "string"

  it "must not return objects with properties other than type, error, payload and meta", ->
    for own k,v of A when typeof (a = v()) is "object"
      for own k of a
        valid = k in ["type", "payload", "error", "meta"]
        console.log "#{a.type} has a invalid property '#{k}'" unless valid
        valid.should.be.true

  describe "search", ->

    it "should return a function", ->
      A.search().should.be.a "function"
