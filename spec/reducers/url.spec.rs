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
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_CENTER);
      action = Actions.updateStateFromURL("#/?center=47.0000,0.0000&zoom=15");
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_CENTER);
    });

    it("should detect the CHANGE_ZOOM routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?zoom=15");
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_ZOOM);
      action = Actions.updateStateFromURL("#/?center=47.0000,0.0000&zoom=15");
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_ZOOM);
    });

    it("should detect the SHOW_ENTRY routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?entry=fh7das8yerhfs");
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.SHOW_ENTRY);
      action = Actions.updateStateFromURL("#/?entry=kajsf98723oerhjksdfh&center=47.0000,0.0000&zoom=15");
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.SHOW_ENTRY);
    });

    it("should detect the CHANGE_SEARCH routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?search=blabla");
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_SEARCH);
    });

    it("should detect the CONFIRM_EMAIL routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?confirm_email=e841bd2e156440e6bc1beaf5af03d747");
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CONFIRM_EMAIL);
    });

    it("should detect the CHANGE_SIDEBAR_VISIBILITY routing usecase", () => {
      let action = Actions.updateStateFromURL("#/?left=hide");
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY);
      action = Actions.updateStateFromURL("#/?left=show");
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY);
    });

    it("should only use SHOW_ENTRY and CHANGE_ZOOM usecases when url specifies 'entry'", () => {
      let action = Actions.updateStateFromURL("#/?entry=0b6bf94f5be84bd1a6faccabb1b93475&zoom=13");
      url_reducer({}, action).routingUsecases.length.should.equal(2);
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.SHOW_ENTRY);
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_ZOOM);

      action = Actions.updateStateFromURL("#/?entry=0b6bf94f5be84bd1a6faccabb1b93475&center=47.0,9.0&zoom=13&search=blabla&zoom=13");
      url_reducer({}, action).routingUsecases.length.should.equal(2);
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.SHOW_ENTRY);
      url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_ZOOM);
    });
  });

  describe("setMapCenter", () => {
    const center = {
      lat: 50.100,
      lng: 10.100
    };

    const oldState = {
      hash: "#/?center=0.100,0.100&zoom=10.00",
      routingUsecases: []
    };

    it("should change center in hash state", () => {
      let action = Actions.setCenter(center);
      url_reducer(undefined, action).hash.should.equal("#/?center=50.100,10.100");
      url_reducer(oldState, action).hash.should.equal("#/?center=50.100,10.100&zoom=10.00");
    });
  });

  describe("setZoom", () => {
    const zoom = 10;

    const oldState = {
      hash: "#/?center=0.100,0.100&zoom=0",
      routingUsecases: []
    };

    it("should change zoom in hash state", () => {
      let action = Actions.setZoom(zoom);
      url_reducer(undefined, action).hash.should.equal("#/?zoom=10.00");
      url_reducer(oldState, action).hash.should.equal("#/?center=0.100,0.100&zoom=10.00");
    });
  });
});