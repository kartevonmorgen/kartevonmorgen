import { should } from "chai";

import parseUrl from "../../src/util/parseUrl";

describe("parseUrl", () => {
  it("should parse the hash path", () => {
    parseUrl("foo.bar.com/#/foo").path.should.equal("/foo");
    parseUrl("foo.bar.com/#/foo#bar").path.should.equal("/foo");
    parseUrl("foo.bar.com/foo?x=y#/bar").path.should.equal("/bar");
    parseUrl("foo.bar.com/#/").path.should.equal("/");
    parseUrl("foo.bar.com/#").path.should.equal("/");
    parseUrl("foo.bar.com/").path.should.equal("/");
    parseUrl("foo.bar.com").path.should.equal("/");
    parseUrl("foo.bar.com#foo").path.should.equal("/foo");
    parseUrl("foo.bar.com#/foo/bar/baz").path.should.equal("/foo/bar/baz");
    parseUrl("foo.bar.com#/foo/bar/baz/").path.should.equal("/foo/bar/baz");
  }); 

  it("should parse the hash search parameters", () => {
    parseUrl("foo.com/bar?x=y#?map-center=48.12,8.21").params["map-center"].should.equal("48.12,8.21");
    parseUrl("foo.com#?a=b&c=d").params.should.eql({a: "b", c:"d"});
  }); 

  it("should keep the original url", () => {
    parseUrl("foo.com/foo?bar=baz#hash/path?x=5").original.should.equal("foo.com/foo?bar=baz#hash/path?x=5");
  });

  it("should create a parsed url string", () => {
    parseUrl("foo.com/a/b?x=d#bar/baz/?baz=5").actual.should.equal("/bar/baz?baz=5");
  });

  it("should retrieve a value from a url that contains a subpage with .html-ending", () => {
    parseUrl("foo.com/businesscard.html#/?entry=5e7cbd595bd34d4fa9d8f26444c3a655")
      .params.entry.should.equal("5e7cbd595bd34d4fa9d8f26444c3a655");
  });
});
