import { should } from "chai";

import constructUrl from "../../src/util/constructUrl";

describe("constructUrl", () => {
  it("should be a function", () => {
    constructUrl.should.be.a("function");
  });

  const center = {
    lat: 50.100,
    lng: 10.100
  };
  const zoom = 10;
  const entry = "abcdef";
  const searchText = "solawi"

  it("should return a hash with center & zoom when these are given", () => {
    constructUrl(null, center, zoom, null, null)
      .should.equal("#/?center=50.100,10.100&zoom=10.00");
  });

  it("should return a hash with entry and optionally zoom whenever entry is given", () => {
    constructUrl(entry, null, null, null, null)
      .should.equal("#/?entry=abcdef");
    constructUrl(entry, center, zoom, searchText, null)
      .should.equal("#/?entry=abcdef&zoom=10.00");
  });

  it("should return a hash with searchText when it is given", () => {
    constructUrl(null, center, zoom, searchText, null)
      .should.equal("#/?center=50.100,10.100&zoom=10.00&search=solawi");
  });

  it("should put boolean into hash specifying left sidebar status", () => {
    constructUrl(null, center, zoom, searchText, true)
      .should.equal("#/?center=50.100,10.100&zoom=10.00&search=solawi&left=show");
    constructUrl(null, center, zoom, searchText, false)
      .should.equal("#/?center=50.100,10.100&zoom=10.00&search=solawi&left=hide");  
  });
});
