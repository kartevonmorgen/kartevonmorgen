// TODO: import { should } from "chai";
// TODO: 
// TODO: import parseUrl from "../../src/util/parseUrl";
// TODO: 
// TODO: describe("parseUrl", () => {
// TODO:   it("should parse the hash path", () => {
// TODO:     parseUrl("foo.bar.com/#/foo").path.should.equal("/foo");
// TODO:     parseUrl("foo.bar.com/#/foo#bar").path.should.equal("/foo");
// TODO:     parseUrl("foo.bar.com/foo?x=y#/bar").path.should.equal("/bar");
// TODO:     parseUrl("foo.bar.com/#/").path.should.equal("/");
// TODO:     parseUrl("foo.bar.com/#").path.should.equal("/");
// TODO:     parseUrl("foo.bar.com/").path.should.equal("/");
// TODO:     parseUrl("foo.bar.com").path.should.equal("/");
// TODO:     parseUrl("foo.bar.com#foo").path.should.equal("/foo");
// TODO:     parseUrl("foo.bar.com#/foo/bar/baz").path.should.equal("/foo/bar/baz");
// TODO:     parseUrl("foo.bar.com#/foo/bar/baz/").path.should.equal("/foo/bar/baz");
// TODO:   }); 
// TODO: 
// TODO:   it("should parse the hash search parameters", () => {
// TODO:     parseUrl("foo.com/bar?x=y#?map-center=48.12,8.21").params["map-center"].should.equal("48.12,8.21");
// TODO:     parseUrl("foo.com#?a=b&c=d").params.should.eql({a: "b", c:"d"});
// TODO:   }); 
// TODO: 
// TODO:   it("should keep the original url", () => {
// TODO:     parseUrl("foo.com/foo?bar=baz#hash/path?x=5").original.should.equal("foo.com/foo?bar=baz#hash/path?x=5");
// TODO:   });
// TODO: 
// TODO:   it("should create a parsed url string", () => {
// TODO:     parseUrl("foo.com/a/b?x=d#bar/baz/?baz=5").actual.should.equal("/bar/baz?baz=5");
// TODO:   });
// TODO: 
// TODO:   it("should retrieve a value from a url that contains a subpage with .html-ending", () => {
// TODO:     parseUrl("foo.com/businesscard.html#/?entry=5e7cbd595bd34d4fa9d8f26444c3a655")
// TODO:       .params.entry.should.equal("5e7cbd595bd34d4fa9d8f26444c3a655");
// TODO:   });
// TODO: });
