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
    it("should set user.email when successful and set it to null when not successful", () => {

      let action = {
        type: T.LOGIN_RESULT,
        payload: {
          body: {
            email: "email"
          }
        },
        error: false
      };
      should.exist(user_reducer(undefined, action).email);
      user_reducer(undefined, action).email.should.equal("email");

      action = {
        type: T.LOGIN_RESULT,
        payload: "error",
        error: true
      };
      should.not.exist(user_reducer(undefined, action).email);

      return true;
    });
  });
});