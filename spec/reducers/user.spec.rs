// TODO: import chai           from "chai";
// TODO: import user_reducer   from "../../src/reducers/user";
// TODO: import Actions        from "../../src/Actions";
// TODO: import T              from "../../src/constants/ActionTypes";
// TODO: 
// TODO: chai.should();
// TODO: 
// TODO: describe("user reducer", () => {
// TODO: 
// TODO:   it("should be a function", () => {
// TODO:     user_reducer.should.be.a("function");
// TODO:   });
// TODO: 
// TODO:   describe("login", () => {
// TODO:     it("should set user.email when successful and set it to null when not successful", () => {
// TODO: 
// TODO:       let action = {
// TODO:         type: T.LOGIN_RESULT,
// TODO:         payload: {
// TODO:           body: {
// TODO:             email: "email"
// TODO:           }
// TODO:         },
// TODO:         error: false
// TODO:       };
// TODO:       should.exist(user_reducer(undefined, action).email);
// TODO:       user_reducer(undefined, action).email.should.equal("email");
// TODO: 
// TODO:       action = {
// TODO:         type: T.LOGIN_RESULT,
// TODO:         payload: "error",
// TODO:         error: true
// TODO:       };
// TODO:       should.not.exist(user_reducer(undefined, action).email);
// TODO: 
// TODO:       return true;
// TODO:     });
// TODO:   });
// TODO: });
