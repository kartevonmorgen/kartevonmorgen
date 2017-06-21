import chai     from "chai";
import R        from "../../src/reducers/url";
import A        from "../../src/Actions";
import T        from "../../src/constants/ActionTypes";

chai.should();

describe("url reducer", () => {

  it("should be a function", () => {
    R.should.be.a("function");
  });

  describe("hash", () => {
    it("should contain search string and tags when action is fired", () => {
      let action = null;
      const first_query_part = "#/?center=47.0000,8.0000&zoom=13&";

      const dispatch = (arg) => {
        action = arg;
      };
      const getState = () => ({ 
        map: {
          center: {lat: 47.0, lng: 8.0},
          zoom: 13
        }
      });

      A.urlSetSearch("blabla")(dispatch, getState);
      R({}, action).hash.should.equal(first_query_part + "search=blabla");

      A.urlSetSearch("blabla #foo #bar")(dispatch, getState);
      R({}, action).hash.should.equal(first_query_part + "search=blabla&tags=foo,bar");

      A.urlSetSearch(" blabla  #foo blubb  #bar   blabla")(dispatch, getState);
      R({}, action).hash.should.equal(first_query_part + "search=blabla%20blubb%20blabla&tags=foo,bar");

      A.urlSetSearch("blabla #")(dispatch, getState);
      R({}, action).hash.should.equal(first_query_part + "search=blabla&tags=");

      A.urlSetSearch("blabla # ")(dispatch, getState);
      R({}, action).hash.should.equal(first_query_part + "search=blabla&tags=%20");

      return true;
    });
  });
});