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
    it("should set user.id when successful and set it to null when not successful", () => {

      let action = {
        type: T.LOGIN_RESULT,
        payload: {
          body: {
            u_id: "u_id",
            email: "email"
          }
        },
        error: false
      };
      should.exist(user_reducer(undefined, action).id);
      user_reducer(undefined, action).id.should.equal("u_id");

      action = {
        type: T.LOGIN_RESULT,
        payload: "error",
        error: true
      };
      should.not.exist(user_reducer(undefined, action).id);

      return true;
    });
  });
});