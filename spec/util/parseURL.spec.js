import { should } from "chai";

import parseURL from "../../src/util/parseURL";

describe("parseURL", () => {
  it("should parse the hash path", () => {
    parseURL("foo.bar.com/#/foo").path.should.equal("/foo");
    parseURL("foo.bar.com/#/foo#bar").path.should.equal("/foo");
    parseURL("foo.bar.com/foo?x=y#/bar").path.should.equal("/bar");
    parseURL("foo.bar.com/#/").path.should.equal("/");
    parseURL("foo.bar.com/#").path.should.equal("/");
    parseURL("foo.bar.com/").path.should.equal("/");
    parseURL("foo.bar.com").path.should.equal("/");
    parseURL("foo.bar.com#foo").path.should.equal("/foo");
    parseURL("foo.bar.com#/foo/bar/baz").path.should.equal("/foo/bar/baz");
    parseURL("foo.bar.com#/foo/bar/baz/").path.should.equal("/foo/bar/baz");
  }); 

  it("should parse the hash search parameters", () => {
    parseURL("foo.com/bar?x=y#?map-center=48.12,8.21").params["map-center"].should.equal("48.12,8.21");
    parseURL("foo.com#?a=b&c=d").params.should.eql({a: "b", c:"d"});
  }); 

  it("should keep the original url", () => {
    parseURL("foo.com/foo?bar=baz#hash/path?x=5").original.should.equal("foo.com/foo?bar=baz#hash/path?x=5");
  });

  it("should create a parsed url string", () => {
    parseURL("foo.com/a/b?x=d#bar/baz/?baz=5").actual.should.equal("/bar/baz?baz=5");
  });
});
