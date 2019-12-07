// TODO: import chai            from "chai";
// TODO: import url_reducer     from "../../src/reducers/url";
// TODO: import Actions         from "../../src/Actions";
// TODO: import T               from "../../src/constants/ActionTypes";
// TODO: import RoutingUsecases from "../../src/constants/RoutingUsecases"
// TODO: 
// TODO: chai.should();
// TODO: 
// TODO: describe("url reducer", () => {
// TODO: 
// TODO:   it("should be a function", () => {
// TODO:     url_reducer.should.be.a("function");
// TODO:   });
// TODO: 
// TODO:   describe("updateStateFromURL", () => {
// TODO:     it("should save current hash in state", () => {
// TODO:       let action = Actions.updateStateFromURL("#/?center=47.0000,0.0000&zoom=7");
// TODO:       url_reducer({}, action).hash.should.equal("#/?center=47.0000,0.0000&zoom=7");
// TODO:     });
// TODO: 
// TODO:     it("should detect the CHANGE_CENTER routing usecase", () => {
// TODO:       let action = Actions.updateStateFromURL("#/?center=47.0000,0.0000");
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_CENTER);
// TODO:       action = Actions.updateStateFromURL("#/?center=47.0000,0.0000&zoom=15");
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_CENTER);
// TODO:     });
// TODO: 
// TODO:     it("should detect the CHANGE_ZOOM routing usecase", () => {
// TODO:       let action = Actions.updateStateFromURL("#/?zoom=15");
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_ZOOM);
// TODO:       action = Actions.updateStateFromURL("#/?center=47.0000,0.0000&zoom=15");
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_ZOOM);
// TODO:     });
// TODO: 
// TODO:     it("should detect the SHOW_ENTRY routing usecase", () => {
// TODO:       let action = Actions.updateStateFromURL("#/?entry=fh7das8yerhfs");
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.SHOW_ENTRY);
// TODO:       action = Actions.updateStateFromURL("#/?entry=kajsf98723oerhjksdfh&center=47.0000,0.0000&zoom=15");
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.SHOW_ENTRY);
// TODO:     });
// TODO: 
// TODO:     it("should detect the CHANGE_SEARCH routing usecase", () => {
// TODO:       let action = Actions.updateStateFromURL("#/?search=blabla");
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_SEARCH);
// TODO:     });
// TODO: 
// TODO:     it("should detect the CONFIRM_EMAIL routing usecase", () => {
// TODO:       let action = Actions.updateStateFromURL("#/?confirm_email=e841bd2e156440e6bc1beaf5af03d747");
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CONFIRM_EMAIL);
// TODO:     });
// TODO: 
// TODO:     it("should detect the CHANGE_SIDEBAR_VISIBILITY routing usecase", () => {
// TODO:       let action = Actions.updateStateFromURL("#/?left=hide");
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY);
// TODO:       action = Actions.updateStateFromURL("#/?left=show");
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_SIDEBAR_VISIBILITY);
// TODO:     });
// TODO: 
// TODO:     it("should only use SHOW_ENTRY and CHANGE_ZOOM usecases when url specifies 'entry'", () => {
// TODO:       let action = Actions.updateStateFromURL("#/?entry=0b6bf94f5be84bd1a6faccabb1b93475&zoom=13");
// TODO:       url_reducer({}, action).routingUsecases.length.should.equal(2);
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.SHOW_ENTRY);
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_ZOOM);
// TODO: 
// TODO:       action = Actions.updateStateFromURL("#/?entry=0b6bf94f5be84bd1a6faccabb1b93475&center=47.0,9.0&zoom=13&search=blabla&zoom=13");
// TODO:       url_reducer({}, action).routingUsecases.length.should.equal(2);
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.SHOW_ENTRY);
// TODO:       url_reducer({}, action).routingUsecases.should.contain(RoutingUsecases.CHANGE_ZOOM);
// TODO:     });
// TODO:   });
// TODO: 
// TODO:   describe("setMapCenter", () => {
// TODO:     const center = {
// TODO:       lat: 50.100,
// TODO:       lng: 10.100
// TODO:     };
// TODO: 
// TODO:     const oldState = {
// TODO:       hash: "#/?center=0.100,0.100&zoom=10.00",
// TODO:       routingUsecases: []
// TODO:     };
// TODO: 
// TODO:     it("should change center in hash state", () => {
// TODO:       let action = Actions.setCenter(center);
// TODO:       url_reducer(undefined, action).hash.should.equal("#/?center=50.100,10.100");
// TODO:       url_reducer(oldState, action).hash.should.equal("#/?center=50.100,10.100&zoom=10.00");
// TODO:     });
// TODO:   });
// TODO: 
// TODO:   describe("setZoom", () => {
// TODO:     const zoom = 10;
// TODO: 
// TODO:     const oldState = {
// TODO:       hash: "#/?center=0.100,0.100&zoom=0",
// TODO:       routingUsecases: []
// TODO:     };
// TODO: 
// TODO:     it("should change zoom in hash state", () => {
// TODO:       let action = Actions.setZoom(zoom);
// TODO:       url_reducer(undefined, action).hash.should.equal("#/?zoom=10.00");
// TODO:       url_reducer(oldState, action).hash.should.equal("#/?center=0.100,0.100&zoom=10.00");
// TODO:     });
// TODO:   });
// TODO: });
