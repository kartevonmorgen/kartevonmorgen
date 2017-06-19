import chai     from "chai";
import R        from "../../src/reducers/map";
import Actions  from "../../src/Actions";

chai.should();

describe("url reducer", () => {

  it("should be a function", () => {
    R.should.be.a("function");
  });

  describe("hash", () => {
    it("should have search string and tags when action is fired", () => {
      const actionToBeDispatched = Actions.urlSetSearch("blabla");
      let action = null;
      actionToBeDispatched(
        ((arg) => { action = arg; }),
        (() => { return {}; }));
      const hash = R({}, action).hash;
      return hash.should.equal("blubb");
    });
  });
});