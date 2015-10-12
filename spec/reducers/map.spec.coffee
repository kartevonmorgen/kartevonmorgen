(require "chai").should()

describe "map reducer", ->

  R       = require "../../src/reducers/map"
  Actions = require "../../src/Actions"

  it "should be a function", ->
    R.should.be.a "function"

  describe "marker", ->

    it "should be set when the action was fired", ->
      action = Actions.setMarker { lat: 5, lng: 7 }
      { marker } =  R {}, action
      marker.lat.should.equal 5
      marker.lng.should.equal 7

  describe "bounding box", ->
    it "should be set when the action was fired", ->
      action = Actions.setBbox { foo : "bar"}
      { bbox } =  R {}, action
      bbox.foo.should.equal "bar"
