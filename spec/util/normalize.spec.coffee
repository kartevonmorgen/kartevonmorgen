(require "chai").should()

describe "Normalization", ->

  N = require "../../src/util/normalize"

  describe "url", ->

    it "should add missing protocol", ->
      N.url("foo.bar").should.equal "http://foo.bar"
      N.url("http://foo.bar").should.equal "http://foo.bar"
      N.url("https://foo.bar").should.equal "https://foo.bar"
      N.url("").should.equal ""
      should.not.exist N.url()
