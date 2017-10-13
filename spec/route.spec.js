import chai            from "chai";
import Actions         from "../src/Actions";
import url_reducer     from "../src/reducers/url";
import T               from "../src/constants/ActionTypes";
import RoutingUsecases from "../src/constants/RoutingUsecases"

chai.should();

describe("router", () => {

  describe("window.location.hash", () => {
    xit("should be updated after CHANGE_URL action", () => {
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
          hash: ""
        }
      });

      window.location.hash = "#/?center=47.0,9.0&zoom=13&search=blabla";

      Actions.urlSetCenter({lat: 1.0, lng: 2.0})(dispatch, getState);
      const url_state = url_reducer({}, action);
      window.location.hash.should.equal("#/?center=1.0000,2.0000&zoom=13&search=blabla")
    });
  });
});