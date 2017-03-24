require("chai").should();

import V from "../../src/util/validation";

describe("Validation", () => {

  describe("entryForm", () => {

    const F = V.entryForm;

    describe("title", () => {

      it("should exist", () => {
        F({
          title: null
        }).title.should.have.string("Pflicht");
      });

      it("should be at least 3 chars long", () => {
        F({
          title: "a"
        }).title.should.have.string("Zu kurzer Titel");
      });

      it("should be at most 40 chars long", () => {
        var i, t;
        t = ((function() {
          var j, results;
          results = [];
          for (i = j = 1; j <= 50; i = ++j) {
            results.push("a");
          }
          return results;
        })()).join('');
        F({
          title: t
        }).title.should.have.string("Zu langer Titel");
      });

      it("should not throw error if valid", () => {
        should.not.exist(F({
          title: "abc"
        }).title);
      });
    });

    describe("description", () => {

      it("should exist", () => {
        F({
          description: null
        }).description.should.have.string("Pflicht");
      });

      it("should be at least 10 chars long", () => {
        return F({
          description: "asadf"
        }).description.should.have.string("Zu wenig Text");
      });

      it("should be at most 250 chars long", () => {
        var i, t;
        t = ((function() {
          var j, results;
          results = [];
          for (i = j = 1; j <= 251; i = ++j) {
            results.push("a");
          }
          return results;
        })()).join('');
        F({
          description: t
        }).description.should.have.string("Zu lange Beschreibung");
      });

      it("should not throw error if valid", () => {
        var i, t;
        t = ((function() {
          var j, results;
          results = [];
          for (i = j = 1; j <= 50; i = ++j) {
            results.push("a");
          }
          return results;
        })()).join('');

        should.not.exist(F({
          description: t
        }).description);
      });
    });

    describe("lat & lng", () => {

      it("should exist", () => {
        F({
          lat: null
        }).lat.should.have.string("Pflicht");
        F({
          lng: null
        }).lng.should.have.string("Pflicht");
      });

      it("should be a number ", function() {
        F({
          lat: "ab"
        }).lat.should.have.string("Ungültiger Breitengrad");
        F({
          lng: "ab"
        }).lng.should.have.string("Ungültiger Längengrad");
        should.not.exist(F({
          lat: "1"
        }).lat);
        should.not.exist(F({
          lng: "1"
        }).lng);
      });

      it("should not throw error if valid", () => {
        should.not.exist(F({
          lat: 1
        }).lat);
        should.not.exist(F({
          lng: 1
        }).lng);
      });
    });

    describe("category", () => {

      it("should exist", () => {
        F({
          category: null
        }).category.should.have.string("Pflicht");
      });

      it("should be a string", () => {
        F({
          category: 1
        }).category.should.have.string("Ungültig");
        F({
          category: 1.7
        }).category.should.have.string("Ungültig");
        F({
          category: {}
        }).category.should.have.string("Ungültig");
        F({
          category: []
        }).category.should.have.string("Ungültig");
      });

      it("should not throw error if valid", () => {
        should.not.exist(F({
          category: "1"
        }).category);
      });
    });

    describe("license", () => {

      it("should exist", () => {
        F({
          license: null
        }).license.should.have.string("Lizenzzustimmung");
      });

      it("should be a boolean", () => {
        F({
          license: 1
        }).license.should.have.string("Ungültig");
        F({
          license: 1.7
        }).license.should.have.string("Ungültig");
        F({
          license: {}
        }).license.should.have.string("Ungültig");
        F({
          license: []
        }).license.should.have.string("Ungültig");
      });

      it("should be accepted", () => {
        F({
          license: false
        }).license.should.have.string("Lizenzzustimmung ist nötig");
        should.not.exist(F({
          license: true
        }).license);
      });
    });

    describe("homepage", () => {

      it("should contain the protocol", () => {
        F({
          homepage: "example.org"
        }).homepage.should.have.string('Ungültige URL ("http://" oder "https://" fehlt)');
        F({
          homepage: "www.example.org"
        }).homepage.should.have.string("Ungültig");
        should.not.exist(F({
          homepage: "http://foo.bar"
        }).homepage);
        should.not.exist(F({
          homepage: "https://foo.bar"
        }).homepage);
      });

      it("should be long enough", () => {
        F({
          homepage: "http://"
        }).homepage.should.have.string("Ungültig");
        F({
          homepage: "https://"
        }).homepage.should.have.string("Ungültig");
      });
    });
  });
});
