import chai     from "chai";
import R        from "../../src/reducers/map";
import Actions  from "../../src/Actions";

chai.should();

describe("map reducer", () => {

  it("should be a function", () => {
    R.should.be.a("function");
  });

  describe("marker", () => {
    it("should be set when the action was fired", () => {
      const actionToBeDispatched = Actions.setMarker({
        lat: 5,
        lng: 7
      });
      let action = null;
      actionToBeDispatched(
        ((arg) => { action = arg; }),
        (() => { return {}; }));
      const marker = R({}, action).marker;
      marker.lat.should.equal(5);
      return marker.lng.should.equal(7);
    });
  });

  describe("bounding box", () => {
    it("should be set when the action was fired", () => {
      const action = Actions.setBbox({ foo: "bar" });
      const bbox = R({}, action).bbox;
      bbox.foo.should.equal("bar");
    });
  });
});
