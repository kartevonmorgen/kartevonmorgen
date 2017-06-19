import chai from "chai";
import A    from "../src/Actions";

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

  it("must not return objects with properties other than type, error, payload and meta", () =>
    Object
      .entries(A)
      .map(([_,v]) => v())
      .filter(a => typeof a === "object")
      .forEach((a) =>
        Object
          .entries(a)
          .map(([k,_]) => k === "type" || k === "payload" || k === "error" || k === "meta")
          .forEach(valid => valid.should.be["true"])));

  describe("search", () =>
    it("should return a function", () =>
      A.search().should.be.a("function")));
});
