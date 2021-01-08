import chai from "chai";
import V    from "../../src/util/validation";

chai.should();

describe("Validation", () => {

  describe("entryForm", () => {

    const F = V.entryForm;

    describe("title", () => {

      it("should exist", () => {
        F({
          title: null
        }).title.should.satisfy((error) => {
          if(error.includes("Pflicht") || error.includes("required")){
            return true;
          } else {
            return false;
          }
        })
      }
      );

      it("should be at least 3 chars long", () => {
        F({
          title: "a"
        }).title.should.satisfy((error) => {
          if(error.includes("Zu kurzer Titel") || error.includes("Title too short")){
            return true;
          } else {
            return false;
          }
        })
      });

      it("should be at most 50 chars long", () => {

        F({
          title: new Array(51).fill('a').join(''),
        }).title.should.satisfy((error) => {
          if(error.includes("Zu kurzer Titel") || error.includes("Title too long")){
            return true;
          } else {
            return false;
          }
        })
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
        }).description.should.satisfy((error) => {
          if(error.includes("Pflich") || error.includes("required")){
            return true;
          } else {
            return false;
          }
        })
      });

      it("should be at least 10 chars long", () => {
        F({
          description: "asadf"
        }).description.should.satisfy((error) => {
          if(error.includes("Zu wenig Text") || error.includes("too short")){
            return true;
          } else {
            return false;
          }
        })
      });

      it("should be at most 250 chars long", () => {
        F({
          description: new Array(251).fill('a').join(''),
        }).description.should.satisfy((error) => {
          if(error.includes("Beschreibung zu lang") || error.includes("too long")){
            return true;
          } else {
            return false;
          }
        })
      });

      it("should not throw error if valid", () => {
        should.not.exist(F({
          description: new Array(50).fill('a').join(''),
        }).description);
      });
    });

    describe("lat & lng", () => {

      it("should exist", () => {
        F({
          lat: null
        }).lat.should.satisfy((error) => {
          if(error.includes("Pflicht") || error.includes("required")){
            return true;
          } else {
            return false;
          }
        })
        F({
          lng: null
        }).lng.should.satisfy((error) => {
          if(error.includes("Pflicht") || error.includes("required")){
            return true;
          } else {
            return false;
          }
        })
      });

      it("should be a number ", () => {
        F({
          lat: "ab"
        }).lat.should.satisfy((error) => {
          if(error.includes("Ungültiger Breitengrad") || error.includes("Invalid Latitude")){
            return true;
          } else {
            return false;
          }
        })
        F({
          lng: "ab"
        }).lng.should.satisfy((error) => {
          if(error.includes("Ungültiger Längengrad") || error.includes("Invalid Longitude")){
            return true;
          } else {
            return false;
          }});
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
        }).category.should.satisfy((error) => {
          if(error.includes("Pflicht") || error.includes("required")){
            return true;
          } else {
            return false;
          }
        })
      });

      it("should be a string", () => {
        F({
          category: 1
        }).category.should.satisfy((error) => {
          if(error.includes("Ungültig") || error.includes("Invalid")){
            return true;
          } else {
            return false;
          }});
        F({
          category: 1.7
        }).category.should.satisfy((error) => {
          if(error.includes("Ungültig") || error.includes("Invalid")){
            return true;
          } else {
            return false;
          }});
        F({
          category: {}
        }).category.should.satisfy((error) => {
          if(error.includes("Ungültig") || error.includes("Invalid")){
            return true;
          } else {
            return false;
          }});
        F({
          category: []
        }).category.should.satisfy((error) => {
          if(error.includes("Ungültig") || error.includes("Invalid")){
            return true;
          } else {
            return false;
          }});
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
        }).license.should.satisfy((error) => {
          if(error.includes("Lizenzzustimmung") || error.includes("Please accept")){
            return true;
          } else {
            return false;
          }});
      });

      it("should be a boolean", () => {
        F({
          license: 1
        }).license.should.satisfy((error) => {
          if(error.includes("Ungültig") || error.includes("Invalid")){
            return true;
          } else {
            return false;
          }});
        F({
          license: 1.7
        }).license.should.satisfy((error) => {
          if(error.includes("Ungültig") || error.includes("Invalid")){
            return true;
          } else {
            return false;
          }});
        F({
          license: {}
        }).license.should.satisfy((error) => {
          if(error.includes("Ungültig") || error.includes("Invalid")){
            return true;
          } else {
            return false;
          }});
        F({
          license: []
        }).license.should.satisfy((error) => {
          if(error.includes("Ungültig") || error.includes("Invalid")){
            return true;
          } else {
            return false;
          }});
      });

      it("should be accepted", () => {
        F({
          license: false
        }).license.should.satisfy((error) => {
          if(error.includes("Lizenzzustimmung") || error.includes("Please accept")){
            return true;
          } else {
            return false;
          }});
        should.not.exist(F({
          license: true
        }).license)
      });
    });

    describe("homepage", () => {
      it("should have a top-level domain", () => {
        F({
          homepage: "blabla"
        }).homepage.should.satisfy((error) => {
          if(error.includes("Ungültige URL") || error.includes("Invalid URL")){
            return true;
          } else {
            return false;
          }});
      });
    });
  });
});
