(require "chai").should()

describe "form reducer", ->

  R = require "../../src/reducers/form"
  A = require "../../src/Actions"

  it "should be a function", ->
    R.should.be.a "function"

  describe "'edit' form", ->

    it "sets the 'lat' and 'lng' fields if a marker was set", ->
      action = null
      asyncAction = A.setMarker({ lat: 5, lng: 7 })
      getState = () -> {}
      dispatch = (arg) -> action = arg
      asyncAction(dispatch, getState)
      s = R({}, action).edit
      s.values.lat.should.equal 5
      s.values.lng.should.equal 7
