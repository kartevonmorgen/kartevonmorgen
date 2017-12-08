import chai from "chai";
import A    from "../../src/Actions";
import { getLicenseForEntry } from "../../src/Actions/server";
import { NEW_ENTRY_LICENSE } from "../../src/constants/App";
import LICENSES from "../../src/constants/Licenses";

chai.should();

describe("Actions", () => {

  it("should be functions", () => {
    Object
      .entries(A)
      .forEach(([_,v]) => v.should.be.a("function"))
  });

  it("should return objects or functions", () =>
    Object
      .entries(A)
      .map(([_,v]) => v())
      .forEach((a) =>
         (typeof a === "object" || typeof a === "function").should.be["true"]));

  it("should return objects with a type attribute", () =>
    Object
      .entries(A)
      .map(([_,v]) => v())
      .filter(v => typeof v === "object")
      .forEach((a) => a.type.should.be.a("string")));

  it("returned object must contain type property", () =>
    Object
      .entries(A)
      .map(([_,v]) => v())
      .filter(a => typeof a === "object")
      .forEach((a) =>
        Object
          .entries(a)
          .map(([k,_]) => k === "type")
          .some(valid => valid.should.be["true"])));

  describe("search", () =>
    it("should return a function", () =>
      A.search().should.be.a("function")));
});

describe("getLicenseForEntry", () => {
  it("should return a string", () =>
    getLicenseForEntry(null).should.be.a("string"));
  it("should return our standard license if null is given as current license", () =>
    getLicenseForEntry(null).should.equal(NEW_ENTRY_LICENSE));
  it("should return our standard license if empty string is given as current license", () =>
    getLicenseForEntry("").should.equal(NEW_ENTRY_LICENSE));
  it("should return our standard license if an unknown license is given as current license", () =>
    getLicenseForEntry("foobar").should.equal(NEW_ENTRY_LICENSE));
  it("should return our standard license if an integer is given as current license", () =>
    getLicenseForEntry(42).should.equal(NEW_ENTRY_LICENSE));
  it("should return our standard license if it is given as current license", () =>
    getLicenseForEntry(NEW_ENTRY_LICENSE).should.equal(NEW_ENTRY_LICENSE));
  it("should return our the Open Database License if it is given as current license", () =>
    getLicenseForEntry(LICENSES.ODBL).should.equal(LICENSES.ODBL));
});
