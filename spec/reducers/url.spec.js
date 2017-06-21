import chai     from "chai";
import url_reducer        from "../../src/reducers/url";
import Actions        from "../../src/Actions";
import T        from "../../src/constants/ActionTypes";

chai.should();

describe("url reducer", () => {

  it("should be a function", () => {
    url_reducer.should.be.a("function");
  });

  describe("urlSetSearch", () => {
    it("should put search text into the url", () => {
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

      Actions.urlSetSearch("blabla")(dispatch, getState);
      url_reducer({}, action).should.equal(first_query_part + "search=blabla");

      Actions.urlSetSearch(" blabla  #foo blubb  #bar   blabla")(dispatch, getState);
      url_reducer({}, action).should.equal(first_query_part + "search=blabla%20%23foo%20blubb%20%23bar%20blabla");

      Actions.urlSetSearch("blabla #")(dispatch, getState);
      url_reducer({}, action).should.equal(first_query_part + "search=blabla%20%23");

      Actions.urlSetSearch("blabla # ")(dispatch, getState);
      url_reducer({}, action).should.equal(first_query_part + "search=blabla%20%23%20");

      return true;
    });
  });

  describe("urlSetCurrentEntry", () => {
    it("should put entry into url", () => {
      let action = null;
      const dispatch = (arg) => {
        action = arg;
      };
      const getState = () => ({ 
        map: {
          center: {lat: 47.0, lng: 8.0},
          zoom: 13
        },
        search: {
          text: "blabla"
        }
      });

      Actions.urlSetCurrentEntry("f816a9259f9f4fe497b17f7d7b8611b5")(dispatch, getState);
      window.location.hash = "#/?entry=0b6bf94f5be84bd1a6faccabb1b93475&zoom=13";
      url_reducer({}, action).should.equal("#/?entry=f816a9259f9f4fe497b17f7d7b8611b5&zoom=13");
    });
  });

  describe("urlSetCenter", () => {
    it("should put center into url", () => {
      let action = null;
      const dispatch = (arg) => {
        action = arg;
      };
      const getState = () => ({ 
        map: {
          center: {lat: 47.0, lng: 8.0},
          zoom: 13
        },
        search: {
          text: "blabla"
        }
      });

      Actions.urlSetCenter({lat: 1.0, lng: 2.0})(dispatch, getState);
      window.location.hash = "#/?center=47.0,9.0&zoom=13&search=blabla";
      url_reducer({hash: "#/?center=47.0,9.0&zoom=13&search=blabla"}, action)
        .should.equal("#/?center=1.0000,2.0000&zoom=13&search=blabla");
    });

    it("should not change URL when entry is shown", () => {
      let action = null;
      const dispatch = (arg) => {
        action = arg;
      };
      const getState = () => ({ 
        map: {
          center: {lat: 47.0, lng: 8.0},
          zoom: 13
        },
        search: {
          text: "blabla"
        }
      });

      Actions.urlSetCenter({lat: 1.0, lng: 2.0})(dispatch, getState);
      window.location.hash = "#/?entry=f816a9259f9f4fe497b17f7d7b8611b5";
      url_reducer({hash: "#/?entry=f816a9259f9f4fe497b17f7d7b8611b5"}, action)
        .should.equal("#/?entry=f816a9259f9f4fe497b17f7d7b8611b5&zoom=13");
    });
  });

  describe("urlSetZoom", () => {
    it("should put zoom into url", () => {
      let action = null;
      const dispatch = (arg) => {
        action = arg;
      };
      const getState = () => ({ 
        map: {
          center: {lat: 47.0, lng: 8.0},
          zoom: 13
        },
        search: {
          text: "blabla"
        }
      });

      Actions.urlSetZoom(15)(dispatch, getState);
      window.location.hash = "#/?center=47.0,9.0&zoom=13&search=blabla";
      url_reducer({}, action).should.equal("#/?center=47.0000,8.0000&zoom=15&search=blabla");
    });
  });
});