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
        payload: {
          body: {
            username: "username",
            email: "email"
          }
        },
        error: false
      };
      should.exist(user_reducer(undefined, action).username);
      user_reducer(undefined, action).username.should.equal("username");

      action = {
        type: T.LOGIN_RESULT,
        payload: "error",
        error: true
      };
      should.not.exist(user_reducer(undefined, action).username);

      return true;
    });
  });
});