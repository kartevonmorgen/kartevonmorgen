(require "chai").should()

describe "view reducer", ->

  V  = require "../../src/reducers/view"
  PV = require "../../src/constants/PanelView"
  AT = require "../../src/constants/ActionTypes"

  it "should be a function", ->
    V.should.be.a "function"

  describe "panel", ->
    it "is a key in view store", ->
      V().should.have.ownProperty "panel"

    it "should change to IMPRINT view after action SHOW_IMPRINT", ->
      V({},{type:AT.SHOW_IMPRINT}).panel.should.equal PV.IMPRINT

    it "should change to RESULT view after action SEARCH_RESULT", ->
      V({},{type:AT.SEARCH_RESULT}).panel.should.equal PV.RESULT

    it "should not be changed after action SEARCH_RESULT if it exists", ->
      V({panel:"foo"},{type:AT.SEARCH_RESULT}).panel.should.equal "foo"
