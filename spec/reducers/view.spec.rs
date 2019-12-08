// TODO: import chai from "chai";
// TODO: import V    from "../../src/reducers/view";
// TODO: import PV   from "../../src/constants/PanelView";
// TODO: import AT   from "../../src/constants/ActionTypes";
// TODO: 
// TODO: chai.should();
// TODO: 
// TODO: describe("view reducer", () => {
// TODO: 
// TODO:   it("should be a function", () => {
// TODO:     V.should.be.a("function");
// TODO:   });
// TODO: 
// TODO:   describe("right", () => {
// TODO:     it("is a key in view store", () => {
// TODO:       V().should.have.ownProperty("right");
// TODO:     });
// TODO:     it("should change to IMPRINT view after action SHOW_IMPRINT", () => {
// TODO:       V({}, {
// TODO:         type: AT.SHOW_IMPRINT
// TODO:       }).right.should.equal(PV.IMPRINT);
// TODO:     });
// TODO:   });
// TODO: 
// TODO:   describe("left", () => {
// TODO:     it("should change to RESULT view after action SEARCH_RESULT_ENTRIES", () => {
// TODO:       V({}, {
// TODO:         type: AT.SEARCH_RESULT_ENTRIES
// TODO:       }).left.should.equal(PV.RESULT);
// TODO:     });
// TODO:     it("should not be changed after action SEARCH_RESULT_ENTRIES if it exists", () => {
// TODO:       V({
// TODO:         left: "foo"
// TODO:       }, {
// TODO:         type: AT.SEARCH_RESULT_ENTRIES
// TODO:       }).left.should.equal("foo");
// TODO:     });
// TODO:   });
// TODO: 
// TODO:   describe("the menu", () => {
// TODO:     // it("should be active in the initial state", () => {
// TODO:     //   V().menu.should.equal(true);
// TODO:     // });
// TODO:     // it("visibility can be toggled", () => {
// TODO:     //   const state1 = V(V(), {
// TODO:     //     type: AT.TOGGLE_MENU
// TODO:     //   });
// TODO:     //   state1.menu.should.equal(false);
// TODO:     //   const state2 = V(state1, {
// TODO:     //     type: AT.TOGGLE_MENU
// TODO:     //   });
// TODO:     //   state2.menu.should.equal(true);
// TODO:     // });
// TODO:     it("cannot be opend if a modal dialog is open", () => {
// TODO:       const state = V({
// TODO:         modal: PV.LOCATE,
// TODO:         menu: false
// TODO:       }, {
// TODO:         type: AT.TOGGLE_MENU
// TODO:       });
// TODO:       state.menu.should.equal(false);
// TODO:     });
// TODO:   });
// TODO: });
