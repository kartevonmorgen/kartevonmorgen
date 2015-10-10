(require "chai").should()

describe "view reducer", ->

  V  = require "../../src/reducers/view"
  PV = require "../../src/constants/PanelView"
  AT = require "../../src/constants/ActionTypes"

  it "should be a function", ->
    V.should.be.a "function"

  view_store = V()

  describe "panel", ->
    it "is a key in view store", ->
      view_store.should.have.ownProperty "panel"

    it "should change to PV.IMPRINT after action SHOW_IMPRINT", ->
      V(view_store,AT.SHOW_IMPRINT).panel == PV.IMPRINT