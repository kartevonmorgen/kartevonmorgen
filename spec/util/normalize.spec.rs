import chai from "chai";
import N    from "../../src/util/normalize";

chai.should();

describe("Normalization", () => {
  describe("url", () => {
    it("should add missing protocol", () => {
      N.url("foo.bar").should.equal("http://foo.bar");
      N.url("http://foo.bar").should.equal("http://foo.bar");
      N.url("https://foo.bar").should.equal("https://foo.bar");
      N.url("").should.equal("");
      should.not.exist(N.url());
    });
  });
});
