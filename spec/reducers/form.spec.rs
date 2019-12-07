// TODO: import chai from "chai";
// TODO: import R    from "../../src/reducers/form";
// TODO: import A    from "../../src/Actions";
// TODO: 
// TODO: chai.should();
// TODO: 
// TODO: describe("form reducer", () => {
// TODO: 
// TODO:   it("should be a function", () => {
// TODO:     R.should.be.a("function");
// TODO:   });
// TODO: 
// TODO:   describe("'edit' form", () => {
// TODO:     it("sets the 'lat' and 'lng' fields if a marker was set", () => {
// TODO:       let action = null;
// TODO:       const asyncAction = A.setMarker({
// TODO:         lat: 5,
// TODO:         lng: 7
// TODO:       });
// TODO:       const getState = () => ({})
// TODO:       const dispatch = (arg) => {
// TODO:         action = arg;
// TODO:       };
// TODO:       asyncAction(dispatch, getState);
// TODO:       const s = R({}, action).edit;
// TODO:       s.values.lat.should.equal(5);
// TODO:       return s.values.lng.should.equal(7);
// TODO:     });
// TODO:   });
// TODO: });
