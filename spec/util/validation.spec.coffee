(require "chai").should()

describe "Validation", ->

  V = require "../../src/util/validation"

  describe "entryForm", ->

    F = V.entryForm

    describe "title", ->

      it "should exist", ->
        F(title:null).title.should.have.string "Pflicht"

      it "should be at least 3 chars long", ->
        F(title:"a").title.should.have.string "Zu kurzer Titel"

      it "should be at most 40 chars long", ->
        t = ("a" for i in [1..50]).join ''
        F(title:t).title.should.have.string "Zu langer Titel"

      it "should not throw error if valid", ->
        should.not.exist F(title:"abc").title

    describe "description", ->

      it "should exist", ->
        F(description:null).description.should.have.string "Pflicht"

      it "should be at least 10 chars long", ->
        F(description:"asadf").description.should.have.string "Zu wenig Text"

      it "should be at most 160 chars long", ->
        t = ("a" for i in [1..170]).join ''
        F(description:t).description.should.have.string "Zu lange Beschreibung"

      it "should not throw error if valid", ->
        t = ("a" for i in [1..50]).join ''
        should.not.exist F(description:t).description

    describe "lat & lng", ->

      it "should exist", ->
        F(lat:null).lat.should.have.string "Pflicht"
        F(lng:null).lng.should.have.string "Pflicht"

      it "should be a number ", ->
        F(lat:"ab").lat.should.have.string "Ungültiger Breitengrad"
        F(lng:"ab").lng.should.have.string "Ungültiger Längengrad"
        should.not.exist F(lat:"1").lat
        should.not.exist F(lng:"1").lng

      it "should not throw error if valid", ->
        should.not.exist F(lat:1).lat
        should.not.exist F(lng:1).lng

    describe "category", ->

      it "should exist", ->
        F(category:null).category.should.have.string "Pflicht"

      it "should be a string", ->
        F(category: 1).category.should.have.string "Ungültig"
        F(category: 1.7).category.should.have.string "Ungültig"
        F(category: {}).category.should.have.string "Ungültig"
        F(category: []).category.should.have.string "Ungültig"

      it "should not throw error if valid", ->
        should.not.exist F(category:"1").category

    describe "license", ->

      it "should exist", ->
        F(license:null).license.should.have.string "Lizenzzustimmung"

      it "should be a boolean", ->
        F(license: 1)  .license.should.have.string "Ungültig"
        F(license: 1.7).license.should.have.string "Ungültig"
        F(license: {}) .license.should.have.string "Ungültig"
        F(license: []) .license.should.have.string "Ungültig"

      it "should be accepted", ->
        F(license:no).license.should.have.string "Lizenzzustimmung ist nötig"
        should.not.exist F(license: yes).license
