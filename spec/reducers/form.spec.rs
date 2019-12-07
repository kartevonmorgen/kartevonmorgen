import chai from "chai";
import R    from "../../src/reducers/form";
import A    from "../../src/Actions";

chai.should();

describe("form reducer", () => {

  it("should be a function", () => {
    R.should.be.a("function");
  });

  describe("'edit' form", () => {
    it("sets the 'lat' and 'lng' fields if a marker was set", () => {
      let action = null;
      const asyncAction = A.setMarker({
        lat: 5,
        lng: 7
      });
      const getState = () => ({})
      const dispatch = (arg) => {
        action = arg;
      };
      asyncAction(dispatch, getState);
      const s = R({}, action).edit;
      s.values.lat.should.equal(5);
      return s.values.lng.should.equal(7);
    });
  });
});
