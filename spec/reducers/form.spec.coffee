(require "chai").should()

describe "form reducer", ->

  R = require "../../src/reducers/form"
  A = require "../../src/Actions"

  it "should be a function", ->
    R.should.be.a "function"

  describe "'edit' form", ->

    it "sets the 'lat' and 'lng' fields if a marker was set", ->
      a = A.setMarker { lat: 5, lng: 7 }
      s = (R {}, a).edit
      s.lat.value.should.equal 5
      s.lng.value.should.equal 7
