// TODO: import { should } from "chai";
// TODO: 
// TODO: import constructUrl from "../../src/util/constructUrl";
// TODO: 
// TODO: describe("constructUrl", () => {
// TODO:   it("should be a function", () => {
// TODO:     constructUrl.should.be.a("function");
// TODO:   });
// TODO: 
// TODO:   const center = {
// TODO:     lat: 50.100,
// TODO:     lng: 10.100
// TODO:   };
// TODO:   const zoom = 10;
// TODO:   const entry = "abcdef";
// TODO:   const searchText = "solawi"
// TODO: 
// TODO:   it("should return a hash with center & zoom when these are given", () => {
// TODO:     constructUrl(null, center, zoom, null, null)
// TODO:       .should.equal("#/?center=50.100,10.100&zoom=10.00");
// TODO:   });
// TODO: 
// TODO:   it("should return a hash with entry and optionally zoom whenever entry is given", () => {
// TODO:     constructUrl(entry, null, null, null, null)
// TODO:       .should.equal("#/?entry=abcdef");
// TODO:     constructUrl(entry, center, zoom, searchText, null)
// TODO:       .should.equal("#/?entry=abcdef&zoom=10.00");
// TODO:   });
// TODO: 
// TODO:   it("should return a hash with searchText when it is given", () => {
// TODO:     constructUrl(null, center, zoom, searchText, null)
// TODO:       .should.equal("#/?center=50.100,10.100&zoom=10.00&search=solawi");
// TODO:   });
// TODO: 
// TODO:   it("should put boolean into hash specifying left sidebar status", () => {
// TODO:     constructUrl(null, center, zoom, searchText, true)
// TODO:       .should.equal("#/?center=50.100,10.100&zoom=10.00&search=solawi&left=show");
// TODO:     constructUrl(null, center, zoom, searchText, false)
// TODO:       .should.equal("#/?center=50.100,10.100&zoom=10.00&search=solawi&left=hide");  
// TODO:   });
// TODO: });
