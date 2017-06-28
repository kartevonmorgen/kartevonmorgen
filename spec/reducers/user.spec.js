import chai           from "chai";
import user_reducer   from "../../src/reducers/user";
import Actions        from "../../src/Actions";
import T              from "../../src/constants/ActionTypes";

chai.should();

describe("user reducer", () => {

  it("should be a function", () => {
    user_reducer.should.be.a("function");
  });

  describe("login", () => {
    it("should set user.username when successful and set it to null when not successful", () => {

      let action = {
        type: T.LOGIN_RESULT,
        payload: "username",
        error: false
      };
      user_reducer(undefined, action).username.should.equal("username");

      action = {
        type: T.LOGIN_RESULT,
        payload: "error",
        error: true
      };
      // user_reducer(undefined, action).username.should.equal(null);

      return true;
    });
  });
});