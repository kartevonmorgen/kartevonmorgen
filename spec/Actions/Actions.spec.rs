// TODO: import chai from "chai";
// TODO: import A    from "../../src/Actions";
// TODO: import { getLicenseForEntry } from "../../src/Actions/server";
// TODO: import { NEW_ENTRY_LICENSE } from "../../src/constants/App";
// TODO: import LICENSES from "../../src/constants/Licenses";
// TODO: 
// TODO: chai.should();
// TODO: 
// TODO: describe("Actions", () => {
// TODO: 
// TODO:   it("should be functions", () => {
// TODO:     Object
// TODO:       .entries(A)
// TODO:       .forEach(([_,v]) => v.should.be.a("function"))
// TODO:   });
// TODO: 
// TODO:   it("should return objects or functions", () =>
// TODO:     Object
// TODO:       .entries(A)
// TODO:       .map(([_,v]) => v())
// TODO:       .forEach((a) =>
// TODO:          (typeof a === "object" || typeof a === "function").should.be["true"]));
// TODO: 
// TODO:   it("should return objects with a type attribute", () =>
// TODO:     Object
// TODO:       .entries(A)
// TODO:       .map(([_,v]) => v())
// TODO:       .filter(v => typeof v === "object")
// TODO:       .forEach((a) => a.type.should.be.a("string")));
// TODO: 
// TODO:   it("returned object must contain type property", () =>
// TODO:     Object
// TODO:       .entries(A)
// TODO:       .map(([_,v]) => v())
// TODO:       .filter(a => typeof a === "object")
// TODO:       .forEach((a) =>
// TODO:         Object
// TODO:           .entries(a)
// TODO:           .map(([k,_]) => k === "type")
// TODO:           .some(valid => valid.should.be["true"])));
// TODO: 
// TODO:   describe("search", () =>
// TODO:     it("should return a function", () =>
// TODO:       A.search().should.be.a("function")));
// TODO: });
// TODO: 
// TODO: describe("getLicenseForEntry", () => {
// TODO:   it("should return a string", () =>
// TODO:     getLicenseForEntry(null).should.be.a("string"));
// TODO:   it("should return our standard license if null is given as current license", () =>
// TODO:     getLicenseForEntry(null).should.equal(NEW_ENTRY_LICENSE));
// TODO:   it("should return our standard license if empty string is given as current license", () =>
// TODO:     getLicenseForEntry("").should.equal(NEW_ENTRY_LICENSE));
// TODO:   it("should return our standard license if an unknown license is given as current license", () =>
// TODO:     getLicenseForEntry("foobar").should.equal(NEW_ENTRY_LICENSE));
// TODO:   it("should return our standard license if an integer is given as current license", () =>
// TODO:     getLicenseForEntry(42).should.equal(NEW_ENTRY_LICENSE));
// TODO:   it("should return our standard license if it is given as current license", () =>
// TODO:     getLicenseForEntry(NEW_ENTRY_LICENSE).should.equal(NEW_ENTRY_LICENSE));
// TODO:   it("should return our the Open Database License if it is given as current license", () =>
// TODO:     getLicenseForEntry(LICENSES.ODBL).should.equal(LICENSES.ODBL));
// TODO: });
