// TODO: import chai from "chai";
// TODO: import V    from "../../src/util/validation";
// TODO: 
// TODO: import 'babel-polyfill';
// TODO: 
// TODO: chai.should();
// TODO: 
// TODO: describe("Validation", () => {
// TODO: 
// TODO:   describe("entryForm", () => {
// TODO: 
// TODO:     const F = V.entryForm;
// TODO: 
// TODO:     describe("title", () => {
// TODO: 
// TODO:       it("should exist", () => {
// TODO:         F({
// TODO:           title: null
// TODO:         }).title.should.satisfy((error) => {
// TODO:           if(error.includes("Pflicht") || error.includes("required")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }
// TODO:         })
// TODO:       }
// TODO:       );
// TODO: 
// TODO:       it("should be at least 3 chars long", () => {
// TODO:         F({
// TODO:           title: "a"
// TODO:         }).title.should.satisfy((error) => {
// TODO:           if(error.includes("Zu kurzer Titel") || error.includes("Title too short")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }
// TODO:         })
// TODO:       });
// TODO: 
// TODO:       it("should be at most 50 chars long", () => {
// TODO: 
// TODO:         F({
// TODO:           title: new Array(51).fill('a').join(''),
// TODO:         }).title.should.satisfy((error) => {
// TODO:           if(error.includes("Zu kurzer Titel") || error.includes("Title too long")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }
// TODO:         })
// TODO:       });
// TODO: 
// TODO:       it("should not throw error if valid", () => {
// TODO:         should.not.exist(F({
// TODO:           title: "abc"
// TODO:         }).title);
// TODO:       });
// TODO:     });
// TODO: 
// TODO:     describe("description", () => {
// TODO: 
// TODO:       it("should exist", () => {
// TODO:         F({
// TODO:           description: null
// TODO:         }).description.should.satisfy((error) => {
// TODO:           if(error.includes("Pflich") || error.includes("required")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }
// TODO:         })
// TODO:       });
// TODO: 
// TODO:       it("should be at least 10 chars long", () => {
// TODO:         F({
// TODO:           description: "asadf"
// TODO:         }).description.should.satisfy((error) => {
// TODO:           if(error.includes("Zu wenig Text") || error.includes("too short")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }
// TODO:         })
// TODO:       });
// TODO: 
// TODO:       it("should be at most 250 chars long", () => {
// TODO:         F({
// TODO:           description: new Array(251).fill('a').join(''),
// TODO:         }).description.should.satisfy((error) => {
// TODO:           if(error.includes("Beschreibung zu lang") || error.includes("too long")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }
// TODO:         })
// TODO:       });
// TODO: 
// TODO:       it("should not throw error if valid", () => {
// TODO:         should.not.exist(F({
// TODO:           description: new Array(50).fill('a').join(''),
// TODO:         }).description);
// TODO:       });
// TODO:     });
// TODO: 
// TODO:     describe("lat & lng", () => {
// TODO: 
// TODO:       it("should exist", () => {
// TODO:         F({
// TODO:           lat: null
// TODO:         }).lat.should.satisfy((error) => {
// TODO:           if(error.includes("Pflicht") || error.includes("required")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }
// TODO:         })
// TODO:         F({
// TODO:           lng: null
// TODO:         }).lng.should.satisfy((error) => {
// TODO:           if(error.includes("Pflicht") || error.includes("required")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }
// TODO:         })
// TODO:       });
// TODO: 
// TODO:       it("should be a number ", () => {
// TODO:         F({
// TODO:           lat: "ab"
// TODO:         }).lat.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültiger Breitengrad") || error.includes("Invalid Latitude")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }
// TODO:         })
// TODO:         F({
// TODO:           lng: "ab"
// TODO:         }).lng.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültiger Längengrad") || error.includes("Invalid Longitude")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:         should.not.exist(F({
// TODO:           lat: "1"
// TODO:         }).lat);
// TODO:         should.not.exist(F({
// TODO:           lng: "1"
// TODO:         }).lng);
// TODO:       });
// TODO: 
// TODO:       it("should not throw error if valid", () => {
// TODO:         should.not.exist(F({
// TODO:           lat: 1
// TODO:         }).lat);
// TODO:         should.not.exist(F({
// TODO:           lng: 1
// TODO:         }).lng);
// TODO:       });
// TODO:     });
// TODO: 
// TODO:     describe("category", () => {
// TODO: 
// TODO:       it("should exist", () => {
// TODO:         F({
// TODO:           category: null
// TODO:         }).category.should.satisfy((error) => {
// TODO:           if(error.includes("Pflicht") || error.includes("required")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }
// TODO:         })
// TODO:       });
// TODO: 
// TODO:       it("should be a string", () => {
// TODO:         F({
// TODO:           category: 1
// TODO:         }).category.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültig") || error.includes("Invalid")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:         F({
// TODO:           category: 1.7
// TODO:         }).category.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültig") || error.includes("Invalid")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:         F({
// TODO:           category: {}
// TODO:         }).category.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültig") || error.includes("Invalid")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:         F({
// TODO:           category: []
// TODO:         }).category.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültig") || error.includes("Invalid")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:       });
// TODO: 
// TODO:       it("should not throw error if valid", () => {
// TODO:         should.not.exist(F({
// TODO:           category: "1"
// TODO:         }).category);
// TODO:       });
// TODO:     });
// TODO: 
// TODO:     describe("license", () => {
// TODO: 
// TODO:       it("should exist", () => {
// TODO:         F({
// TODO:           license: null
// TODO:         }).license.should.satisfy((error) => {
// TODO:           if(error.includes("Lizenzzustimmung") || error.includes("Please accept")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:       });
// TODO: 
// TODO:       it("should be a boolean", () => {
// TODO:         F({
// TODO:           license: 1
// TODO:         }).license.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültig") || error.includes("Invalid")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:         F({
// TODO:           license: 1.7
// TODO:         }).license.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültig") || error.includes("Invalid")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:         F({
// TODO:           license: {}
// TODO:         }).license.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültig") || error.includes("Invalid")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:         F({
// TODO:           license: []
// TODO:         }).license.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültig") || error.includes("Invalid")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:       });
// TODO: 
// TODO:       it("should be accepted", () => {
// TODO:         F({
// TODO:           license: false
// TODO:         }).license.should.satisfy((error) => {
// TODO:           if(error.includes("Lizenzzustimmung") || error.includes("Please accept")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:         should.not.exist(F({
// TODO:           license: true
// TODO:         }).license)
// TODO:       });
// TODO:     });
// TODO: 
// TODO:     describe("homepage", () => {
// TODO:       it("should have a top-level domain", () => {
// TODO:         F({
// TODO:           homepage: "blabla"
// TODO:         }).homepage.should.satisfy((error) => {
// TODO:           if(error.includes("Ungültige URL") || error.includes("Invalid URL")){
// TODO:             return true;
// TODO:           } else {
// TODO:             return false;
// TODO:           }});
// TODO:       });
// TODO:     });
// TODO:   });
// TODO: });
