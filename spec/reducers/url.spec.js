import chai            from "chai";
import url_reducer     from "../../src/reducers/url";
import Actions         from "../../src/Actions";
import T               from "../../src/constants/ActionTypes";
import RoutingUsecases from "../../src/constants/RoutingUsecases"

chai.should();

describe("url reducer", () => {

  it("should be a function", () => {
    url_reducer.should.be.a("function");
  });

  describe("updateStateFromURL", () => {
    it("should save current hash in state", () => {
      let action = Actions.updateStateFromURL("#/?center=47.0000,0.0000&zoom=7");
      url_reducer({}, action).hash.should.equal("#/?center=47.0000,0.0000&zoom=7");
    });

    it("should detect the CHANGE_CENTER routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?center=47.0000,0.0000");
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.CHANGE_CENTER);
      action = Actions.updateStateFromURL("#/?center=47.0000,0.0000&zoom=15");
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.CHANGE_CENTER);
    });

    it("should detect the CHANGE_ZOOM routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?zoom=15");
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.CHANGE_ZOOM);
      action = Actions.updateStateFromURL("#/?center=47.0000,0.0000&zoom=15");
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.CHANGE_ZOOM);
    });

    it("should detect the SHOW_ENTRY routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?entry=fh7das8yerhfs");
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.SHOW_ENTRY);
      action = Actions.updateStateFromURL("#/?entry=kajsf98723oerhjksdfh&center=47.0000,0.0000&zoom=15");
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.SHOW_ENTRY);
    });

    it("should detect the CHANGE_SEARCH routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?search=blabla");
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.CHANGE_SEARCH);
    });

    it("should detect the CONFIRM_EMAIL routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?confirm_email=e841bd2e156440e6bc1beaf5af03d747");
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.CONFIRM_EMAIL);
    });

    it("should detect the CHANGE_SIDEBAR_VISIBILITY routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?left=hide");
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY);
      action = Actions.updateStateFromURL("#/?left=show");
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY);
    });

    it("should only use SHOW_ENTRY and CHANGE_ZOOM usecases when url specifies 'entry'", () => {
      let action = Actions.updateStateFromURL("#/?entry=0b6bf94f5be84bd1a6faccabb1b93475&zoom=13");
      url_reducer({}, action).routing_usecases.length.should.equal(2);
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.SHOW_ENTRY);
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.CHANGE_ZOOM);

      action = Actions.updateStateFromURL("#/?entry=0b6bf94f5be84bd1a6faccabb1b93475&center=47.0,9.0&zoom=13&search=blabla&zoom=13");
      url_reducer({}, action).routing_usecases.length.should.equal(2);
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.SHOW_ENTRY);
      url_reducer({}, action).routing_usecases.should.contain(RoutingUsecases.CHANGE_ZOOM);
    });
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
        },
        url: {
          hash: ''
        }
      });

      Actions.urlSetSearch("blabla")(dispatch, getState);
      url_reducer({}, action).hash.should.equal(first_query_part + "search=blabla");

      Actions.urlSetSearch(" blabla  #foo blubb  #bar   blabla")(dispatch, getState);
      url_reducer({}, action).hash.should.equal(first_query_part + "search=blabla%20%23foo%20blubb%20%23bar%20blabla");

      Actions.urlSetSearch("blabla #")(dispatch, getState);
      url_reducer({}, action).hash.should.equal(first_query_part + "search=blabla%20%23");

      Actions.urlSetSearch("blabla # ")(dispatch, getState);
      url_reducer({}, action).hash.should.equal(first_query_part + "search=blabla%20%23%20");

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
        },
        url: {
          hash: ''
        }
      });

      Actions.urlSetCurrentEntry("f816a9259f9f4fe497b17f7d7b8611b5")(dispatch, getState);
      window.location.hash = "#/?entry=0b6bf94f5be84bd1a6faccabb1b93475&zoom=13";
      url_reducer({}, action).hash.should.equal("#/?entry=f816a9259f9f4fe497b17f7d7b8611b5&zoom=13");
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
        },
        url: {
          hash: ''
        }
      });

      window.location.hash = "#/?center=47.0,9.0&zoom=13&search=blabla";
      Actions.urlSetCenter({lat: 1.0, lng: 2.0}, 13)(dispatch, getState);
      url_reducer({hash: "#/?center=47.0,9.0&zoom=13&search=blabla", routing_usecases: {}}, action)
        .hash.should.equal("#/?center=1.0000,2.0000&zoom=13&search=blabla");

      window.location.hash = "#";
      Actions.urlSetCenter({lat: 1.0, lng: 2.0}, 13)(dispatch, getState);
      url_reducer({hash: "", routing_usecases: {}}, action)
        .hash.should.equal("#/?center=1.0000,2.0000&zoom=13&search=blabla");
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
        },
        url: {
          hash: ''
        }
      });

      window.location.hash = "#/?entry=f816a9259f9f4fe497b17f7d7b8611b5";
      Actions.urlSetCenter({lat: 1.0, lng: 2.0}, 13)(dispatch, getState);
      url_reducer({hash: "#/?entry=f816a9259f9f4fe497b17f7d7b8611b5", routing_usecases: {}}, action)
        .hash.should.equal("#/?entry=f816a9259f9f4fe497b17f7d7b8611b5&zoom=13");
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
        },
        url: {
          hash: ''
        }
      });

      window.location.hash = "#/?center=47.0,9.0&zoom=13&search=blabla";
      Actions.urlSetZoom({lat: 47.0, lng: 8.0}, 15)(dispatch, getState);
      url_reducer({}, action).hash.should.equal("#/?center=47.0000,8.0000&zoom=15&search=blabla");
    });
  });
});