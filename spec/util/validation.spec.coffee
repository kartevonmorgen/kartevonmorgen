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

    describe "description", ->

      it "should exist", ->
        F(description:null).description.should.have.string "Pflicht"

      it "should be at least 10 chars long", ->
        F(description:"asadf").description.should.have.string "Zu wenig Text"

      it "should be at most 160 chars long", ->
        t = ("a" for i in [1..170]).join ''
        F(description:t).description.should.have.string "Zu lange Beschreibung"

    describe "lat & lng", ->

      it "should exist", ->
        F(lat:null).lat.should.have.string "Pflicht"
        F(lng:null).lng.should.have.string "Pflicht"

      it "should be a number ", ->
        F(lat:"ab").lat.should.have.string "Ungültiger Breitengrad"
        F(lng:"ab").lng.should.have.string "Ungültiger Längengrad"
        should.not.exist F(lat:"1").lat
        should.not.exist F(lng:"1").lng

    describe "category", ->

      it "should exist", ->
        F(category:null).category.should.have.string "Pflicht"

      it "should be a positive integer", ->
        F(category:"a").category.should.have.string "Ungültig"
        F(category:"1.7").category.should.have.string "Ungültig"
        should.not.exist F(category:"1").category
        F(category:"-1").category.should.have.string "Ungültig"
