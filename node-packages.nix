{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."Base64"."~0.2.0" =
    self.by-version."Base64"."0.2.1";
  by-version."Base64"."0.2.1" = self.buildNodePackage {
    name = "Base64-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/Base64/-/Base64-0.2.1.tgz";
      name = "Base64-0.2.1.tgz";
      sha1 = "ba3a4230708e186705065e66babdd4c35cf60028";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."abbrev"."1" =
    self.by-version."abbrev"."1.0.7";
  by-version."abbrev"."1.0.7" = self.buildNodePackage {
    name = "abbrev-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/abbrev/-/abbrev-1.0.7.tgz";
      name = "abbrev-1.0.7.tgz";
      sha1 = "5b6035b2ee9d4fb5cf859f08a9be81b208491843";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."accepts"."1.1.4" =
    self.by-version."accepts"."1.1.4";
  by-version."accepts"."1.1.4" = self.buildNodePackage {
    name = "accepts-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/accepts/-/accepts-1.1.4.tgz";
      name = "accepts-1.1.4.tgz";
      sha1 = "d71c96f7d41d0feda2c38cd14e8a27c04158df4a";
    };
    deps = {
      "mime-types-2.0.14" = self.by-version."mime-types"."2.0.14";
      "negotiator-0.4.9" = self.by-version."negotiator"."0.4.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."accepts"."~1.2.12" =
    self.by-version."accepts"."1.2.13";
  by-version."accepts"."1.2.13" = self.buildNodePackage {
    name = "accepts-1.2.13";
    version = "1.2.13";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/accepts/-/accepts-1.2.13.tgz";
      name = "accepts-1.2.13.tgz";
      sha1 = "e5f1f3928c6d95fd96558c36ec3d9d0de4a6ecea";
    };
    deps = {
      "mime-types-2.1.9" = self.by-version."mime-types"."2.1.9";
      "negotiator-0.5.3" = self.by-version."negotiator"."0.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."accepts"."~1.2.13" =
    self.by-version."accepts"."1.2.13";
  by-spec."accepts"."~1.3.1" =
    self.by-version."accepts"."1.3.1";
  by-version."accepts"."1.3.1" = self.buildNodePackage {
    name = "accepts-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/accepts/-/accepts-1.3.1.tgz";
      name = "accepts-1.3.1.tgz";
      sha1 = "dc295faf85024e05b04f5a6faf5eec1d1fd077e5";
    };
    deps = {
      "mime-types-2.1.9" = self.by-version."mime-types"."2.1.9";
      "negotiator-0.6.0" = self.by-version."negotiator"."0.6.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."adm-zip"."0.4.4" =
    self.by-version."adm-zip"."0.4.4";
  by-version."adm-zip"."0.4.4" = self.buildNodePackage {
    name = "adm-zip-0.4.4";
    version = "0.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/adm-zip/-/adm-zip-0.4.4.tgz";
      name = "adm-zip-0.4.4.tgz";
      sha1 = "a61ed5ae6905c3aea58b3a657d25033091052736";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."after"."0.8.1" =
    self.by-version."after"."0.8.1";
  by-version."after"."0.8.1" = self.buildNodePackage {
    name = "after-0.8.1";
    version = "0.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/after/-/after-0.8.1.tgz";
      name = "after-0.8.1.tgz";
      sha1 = "ab5d4fb883f596816d3515f8f791c0af486dd627";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."align-text"."^0.1.0" =
    self.by-version."align-text"."0.1.3";
  by-version."align-text"."0.1.3" = self.buildNodePackage {
    name = "align-text-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/align-text/-/align-text-0.1.3.tgz";
      name = "align-text-0.1.3.tgz";
      sha1 = "72db3983872eec2313919c9426a993a41afe93f7";
    };
    deps = {
      "kind-of-2.0.1" = self.by-version."kind-of"."2.0.1";
      "longest-1.0.1" = self.by-version."longest"."1.0.1";
      "repeat-string-1.5.2" = self.by-version."repeat-string"."1.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."align-text"."^0.1.1" =
    self.by-version."align-text"."0.1.3";
  by-spec."alphanum-sort"."^1.0.1" =
    self.by-version."alphanum-sort"."1.0.2";
  by-version."alphanum-sort"."1.0.2" = self.buildNodePackage {
    name = "alphanum-sort-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/alphanum-sort/-/alphanum-sort-1.0.2.tgz";
      name = "alphanum-sort-1.0.2.tgz";
      sha1 = "97a1119649b211ad33691d9f9f486a8ec9fbe0a3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."alphanum-sort"."^1.0.2" =
    self.by-version."alphanum-sort"."1.0.2";
  by-spec."amdefine".">=0.0.4" =
    self.by-version."amdefine"."1.0.0";
  by-version."amdefine"."1.0.0" = self.buildNodePackage {
    name = "amdefine-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/amdefine/-/amdefine-1.0.0.tgz";
      name = "amdefine-1.0.0.tgz";
      sha1 = "fd17474700cb5cc9c2b709f0be9d23ce3c198c33";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi"."^0.3.0" =
    self.by-version."ansi"."0.3.1";
  by-version."ansi"."0.3.1" = self.buildNodePackage {
    name = "ansi-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi/-/ansi-0.3.1.tgz";
      name = "ansi-0.3.1.tgz";
      sha1 = "0c42d4fb17160d5a9af1e484bace1c66922c1b21";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi"."~0.3.0" =
    self.by-version."ansi"."0.3.1";
  by-spec."ansi"."~0.3.1" =
    self.by-version."ansi"."0.3.1";
  by-spec."ansi-regex"."^2.0.0" =
    self.by-version."ansi-regex"."2.0.0";
  by-version."ansi-regex"."2.0.0" = self.buildNodePackage {
    name = "ansi-regex-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-regex/-/ansi-regex-2.0.0.tgz";
      name = "ansi-regex-2.0.0.tgz";
      sha1 = "c5061b6e0ef8a81775e50f5d66151bf6bf371107";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-styles"."^2.1.0" =
    self.by-version."ansi-styles"."2.1.0";
  by-version."ansi-styles"."2.1.0" = self.buildNodePackage {
    name = "ansi-styles-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-styles/-/ansi-styles-2.1.0.tgz";
      name = "ansi-styles-2.1.0.tgz";
      sha1 = "990f747146927b559a932bf92959163d60c0d0e2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."anymatch"."^1.3.0" =
    self.by-version."anymatch"."1.3.0";
  by-version."anymatch"."1.3.0" = self.buildNodePackage {
    name = "anymatch-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/anymatch/-/anymatch-1.3.0.tgz";
      name = "anymatch-1.3.0.tgz";
      sha1 = "a3e52fa39168c825ff57b0248126ce5a8ff95507";
    };
    deps = {
      "arrify-1.0.1" = self.by-version."arrify"."1.0.1";
      "micromatch-2.3.7" = self.by-version."micromatch"."2.3.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."are-we-there-yet"."~1.0.0" =
    self.by-version."are-we-there-yet"."1.0.5";
  by-version."are-we-there-yet"."1.0.5" = self.buildNodePackage {
    name = "are-we-there-yet-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-1.0.5.tgz";
      name = "are-we-there-yet-1.0.5.tgz";
      sha1 = "239f26706da902a2bffb72c33de66fdfd3798ac5";
    };
    deps = {
      "delegates-0.1.0" = self.by-version."delegates"."0.1.0";
      "readable-stream-2.0.5" = self.by-version."readable-stream"."2.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."are-we-there-yet"."~1.0.5" =
    self.by-version."are-we-there-yet"."1.0.5";
  by-spec."argparse"."^1.0.2" =
    self.by-version."argparse"."1.0.4";
  by-version."argparse"."1.0.4" = self.buildNodePackage {
    name = "argparse-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/argparse/-/argparse-1.0.4.tgz";
      name = "argparse-1.0.4.tgz";
      sha1 = "2b12247b933001971addcbfe4e67d20fd395bbf4";
    };
    deps = {
      "lodash-4.0.0" = self.by-version."lodash"."4.0.0";
      "sprintf-js-1.0.3" = self.by-version."sprintf-js"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arr-diff"."^2.0.0" =
    self.by-version."arr-diff"."2.0.0";
  by-version."arr-diff"."2.0.0" = self.buildNodePackage {
    name = "arr-diff-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arr-diff/-/arr-diff-2.0.0.tgz";
      name = "arr-diff-2.0.0.tgz";
      sha1 = "8f3b827f955a8bd669697e4a4256ac3ceae356cf";
    };
    deps = {
      "arr-flatten-1.0.1" = self.by-version."arr-flatten"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arr-flatten"."^1.0.1" =
    self.by-version."arr-flatten"."1.0.1";
  by-version."arr-flatten"."1.0.1" = self.buildNodePackage {
    name = "arr-flatten-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arr-flatten/-/arr-flatten-1.0.1.tgz";
      name = "arr-flatten-1.0.1.tgz";
      sha1 = "e5ffe54d45e19f32f216e91eb99c8ce892bb604b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-flatten"."1.1.1" =
    self.by-version."array-flatten"."1.1.1";
  by-version."array-flatten"."1.1.1" = self.buildNodePackage {
    name = "array-flatten-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz";
      name = "array-flatten-1.1.1.tgz";
      sha1 = "9a5f699051b1e7073328f2a008968b64ea2955d2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-index"."^1.0.0" =
    self.by-version."array-index"."1.0.0";
  by-version."array-index"."1.0.0" = self.buildNodePackage {
    name = "array-index-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-index/-/array-index-1.0.0.tgz";
      name = "array-index-1.0.0.tgz";
      sha1 = "ec56a749ee103e4e08c790b9c353df16055b97f9";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "es6-symbol-3.0.2" = self.by-version."es6-symbol"."3.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-slice"."^0.2.3" =
    self.by-version."array-slice"."0.2.3";
  by-version."array-slice"."0.2.3" = self.buildNodePackage {
    name = "array-slice-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-slice/-/array-slice-0.2.3.tgz";
      name = "array-slice-0.2.3.tgz";
      sha1 = "dd3cfb80ed7973a75117cdac69b0b99ec86186f5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-unique"."^0.2.1" =
    self.by-version."array-unique"."0.2.1";
  by-version."array-unique"."0.2.1" = self.buildNodePackage {
    name = "array-unique-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-unique/-/array-unique-0.2.1.tgz";
      name = "array-unique-0.2.1.tgz";
      sha1 = "a1d97ccafcbc2625cc70fadceb36a50c58b01a53";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arraybuffer.slice"."0.0.6" =
    self.by-version."arraybuffer.slice"."0.0.6";
  by-version."arraybuffer.slice"."0.0.6" = self.buildNodePackage {
    name = "arraybuffer.slice-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arraybuffer.slice/-/arraybuffer.slice-0.0.6.tgz";
      name = "arraybuffer.slice-0.0.6.tgz";
      sha1 = "f33b2159f0532a3f3107a272c0ccfbd1ad2979ca";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arrify"."^1.0.0" =
    self.by-version."arrify"."1.0.1";
  by-version."arrify"."1.0.1" = self.buildNodePackage {
    name = "arrify-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arrify/-/arrify-1.0.1.tgz";
      name = "arrify-1.0.1.tgz";
      sha1 = "898508da2226f380df904728456849c1501a4b0d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asap"."~1.0.0" =
    self.by-version."asap"."1.0.0";
  by-version."asap"."1.0.0" = self.buildNodePackage {
    name = "asap-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asap/-/asap-1.0.0.tgz";
      name = "asap-1.0.0.tgz";
      sha1 = "b2a45da5fdfa20b0496fc3768cc27c12fa916a7d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asap"."~2.0.3" =
    self.by-version."asap"."2.0.3";
  by-version."asap"."2.0.3" = self.buildNodePackage {
    name = "asap-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asap/-/asap-2.0.3.tgz";
      name = "asap-2.0.3.tgz";
      sha1 = "1fc1d1564ee11620dfca6d67029850913f9f4679";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asn1"."0.1.11" =
    self.by-version."asn1"."0.1.11";
  by-version."asn1"."0.1.11" = self.buildNodePackage {
    name = "asn1-0.1.11";
    version = "0.1.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asn1/-/asn1-0.1.11.tgz";
      name = "asn1-0.1.11.tgz";
      sha1 = "559be18376d08a4ec4dbe80877d27818639b2df7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asn1".">=0.2.3 <0.3.0" =
    self.by-version."asn1"."0.2.3";
  by-version."asn1"."0.2.3" = self.buildNodePackage {
    name = "asn1-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asn1/-/asn1-0.2.3.tgz";
      name = "asn1-0.2.3.tgz";
      sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert"."^1.1.1" =
    self.by-version."assert"."1.3.0";
  by-version."assert"."1.3.0" = self.buildNodePackage {
    name = "assert-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assert/-/assert-1.3.0.tgz";
      name = "assert-1.3.0.tgz";
      sha1 = "03939a622582a812cc202320a0b9a56c9b815849";
    };
    deps = {
      "util-0.10.3" = self.by-version."util"."0.10.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert-plus".">=0.2.0 <0.3.0" =
    self.by-version."assert-plus"."0.2.0";
  by-version."assert-plus"."0.2.0" = self.buildNodePackage {
    name = "assert-plus-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assert-plus/-/assert-plus-0.2.0.tgz";
      name = "assert-plus-0.2.0.tgz";
      sha1 = "d74e1b87e7affc0db8aadb7021f3fe48101ab234";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert-plus"."^0.1.5" =
    self.by-version."assert-plus"."0.1.5";
  by-version."assert-plus"."0.1.5" = self.buildNodePackage {
    name = "assert-plus-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assert-plus/-/assert-plus-0.1.5.tgz";
      name = "assert-plus-0.1.5.tgz";
      sha1 = "ee74009413002d84cec7219c6ac811812e723160";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert-plus"."^0.2.0" =
    self.by-version."assert-plus"."0.2.0";
  by-spec."assertion-error"."^1.0.1" =
    self.by-version."assertion-error"."1.0.1";
  by-version."assertion-error"."1.0.1" = self.buildNodePackage {
    name = "assertion-error-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assertion-error/-/assertion-error-1.0.1.tgz";
      name = "assertion-error-1.0.1.tgz";
      sha1 = "35aaeec33097f11f42399ecadf33faccd27f5c4c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."^0.9.0" =
    self.by-version."async"."0.9.2";
  by-version."async"."0.9.2" = self.buildNodePackage {
    name = "async-0.9.2";
    version = "0.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.9.2.tgz";
      name = "async-0.9.2.tgz";
      sha1 = "aea74d5e61c1f899613bf64bda66d4c78f2fd17d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."^1.3.0" =
    self.by-version."async"."1.5.2";
  by-version."async"."1.5.2" = self.buildNodePackage {
    name = "async-1.5.2";
    version = "1.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-1.5.2.tgz";
      name = "async-1.5.2.tgz";
      sha1 = "ec6a61ae56480c0c3cb241c95618e20892f9672a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."^1.4.0" =
    self.by-version."async"."1.5.2";
  by-spec."async"."~0.2.0" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = self.buildNodePackage {
    name = "async-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.2.10.tgz";
      name = "async-0.2.10.tgz";
      sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."~0.2.6" =
    self.by-version."async"."0.2.10";
  by-spec."async"."~0.9.0" =
    self.by-version."async"."0.9.2";
  by-spec."async-each"."^0.1.6" =
    self.by-version."async-each"."0.1.6";
  by-version."async-each"."0.1.6" = self.buildNodePackage {
    name = "async-each-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async-each/-/async-each-0.1.6.tgz";
      name = "async-each-0.1.6.tgz";
      sha1 = "b67e99edcddf96541e44af56290cd7d5c6e70439";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async-foreach"."^0.1.3" =
    self.by-version."async-foreach"."0.1.3";
  by-version."async-foreach"."0.1.3" = self.buildNodePackage {
    name = "async-foreach-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async-foreach/-/async-foreach-0.1.3.tgz";
      name = "async-foreach-0.1.3.tgz";
      sha1 = "36121f845c0578172de419a97dbeb1d16ec34542";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."autoprefixer"."^6.0.3" =
    self.by-version."autoprefixer"."6.3.1";
  by-version."autoprefixer"."6.3.1" = self.buildNodePackage {
    name = "autoprefixer-6.3.1";
    version = "6.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/autoprefixer/-/autoprefixer-6.3.1.tgz";
      name = "autoprefixer-6.3.1.tgz";
      sha1 = "79757c0caef79f00b93bffdcf1e0da7eeb06cc88";
    };
    deps = {
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
      "normalize-range-0.1.2" = self.by-version."normalize-range"."0.1.2";
      "num2fraction-1.2.2" = self.by-version."num2fraction"."1.2.2";
      "browserslist-1.1.1" = self.by-version."browserslist"."1.1.1";
      "caniuse-db-1.0.30000392" = self.by-version."caniuse-db"."1.0.30000392";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."aws-sign2"."~0.5.0" =
    self.by-version."aws-sign2"."0.5.0";
  by-version."aws-sign2"."0.5.0" = self.buildNodePackage {
    name = "aws-sign2-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/aws-sign2/-/aws-sign2-0.5.0.tgz";
      name = "aws-sign2-0.5.0.tgz";
      sha1 = "c57103f7a17fc037f02d7c2e64b602ea223f7d63";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."aws-sign2"."~0.6.0" =
    self.by-version."aws-sign2"."0.6.0";
  by-version."aws-sign2"."0.6.0" = self.buildNodePackage {
    name = "aws-sign2-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/aws-sign2/-/aws-sign2-0.6.0.tgz";
      name = "aws-sign2-0.6.0.tgz";
      sha1 = "14342dd38dbcc94d0e5b87d763cd63612c0e794f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."backo2"."1.0.2" =
    self.by-version."backo2"."1.0.2";
  by-version."backo2"."1.0.2" = self.buildNodePackage {
    name = "backo2-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/backo2/-/backo2-1.0.2.tgz";
      name = "backo2-1.0.2.tgz";
      sha1 = "31ab1ac8b129363463e35b3ebb69f4dfcfba7947";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."balanced-match"."^0.1.0" =
    self.by-version."balanced-match"."0.1.0";
  by-version."balanced-match"."0.1.0" = self.buildNodePackage {
    name = "balanced-match-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/balanced-match/-/balanced-match-0.1.0.tgz";
      name = "balanced-match-0.1.0.tgz";
      sha1 = "b504bd05869b39259dd0c5efc35d843176dccc4a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."balanced-match"."^0.3.0" =
    self.by-version."balanced-match"."0.3.0";
  by-version."balanced-match"."0.3.0" = self.buildNodePackage {
    name = "balanced-match-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/balanced-match/-/balanced-match-0.3.0.tgz";
      name = "balanced-match-0.3.0.tgz";
      sha1 = "a91cdd1ebef1a86659e70ff4def01625fc2d6756";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."balanced-match"."~0.1.0" =
    self.by-version."balanced-match"."0.1.0";
  by-spec."base62"."0.1.1" =
    self.by-version."base62"."0.1.1";
  by-version."base62"."0.1.1" = self.buildNodePackage {
    name = "base62-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/base62/-/base62-0.1.1.tgz";
      name = "base62-0.1.1.tgz";
      sha1 = "7b4174c2f94449753b11c2651c083da841a7b084";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."base64-arraybuffer"."0.1.2" =
    self.by-version."base64-arraybuffer"."0.1.2";
  by-version."base64-arraybuffer"."0.1.2" = self.buildNodePackage {
    name = "base64-arraybuffer-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/base64-arraybuffer/-/base64-arraybuffer-0.1.2.tgz";
      name = "base64-arraybuffer-0.1.2.tgz";
      sha1 = "474df4a9f2da24e05df3158c3b1db3c3cd46a154";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."base64-js"."0.0.8" =
    self.by-version."base64-js"."0.0.8";
  by-version."base64-js"."0.0.8" = self.buildNodePackage {
    name = "base64-js-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/base64-js/-/base64-js-0.0.8.tgz";
      name = "base64-js-0.0.8.tgz";
      sha1 = "1101e9544f4a76b1bc3b26d452ca96d7a35e7978";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."base64id"."0.1.0" =
    self.by-version."base64id"."0.1.0";
  by-version."base64id"."0.1.0" = self.buildNodePackage {
    name = "base64id-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/base64id/-/base64id-0.1.0.tgz";
      name = "base64id-0.1.0.tgz";
      sha1 = "02ce0fdeee0cef4f40080e1e73e834f0b1bfce3f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."batch"."0.5.3" =
    self.by-version."batch"."0.5.3";
  by-version."batch"."0.5.3" = self.buildNodePackage {
    name = "batch-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/batch/-/batch-0.5.3.tgz";
      name = "batch-0.5.3.tgz";
      sha1 = "3f3414f380321743bfc1042f9a83ff1d5824d464";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."batch"."^0.5.3" =
    self.by-version."batch"."0.5.3";
  by-spec."benchmark"."1.0.0" =
    self.by-version."benchmark"."1.0.0";
  by-version."benchmark"."1.0.0" = self.buildNodePackage {
    name = "benchmark-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/benchmark/-/benchmark-1.0.0.tgz";
      name = "benchmark-1.0.0.tgz";
      sha1 = "2f1e2fa4c359f11122aa183082218e957e390c73";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."better-assert"."~1.0.0" =
    self.by-version."better-assert"."1.0.2";
  by-version."better-assert"."1.0.2" = self.buildNodePackage {
    name = "better-assert-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/better-assert/-/better-assert-1.0.2.tgz";
      name = "better-assert-1.0.2.tgz";
      sha1 = "40866b9e1b9e0b55b481894311e68faffaebc522";
    };
    deps = {
      "callsite-1.0.0" = self.by-version."callsite"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."big.js"."^3.0.2" =
    self.by-version."big.js"."3.1.3";
  by-version."big.js"."3.1.3" = self.buildNodePackage {
    name = "big.js-3.1.3";
    version = "3.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/big.js/-/big.js-3.1.3.tgz";
      name = "big.js-3.1.3.tgz";
      sha1 = "4cada2193652eb3ca9ec8e55c9015669c9806978";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."binary-extensions"."^1.0.0" =
    self.by-version."binary-extensions"."1.4.0";
  by-version."binary-extensions"."1.4.0" = self.buildNodePackage {
    name = "binary-extensions-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/binary-extensions/-/binary-extensions-1.4.0.tgz";
      name = "binary-extensions-1.4.0.tgz";
      sha1 = "d733ccb628986d7b326d88656e0ddbd3aac351b7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."~0.9.0" =
    self.by-version."bl"."0.9.5";
  by-version."bl"."0.9.5" = self.buildNodePackage {
    name = "bl-0.9.5";
    version = "0.9.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bl/-/bl-0.9.5.tgz";
      name = "bl-0.9.5.tgz";
      sha1 = "c06b797af085ea00bc527afc8efcf11de2232054";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."~1.0.0" =
    self.by-version."bl"."1.0.1";
  by-version."bl"."1.0.1" = self.buildNodePackage {
    name = "bl-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bl/-/bl-1.0.1.tgz";
      name = "bl-1.0.1.tgz";
      sha1 = "0e6df7330308c46515751676cafa7334dc9852fd";
    };
    deps = {
      "readable-stream-2.0.5" = self.by-version."readable-stream"."2.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."blob"."0.0.4" =
    self.by-version."blob"."0.0.4";
  by-version."blob"."0.0.4" = self.buildNodePackage {
    name = "blob-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/blob/-/blob-0.0.4.tgz";
      name = "blob-0.0.4.tgz";
      sha1 = "bcf13052ca54463f30f9fc7e95b9a47630a94921";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."block-stream"."*" =
    self.by-version."block-stream"."0.0.8";
  by-version."block-stream"."0.0.8" = self.buildNodePackage {
    name = "block-stream-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/block-stream/-/block-stream-0.0.8.tgz";
      name = "block-stream-0.0.8.tgz";
      sha1 = "0688f46da2bbf9cff0c4f68225a0cb95cbe8a46b";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bluebird"."^2.9.27" =
    self.by-version."bluebird"."2.10.2";
  by-version."bluebird"."2.10.2" = self.buildNodePackage {
    name = "bluebird-2.10.2";
    version = "2.10.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bluebird/-/bluebird-2.10.2.tgz";
      name = "bluebird-2.10.2.tgz";
      sha1 = "024a5517295308857f14f91f1106fc3b555f446b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bluebird"."^3.1.1" =
    self.by-version."bluebird"."3.1.4";
  by-version."bluebird"."3.1.4" = self.buildNodePackage {
    name = "bluebird-3.1.4";
    version = "3.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bluebird/-/bluebird-3.1.4.tgz";
      name = "bluebird-3.1.4.tgz";
      sha1 = "8658702e862713f8c01aa5387ddfe36ec8e3d04d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."body-parser"."^1.12.4" =
    self.by-version."body-parser"."1.14.2";
  by-version."body-parser"."1.14.2" = self.buildNodePackage {
    name = "body-parser-1.14.2";
    version = "1.14.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/body-parser/-/body-parser-1.14.2.tgz";
      name = "body-parser-1.14.2.tgz";
      sha1 = "1015cb1fe2c443858259581db53332f8d0cf50f9";
    };
    deps = {
      "bytes-2.2.0" = self.by-version."bytes"."2.2.0";
      "content-type-1.0.1" = self.by-version."content-type"."1.0.1";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "iconv-lite-0.4.13" = self.by-version."iconv-lite"."0.4.13";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "qs-5.2.0" = self.by-version."qs"."5.2.0";
      "raw-body-2.1.5" = self.by-version."raw-body"."2.1.5";
      "type-is-1.6.10" = self.by-version."type-is"."1.6.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."boolbase"."~1.0.0" =
    self.by-version."boolbase"."1.0.0";
  by-version."boolbase"."1.0.0" = self.buildNodePackage {
    name = "boolbase-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/boolbase/-/boolbase-1.0.0.tgz";
      name = "boolbase-1.0.0.tgz";
      sha1 = "68dff5fbe60c51eb37725ea9e3ed310dcc1e776e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."boom"."0.4.x" =
    self.by-version."boom"."0.4.2";
  by-version."boom"."0.4.2" = self.buildNodePackage {
    name = "boom-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/boom/-/boom-0.4.2.tgz";
      name = "boom-0.4.2.tgz";
      sha1 = "7a636e9ded4efcefb19cef4947a3c67dfaee911b";
    };
    deps = {
      "hoek-0.9.1" = self.by-version."hoek"."0.9.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."boom"."2.x.x" =
    self.by-version."boom"."2.10.1";
  by-version."boom"."2.10.1" = self.buildNodePackage {
    name = "boom-2.10.1";
    version = "2.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/boom/-/boom-2.10.1.tgz";
      name = "boom-2.10.1.tgz";
      sha1 = "39c8918ceff5799f83f9492a848f625add0c766f";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."brace-expansion"."^1.0.0" =
    self.by-version."brace-expansion"."1.1.2";
  by-version."brace-expansion"."1.1.2" = self.buildNodePackage {
    name = "brace-expansion-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.2.tgz";
      name = "brace-expansion-1.1.2.tgz";
      sha1 = "f21445d0488b658e2771efd870eff51df29f04ef";
    };
    deps = {
      "balanced-match-0.3.0" = self.by-version."balanced-match"."0.3.0";
      "concat-map-0.0.1" = self.by-version."concat-map"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."braces"."^0.1.2" =
    self.by-version."braces"."0.1.5";
  by-version."braces"."0.1.5" = self.buildNodePackage {
    name = "braces-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/braces/-/braces-0.1.5.tgz";
      name = "braces-0.1.5.tgz";
      sha1 = "c085711085291d8b75fdd74eab0f8597280711e6";
    };
    deps = {
      "expand-range-0.1.1" = self.by-version."expand-range"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."braces"."^1.8.2" =
    self.by-version."braces"."1.8.3";
  by-version."braces"."1.8.3" = self.buildNodePackage {
    name = "braces-1.8.3";
    version = "1.8.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/braces/-/braces-1.8.3.tgz";
      name = "braces-1.8.3.tgz";
      sha1 = "35d4e7dda632b33e215d38a8a9cf4329c9c75d2c";
    };
    deps = {
      "expand-range-1.8.1" = self.by-version."expand-range"."1.8.1";
      "preserve-0.2.0" = self.by-version."preserve"."0.2.0";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-zlib"."~0.1.4" =
    self.by-version."browserify-zlib"."0.1.4";
  by-version."browserify-zlib"."0.1.4" = self.buildNodePackage {
    name = "browserify-zlib-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-zlib/-/browserify-zlib-0.1.4.tgz";
      name = "browserify-zlib-0.1.4.tgz";
      sha1 = "bb35f8a519f600e0fa6b8485241c979d0141fb2d";
    };
    deps = {
      "pako-0.2.8" = self.by-version."pako"."0.2.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserslist"."~1.1.1" =
    self.by-version."browserslist"."1.1.1";
  by-version."browserslist"."1.1.1" = self.buildNodePackage {
    name = "browserslist-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserslist/-/browserslist-1.1.1.tgz";
      name = "browserslist-1.1.1.tgz";
      sha1 = "a333af8331160e1db14219ec1cc9b2da20cd4d37";
    };
    deps = {
      "caniuse-db-1.0.30000392" = self.by-version."caniuse-db"."1.0.30000392";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer"."^3.0.3" =
    self.by-version."buffer"."3.6.0";
  by-version."buffer"."3.6.0" = self.buildNodePackage {
    name = "buffer-3.6.0";
    version = "3.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffer/-/buffer-3.6.0.tgz";
      name = "buffer-3.6.0.tgz";
      sha1 = "a72c936f77b96bf52f5f7e7b467180628551defb";
    };
    deps = {
      "base64-js-0.0.8" = self.by-version."base64-js"."0.0.8";
      "ieee754-1.1.6" = self.by-version."ieee754"."1.1.6";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."builtin-modules"."^1.0.0" =
    self.by-version."builtin-modules"."1.1.1";
  by-version."builtin-modules"."1.1.1" = self.buildNodePackage {
    name = "builtin-modules-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/builtin-modules/-/builtin-modules-1.1.1.tgz";
      name = "builtin-modules-1.1.1.tgz";
      sha1 = "270f076c5a72c02f5b65a47df94c5fe3a278892f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bytes"."2.2.0" =
    self.by-version."bytes"."2.2.0";
  by-version."bytes"."2.2.0" = self.buildNodePackage {
    name = "bytes-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bytes/-/bytes-2.2.0.tgz";
      name = "bytes-2.2.0.tgz";
      sha1 = "fd35464a403f6f9117c2de3609ecff9cae000588";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."callsite"."1.0.0" =
    self.by-version."callsite"."1.0.0";
  by-version."callsite"."1.0.0" = self.buildNodePackage {
    name = "callsite-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/callsite/-/callsite-1.0.0.tgz";
      name = "callsite-1.0.0.tgz";
      sha1 = "280398e5d664bd74038b6f0905153e6e8af1bc20";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."camel-case"."^1.1.1" =
    self.by-version."camel-case"."1.2.2";
  by-version."camel-case"."1.2.2" = self.buildNodePackage {
    name = "camel-case-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camel-case/-/camel-case-1.2.2.tgz";
      name = "camel-case-1.2.2.tgz";
      sha1 = "1aca7c4d195359a2ce9955793433c6e5542511f2";
    };
    deps = {
      "sentence-case-1.1.3" = self.by-version."sentence-case"."1.1.3";
      "upper-case-1.1.3" = self.by-version."upper-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."camelcase"."^1.0.2" =
    self.by-version."camelcase"."1.2.1";
  by-version."camelcase"."1.2.1" = self.buildNodePackage {
    name = "camelcase-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camelcase/-/camelcase-1.2.1.tgz";
      name = "camelcase-1.2.1.tgz";
      sha1 = "9bb5304d2e0b56698b2c758b08a3eaa9daa58a39";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."camelcase"."^2.0.0" =
    self.by-version."camelcase"."2.1.0";
  by-version."camelcase"."2.1.0" = self.buildNodePackage {
    name = "camelcase-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camelcase/-/camelcase-2.1.0.tgz";
      name = "camelcase-2.1.0.tgz";
      sha1 = "533ad4cd7f8a1080ded31aba6c79b4bf437ff30c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."camelcase"."^2.0.1" =
    self.by-version."camelcase"."2.1.0";
  by-spec."camelcase-keys"."^2.0.0" =
    self.by-version."camelcase-keys"."2.0.0";
  by-version."camelcase-keys"."2.0.0" = self.buildNodePackage {
    name = "camelcase-keys-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camelcase-keys/-/camelcase-keys-2.0.0.tgz";
      name = "camelcase-keys-2.0.0.tgz";
      sha1 = "ab87e740d72a1ffcb12a43cc04c14b39d549eab9";
    };
    deps = {
      "camelcase-2.1.0" = self.by-version."camelcase"."2.1.0";
      "map-obj-1.0.1" = self.by-version."map-obj"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caniuse-db"."^1.0.30000387" =
    self.by-version."caniuse-db"."1.0.30000392";
  by-version."caniuse-db"."1.0.30000392" = self.buildNodePackage {
    name = "caniuse-db-1.0.30000392";
    version = "1.0.30000392";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/caniuse-db/-/caniuse-db-1.0.30000392.tgz";
      name = "caniuse-db-1.0.30000392.tgz";
      sha1 = "b585331b3735dcebdb573fe1afb248c786b30fb5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caseless"."~0.11.0" =
    self.by-version."caseless"."0.11.0";
  by-version."caseless"."0.11.0" = self.buildNodePackage {
    name = "caseless-0.11.0";
    version = "0.11.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/caseless/-/caseless-0.11.0.tgz";
      name = "caseless-0.11.0.tgz";
      sha1 = "715b96ea9841593cc33067923f5ec60ebda4f7d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caseless"."~0.6.0" =
    self.by-version."caseless"."0.6.0";
  by-version."caseless"."0.6.0" = self.buildNodePackage {
    name = "caseless-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/caseless/-/caseless-0.6.0.tgz";
      name = "caseless-0.6.0.tgz";
      sha1 = "8167c1ab8397fb5bb95f96d28e5a81c50f247ac4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."center-align"."^0.1.1" =
    self.by-version."center-align"."0.1.2";
  by-version."center-align"."0.1.2" = self.buildNodePackage {
    name = "center-align-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/center-align/-/center-align-0.1.2.tgz";
      name = "center-align-0.1.2.tgz";
      sha1 = "74fa8540fc19b26aae6edc7e031cd6993d495ba0";
    };
    deps = {
      "align-text-0.1.3" = self.by-version."align-text"."0.1.3";
      "lazy-cache-0.2.7" = self.by-version."lazy-cache"."0.2.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chai"."*" =
    self.by-version."chai"."3.4.1";
  by-version."chai"."3.4.1" = self.buildNodePackage {
    name = "chai-3.4.1";
    version = "3.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chai/-/chai-3.4.1.tgz";
      name = "chai-3.4.1.tgz";
      sha1 = "330ae2f819124c26182036fa5e43a88ea4e1bd85";
    };
    deps = {
      "assertion-error-1.0.1" = self.by-version."assertion-error"."1.0.1";
      "deep-eql-0.1.3" = self.by-version."deep-eql"."0.1.3";
      "type-detect-1.0.0" = self.by-version."type-detect"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chai"."^3.4.1" =
    self.by-version."chai"."3.4.1";
  "chai" = self.by-version."chai"."3.4.1";
  by-spec."chalk"."1.1.1" =
    self.by-version."chalk"."1.1.1";
  by-version."chalk"."1.1.1" = self.buildNodePackage {
    name = "chalk-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-1.1.1.tgz";
      name = "chalk-1.1.1.tgz";
      sha1 = "509afb67066e7499f7eb3535c77445772ae2d019";
    };
    deps = {
      "ansi-styles-2.1.0" = self.by-version."ansi-styles"."2.1.0";
      "escape-string-regexp-1.0.4" = self.by-version."escape-string-regexp"."1.0.4";
      "has-ansi-2.0.0" = self.by-version."has-ansi"."2.0.0";
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
      "supports-color-2.0.0" = self.by-version."supports-color"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^1.1.1" =
    self.by-version."chalk"."1.1.1";
  by-spec."change-case"."2.3.x" =
    self.by-version."change-case"."2.3.1";
  by-version."change-case"."2.3.1" = self.buildNodePackage {
    name = "change-case-2.3.1";
    version = "2.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/change-case/-/change-case-2.3.1.tgz";
      name = "change-case-2.3.1.tgz";
      sha1 = "2c4fde3f063bb41d00cd68e0d5a09db61cbe894f";
    };
    deps = {
      "camel-case-1.2.2" = self.by-version."camel-case"."1.2.2";
      "constant-case-1.1.2" = self.by-version."constant-case"."1.1.2";
      "dot-case-1.1.2" = self.by-version."dot-case"."1.1.2";
      "is-lower-case-1.1.3" = self.by-version."is-lower-case"."1.1.3";
      "is-upper-case-1.1.2" = self.by-version."is-upper-case"."1.1.2";
      "lower-case-1.1.3" = self.by-version."lower-case"."1.1.3";
      "lower-case-first-1.0.2" = self.by-version."lower-case-first"."1.0.2";
      "param-case-1.1.2" = self.by-version."param-case"."1.1.2";
      "pascal-case-1.1.2" = self.by-version."pascal-case"."1.1.2";
      "path-case-1.1.2" = self.by-version."path-case"."1.1.2";
      "sentence-case-1.1.3" = self.by-version."sentence-case"."1.1.3";
      "snake-case-1.1.2" = self.by-version."snake-case"."1.1.2";
      "swap-case-1.1.2" = self.by-version."swap-case"."1.1.2";
      "title-case-1.1.2" = self.by-version."title-case"."1.1.2";
      "upper-case-1.1.3" = self.by-version."upper-case"."1.1.3";
      "upper-case-first-1.1.2" = self.by-version."upper-case-first"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."charenc"."~ 0.0.1" =
    self.by-version."charenc"."0.0.1";
  by-version."charenc"."0.0.1" = self.buildNodePackage {
    name = "charenc-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/charenc/-/charenc-0.0.1.tgz";
      name = "charenc-0.0.1.tgz";
      sha1 = "004cff9feaf102382ed12db58dd6f962796d6e88";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chokidar"."^1.0.0" =
    self.by-version."chokidar"."1.4.2";
  by-version."chokidar"."1.4.2" = self.buildNodePackage {
    name = "chokidar-1.4.2";
    version = "1.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chokidar/-/chokidar-1.4.2.tgz";
      name = "chokidar-1.4.2.tgz";
      sha1 = "3eaea6c2898fa7208184a453d4889a9addf567d2";
    };
    deps = {
      "anymatch-1.3.0" = self.by-version."anymatch"."1.3.0";
      "async-each-0.1.6" = self.by-version."async-each"."0.1.6";
      "glob-parent-2.0.0" = self.by-version."glob-parent"."2.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "is-binary-path-1.0.1" = self.by-version."is-binary-path"."1.0.1";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "readdirp-2.0.0" = self.by-version."readdirp"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chokidar"."^1.4.1" =
    self.by-version."chokidar"."1.4.2";
  by-spec."clap"."^1.0.9" =
    self.by-version."clap"."1.0.10";
  by-version."clap"."1.0.10" = self.buildNodePackage {
    name = "clap-1.0.10";
    version = "1.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/clap/-/clap-1.0.10.tgz";
      name = "clap-1.0.10.tgz";
      sha1 = "4f7a93e144545af85dfd29d92fd974e32548632a";
    };
    deps = {
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."clean-css"."3.4.x" =
    self.by-version."clean-css"."3.4.9";
  by-version."clean-css"."3.4.9" = self.buildNodePackage {
    name = "clean-css-3.4.9";
    version = "3.4.9";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/clean-css/-/clean-css-3.4.9.tgz";
      name = "clean-css-3.4.9.tgz";
      sha1 = "954c49c34968763f50b05fd0dde44694cf9d2eb9";
    };
    deps = {
      "commander-2.8.1" = self.by-version."commander"."2.8.1";
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cli"."0.11.x" =
    self.by-version."cli"."0.11.1";
  by-version."cli"."0.11.1" = self.buildNodePackage {
    name = "cli-0.11.1";
    version = "0.11.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cli/-/cli-0.11.1.tgz";
      name = "cli-0.11.1.tgz";
      sha1 = "2480a3493a6c4489a9be8e8059d545ea342eebb1";
    };
    deps = {
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
      "exit-0.1.2" = self.by-version."exit"."0.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cliui"."^2.1.0" =
    self.by-version."cliui"."2.1.0";
  by-version."cliui"."2.1.0" = self.buildNodePackage {
    name = "cliui-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cliui/-/cliui-2.1.0.tgz";
      name = "cliui-2.1.0.tgz";
      sha1 = "4b475760ff80264c762c3a1719032e91c7fea0d1";
    };
    deps = {
      "center-align-0.1.2" = self.by-version."center-align"."0.1.2";
      "right-align-0.1.3" = self.by-version."right-align"."0.1.3";
      "wordwrap-0.0.2" = self.by-version."wordwrap"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cliui"."^3.0.3" =
    self.by-version."cliui"."3.1.0";
  by-version."cliui"."3.1.0" = self.buildNodePackage {
    name = "cliui-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cliui/-/cliui-3.1.0.tgz";
      name = "cliui-3.1.0.tgz";
      sha1 = "a3b880308e0a8191721e0081a8c2a8b506d0abf9";
    };
    deps = {
      "string-width-1.0.1" = self.by-version."string-width"."1.0.1";
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
      "wrap-ansi-1.0.0" = self.by-version."wrap-ansi"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."clone"."^1.0.2" =
    self.by-version."clone"."1.0.2";
  by-version."clone"."1.0.2" = self.buildNodePackage {
    name = "clone-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/clone/-/clone-1.0.2.tgz";
      name = "clone-1.0.2.tgz";
      sha1 = "260b7a99ebb1edfe247538175f783243cb19d149";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."coa"."~1.0.1" =
    self.by-version."coa"."1.0.1";
  by-version."coa"."1.0.1" = self.buildNodePackage {
    name = "coa-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/coa/-/coa-1.0.1.tgz";
      name = "coa-1.0.1.tgz";
      sha1 = "7f959346cfc8719e3f7233cd6852854a7c67d8a3";
    };
    deps = {
      "q-1.4.1" = self.by-version."q"."1.4.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."code-point-at"."^1.0.0" =
    self.by-version."code-point-at"."1.0.0";
  by-version."code-point-at"."1.0.0" = self.buildNodePackage {
    name = "code-point-at-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/code-point-at/-/code-point-at-1.0.0.tgz";
      name = "code-point-at-1.0.0.tgz";
      sha1 = "f69b192d3f7d91e382e4b71bddb77878619ab0c6";
    };
    deps = {
      "number-is-nan-1.0.0" = self.by-version."number-is-nan"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."coffee-loader"."^0.7.2" =
    self.by-version."coffee-loader"."0.7.2";
  by-version."coffee-loader"."0.7.2" = self.buildNodePackage {
    name = "coffee-loader-0.7.2";
    version = "0.7.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/coffee-loader/-/coffee-loader-0.7.2.tgz";
      name = "coffee-loader-0.7.2.tgz";
      sha1 = "4d3699af8a806312db3207385a842f497c1bd6fd";
    };
    deps = {
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."coffee-script"."1.10.0"];
    os = [ ];
    cpu = [ ];
  };
  "coffee-loader" = self.by-version."coffee-loader"."0.7.2";
  by-spec."coffee-script"."1.x" =
    self.by-version."coffee-script"."1.10.0";
  by-version."coffee-script"."1.10.0" = self.buildNodePackage {
    name = "coffee-script-1.10.0";
    version = "1.10.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/coffee-script/-/coffee-script-1.10.0.tgz";
      name = "coffee-script-1.10.0.tgz";
      sha1 = "12938bcf9be1948fa006f92e0c4c9e81705108c0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."coffee-script"."^1.10.0" =
    self.by-version."coffee-script"."1.10.0";
  "coffee-script" = self.by-version."coffee-script"."1.10.0";
  by-spec."coffee-script"."^1.9.1" =
    self.by-version."coffee-script"."1.10.0";
  by-spec."coffeelint"."^1.14.2" =
    self.by-version."coffeelint"."1.14.2";
  by-version."coffeelint"."1.14.2" = self.buildNodePackage {
    name = "coffeelint-1.14.2";
    version = "1.14.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/coffeelint/-/coffeelint-1.14.2.tgz";
      name = "coffeelint-1.14.2.tgz";
      sha1 = "42478843a974b8a967205bcdff5fc2d5d362bba5";
    };
    deps = {
      "coffee-script-1.10.0" = self.by-version."coffee-script"."1.10.0";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "ignore-2.2.19" = self.by-version."ignore"."2.2.19";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "resolve-0.6.3" = self.by-version."resolve"."0.6.3";
      "strip-json-comments-1.0.4" = self.by-version."strip-json-comments"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "coffeelint" = self.by-version."coffeelint"."1.14.2";
  by-spec."color"."^0.11.0" =
    self.by-version."color"."0.11.1";
  by-version."color"."0.11.1" = self.buildNodePackage {
    name = "color-0.11.1";
    version = "0.11.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/color/-/color-0.11.1.tgz";
      name = "color-0.11.1.tgz";
      sha1 = "19e357ce1872e191e8a91702b4ee1b0ed844187a";
    };
    deps = {
      "color-convert-0.5.3" = self.by-version."color-convert"."0.5.3";
      "color-string-0.3.0" = self.by-version."color-string"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."color-convert"."^0.5.3" =
    self.by-version."color-convert"."0.5.3";
  by-version."color-convert"."0.5.3" = self.buildNodePackage {
    name = "color-convert-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/color-convert/-/color-convert-0.5.3.tgz";
      name = "color-convert-0.5.3.tgz";
      sha1 = "bdb6c69ce660fadffe0b0007cc447e1b9f7282bd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."color-name"."^1.0.0" =
    self.by-version."color-name"."1.1.1";
  by-version."color-name"."1.1.1" = self.buildNodePackage {
    name = "color-name-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/color-name/-/color-name-1.1.1.tgz";
      name = "color-name-1.1.1.tgz";
      sha1 = "4b1415304cf50028ea81643643bd82ea05803689";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."color-string"."^0.3.0" =
    self.by-version."color-string"."0.3.0";
  by-version."color-string"."0.3.0" = self.buildNodePackage {
    name = "color-string-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/color-string/-/color-string-0.3.0.tgz";
      name = "color-string-0.3.0.tgz";
      sha1 = "27d46fb67025c5c2fa25993bfbf579e47841b991";
    };
    deps = {
      "color-name-1.1.1" = self.by-version."color-name"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."colormin"."^1.0.5" =
    self.by-version."colormin"."1.0.7";
  by-version."colormin"."1.0.7" = self.buildNodePackage {
    name = "colormin-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/colormin/-/colormin-1.0.7.tgz";
      name = "colormin-1.0.7.tgz";
      sha1 = "70c4da8c3cdbc39b5f32630e97ac625e05f83563";
    };
    deps = {
      "color-0.11.1" = self.by-version."color"."0.11.1";
      "css-color-names-0.0.3" = self.by-version."css-color-names"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."colors"."^1.1.0" =
    self.by-version."colors"."1.1.2";
  by-version."colors"."1.1.2" = self.buildNodePackage {
    name = "colors-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/colors/-/colors-1.1.2.tgz";
      name = "colors-1.1.2.tgz";
      sha1 = "168a4701756b6a7f51a12ce0c97bfa28c084ed63";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."colors"."~1.1.2" =
    self.by-version."colors"."1.1.2";
  by-spec."combined-stream"."^1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-version."combined-stream"."1.0.5" = self.buildNodePackage {
    name = "combined-stream-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combined-stream/-/combined-stream-1.0.5.tgz";
      name = "combined-stream-1.0.5.tgz";
      sha1 = "938370a57b4a51dea2c77c15d5c5fdf895164009";
    };
    deps = {
      "delayed-stream-1.0.0" = self.by-version."delayed-stream"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combined-stream"."~0.0.4" =
    self.by-version."combined-stream"."0.0.7";
  by-version."combined-stream"."0.0.7" = self.buildNodePackage {
    name = "combined-stream-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combined-stream/-/combined-stream-0.0.7.tgz";
      name = "combined-stream-0.0.7.tgz";
      sha1 = "0137e657baa5a7541c57ac37ac5fc07d73b4dc1f";
    };
    deps = {
      "delayed-stream-0.0.5" = self.by-version."delayed-stream"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combined-stream"."~1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-spec."commander"."0.6.1" =
    self.by-version."commander"."0.6.1";
  by-version."commander"."0.6.1" = self.buildNodePackage {
    name = "commander-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-0.6.1.tgz";
      name = "commander-0.6.1.tgz";
      sha1 = "fa68a14f6a945d54dbbe50d8cdb3320e9e3b1a06";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commander"."2.3.0" =
    self.by-version."commander"."2.3.0";
  by-version."commander"."2.3.0" = self.buildNodePackage {
    name = "commander-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.3.0.tgz";
      name = "commander-2.3.0.tgz";
      sha1 = "fd430e889832ec353b9acd1de217c11cb3eef873";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commander"."2.8.x" =
    self.by-version."commander"."2.8.1";
  by-version."commander"."2.8.1" = self.buildNodePackage {
    name = "commander-2.8.1";
    version = "2.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.8.1.tgz";
      name = "commander-2.8.1.tgz";
      sha1 = "06be367febfda0c330aa1e2a072d3dc9762425d4";
    };
    deps = {
      "graceful-readlink-1.0.1" = self.by-version."graceful-readlink"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commander"."^2.9.0" =
    self.by-version."commander"."2.9.0";
  by-version."commander"."2.9.0" = self.buildNodePackage {
    name = "commander-2.9.0";
    version = "2.9.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.9.0.tgz";
      name = "commander-2.9.0.tgz";
      sha1 = "9c99094176e12240cb22d6c5146098400fe0f7d4";
    };
    deps = {
      "graceful-readlink-1.0.1" = self.by-version."graceful-readlink"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."component-bind"."1.0.0" =
    self.by-version."component-bind"."1.0.0";
  by-version."component-bind"."1.0.0" = self.buildNodePackage {
    name = "component-bind-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/component-bind/-/component-bind-1.0.0.tgz";
      name = "component-bind-1.0.0.tgz";
      sha1 = "00c608ab7dcd93897c0009651b1d3a8e1e73bbd1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."component-emitter"."1.1.2" =
    self.by-version."component-emitter"."1.1.2";
  by-version."component-emitter"."1.1.2" = self.buildNodePackage {
    name = "component-emitter-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/component-emitter/-/component-emitter-1.1.2.tgz";
      name = "component-emitter-1.1.2.tgz";
      sha1 = "296594f2753daa63996d2af08d15a95116c9aec3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."component-emitter"."1.2.0" =
    self.by-version."component-emitter"."1.2.0";
  by-version."component-emitter"."1.2.0" = self.buildNodePackage {
    name = "component-emitter-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/component-emitter/-/component-emitter-1.2.0.tgz";
      name = "component-emitter-1.2.0.tgz";
      sha1 = "ccd113a86388d06482d03de3fc7df98526ba8efe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."component-emitter"."~1.2.0" =
    self.by-version."component-emitter"."1.2.0";
  by-spec."component-inherit"."0.0.3" =
    self.by-version."component-inherit"."0.0.3";
  by-version."component-inherit"."0.0.3" = self.buildNodePackage {
    name = "component-inherit-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/component-inherit/-/component-inherit-0.0.3.tgz";
      name = "component-inherit-0.0.3.tgz";
      sha1 = "645fc4adf58b72b649d5cae65135619db26ff143";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."compressible"."~2.0.7" =
    self.by-version."compressible"."2.0.7";
  by-version."compressible"."2.0.7" = self.buildNodePackage {
    name = "compressible-2.0.7";
    version = "2.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/compressible/-/compressible-2.0.7.tgz";
      name = "compressible-2.0.7.tgz";
      sha1 = "2058c52722fd3f1538a4f22ab14d0635904d19ae";
    };
    deps = {
      "mime-db-1.21.0" = self.by-version."mime-db"."1.21.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."compression"."^1.5.2" =
    self.by-version."compression"."1.6.1";
  by-version."compression"."1.6.1" = self.buildNodePackage {
    name = "compression-1.6.1";
    version = "1.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/compression/-/compression-1.6.1.tgz";
      name = "compression-1.6.1.tgz";
      sha1 = "1bf4f96fd72019a3fd11513b4fc4dcd3bd16db55";
    };
    deps = {
      "accepts-1.3.1" = self.by-version."accepts"."1.3.1";
      "bytes-2.2.0" = self.by-version."bytes"."2.2.0";
      "compressible-2.0.7" = self.by-version."compressible"."2.0.7";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "on-headers-1.0.1" = self.by-version."on-headers"."1.0.1";
      "vary-1.1.0" = self.by-version."vary"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-map"."0.0.1" =
    self.by-version."concat-map"."0.0.1";
  by-version."concat-map"."0.0.1" = self.buildNodePackage {
    name = "concat-map-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
      name = "concat-map-0.0.1.tgz";
      sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-stream"."1.5.x" =
    self.by-version."concat-stream"."1.5.1";
  by-version."concat-stream"."1.5.1" = self.buildNodePackage {
    name = "concat-stream-1.5.1";
    version = "1.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-stream/-/concat-stream-1.5.1.tgz";
      name = "concat-stream-1.5.1.tgz";
      sha1 = "f3b80acf9e1f48e3875c0688b41b6c31602eea1c";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "typedarray-0.0.6" = self.by-version."typedarray"."0.0.6";
      "readable-stream-2.0.5" = self.by-version."readable-stream"."2.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-stream"."^1.4.7" =
    self.by-version."concat-stream"."1.5.1";
  by-spec."config-chain"."~1.1.8" =
    self.by-version."config-chain"."1.1.10";
  by-version."config-chain"."1.1.10" = self.buildNodePackage {
    name = "config-chain-1.1.10";
    version = "1.1.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/config-chain/-/config-chain-1.1.10.tgz";
      name = "config-chain-1.1.10.tgz";
      sha1 = "7fc383de0fcc84d711cb465bd176579cad612346";
    };
    deps = {
      "proto-list-1.2.4" = self.by-version."proto-list"."1.2.4";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."connect"."^3.3.5" =
    self.by-version."connect"."3.4.1";
  by-version."connect"."3.4.1" = self.buildNodePackage {
    name = "connect-3.4.1";
    version = "3.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect/-/connect-3.4.1.tgz";
      name = "connect-3.4.1.tgz";
      sha1 = "a21361d3f4099ef761cda6dc4a973bb1ebb0a34d";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "finalhandler-0.4.1" = self.by-version."finalhandler"."0.4.1";
      "parseurl-1.3.1" = self.by-version."parseurl"."1.3.1";
      "utils-merge-1.0.0" = self.by-version."utils-merge"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."connect-history-api-fallback"."1.1.0" =
    self.by-version."connect-history-api-fallback"."1.1.0";
  by-version."connect-history-api-fallback"."1.1.0" = self.buildNodePackage {
    name = "connect-history-api-fallback-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect-history-api-fallback/-/connect-history-api-fallback-1.1.0.tgz";
      name = "connect-history-api-fallback-1.1.0.tgz";
      sha1 = "5a6dee82d9a648cb29131d3f9dd400ffa4593742";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."console-browserify"."^1.1.0" =
    self.by-version."console-browserify"."1.1.0";
  by-version."console-browserify"."1.1.0" = self.buildNodePackage {
    name = "console-browserify-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/console-browserify/-/console-browserify-1.1.0.tgz";
      name = "console-browserify-1.1.0.tgz";
      sha1 = "f0241c45730a9fc6323b206dbf38edc741d0bb10";
    };
    deps = {
      "date-now-0.1.4" = self.by-version."date-now"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."constant-case"."^1.1.0" =
    self.by-version."constant-case"."1.1.2";
  by-version."constant-case"."1.1.2" = self.buildNodePackage {
    name = "constant-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/constant-case/-/constant-case-1.1.2.tgz";
      name = "constant-case-1.1.2.tgz";
      sha1 = "8ec2ca5ba343e00aa38dbf4e200fd5ac907efd63";
    };
    deps = {
      "snake-case-1.1.2" = self.by-version."snake-case"."1.1.2";
      "upper-case-1.1.3" = self.by-version."upper-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."constants-browserify"."0.0.1" =
    self.by-version."constants-browserify"."0.0.1";
  by-version."constants-browserify"."0.0.1" = self.buildNodePackage {
    name = "constants-browserify-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/constants-browserify/-/constants-browserify-0.0.1.tgz";
      name = "constants-browserify-0.0.1.tgz";
      sha1 = "92577db527ba6c4cf0a4568d84bc031f441e21f2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."content-disposition"."0.5.1" =
    self.by-version."content-disposition"."0.5.1";
  by-version."content-disposition"."0.5.1" = self.buildNodePackage {
    name = "content-disposition-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/content-disposition/-/content-disposition-0.5.1.tgz";
      name = "content-disposition-0.5.1.tgz";
      sha1 = "87476c6a67c8daa87e32e87616df883ba7fb071b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."content-type"."~1.0.1" =
    self.by-version."content-type"."1.0.1";
  by-version."content-type"."1.0.1" = self.buildNodePackage {
    name = "content-type-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/content-type/-/content-type-1.0.1.tgz";
      name = "content-type-1.0.1.tgz";
      sha1 = "a19d2247327dc038050ce622b7a154ec59c5e600";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookie"."0.1.5" =
    self.by-version."cookie"."0.1.5";
  by-version."cookie"."0.1.5" = self.buildNodePackage {
    name = "cookie-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie/-/cookie-0.1.5.tgz";
      name = "cookie-0.1.5.tgz";
      sha1 = "6ab9948a4b1ae21952cd2588530a4722d4044d7c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookie-signature"."1.0.6" =
    self.by-version."cookie-signature"."1.0.6";
  by-version."cookie-signature"."1.0.6" = self.buildNodePackage {
    name = "cookie-signature-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz";
      name = "cookie-signature-1.0.6.tgz";
      sha1 = "e303a882b342cc3ee8ca513a79999734dab3ae2c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookiejar"."2.0.6" =
    self.by-version."cookiejar"."2.0.6";
  by-version."cookiejar"."2.0.6" = self.buildNodePackage {
    name = "cookiejar-2.0.6";
    version = "2.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookiejar/-/cookiejar-2.0.6.tgz";
      name = "cookiejar-2.0.6.tgz";
      sha1 = "0abf356ad00d1c5a219d88d44518046dd026acfe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-js"."^1.0.0" =
    self.by-version."core-js"."1.2.6";
  by-version."core-js"."1.2.6" = self.buildNodePackage {
    name = "core-js-1.2.6";
    version = "1.2.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-js/-/core-js-1.2.6.tgz";
      name = "core-js-1.2.6.tgz";
      sha1 = "e2351f6cae764f8c34e5d839acb6a60cef8b4a45";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-js"."^2.0.2" =
    self.by-version."core-js"."2.0.3";
  by-version."core-js"."2.0.3" = self.buildNodePackage {
    name = "core-js-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-js/-/core-js-2.0.3.tgz";
      name = "core-js-2.0.3.tgz";
      sha1 = "50875bfd128723373b8400f6bfcfe75134548cd2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-util-is"."~1.0.0" =
    self.by-version."core-util-is"."1.0.2";
  by-version."core-util-is"."1.0.2" = self.buildNodePackage {
    name = "core-util-is-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
      name = "core-util-is-1.0.2.tgz";
      sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cross-spawn"."^2.0.0" =
    self.by-version."cross-spawn"."2.1.4";
  by-version."cross-spawn"."2.1.4" = self.buildNodePackage {
    name = "cross-spawn-2.1.4";
    version = "2.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cross-spawn/-/cross-spawn-2.1.4.tgz";
      name = "cross-spawn-2.1.4.tgz";
      sha1 = "e64441b7a038e929ccc6e24e2aa7b72a96b26a27";
    };
    deps = {
      "cross-spawn-async-2.1.6" = self.by-version."cross-spawn-async"."2.1.6";
      "spawn-sync-1.0.15" = self.by-version."spawn-sync"."1.0.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cross-spawn-async"."^2.0.0" =
    self.by-version."cross-spawn-async"."2.1.6";
  by-version."cross-spawn-async"."2.1.6" = self.buildNodePackage {
    name = "cross-spawn-async-2.1.6";
    version = "2.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cross-spawn-async/-/cross-spawn-async-2.1.6.tgz";
      name = "cross-spawn-async-2.1.6.tgz";
      sha1 = "bba3739e5442236830c53d750225243c792f0512";
    };
    deps = {
      "lru-cache-4.0.0" = self.by-version."lru-cache"."4.0.0";
      "which-1.2.2" = self.by-version."which"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."crypt"."~ 0.0.1" =
    self.by-version."crypt"."0.0.1";
  by-version."crypt"."0.0.1" = self.buildNodePackage {
    name = "crypt-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/crypt/-/crypt-0.0.1.tgz";
      name = "crypt-0.0.1.tgz";
      sha1 = "5f11b21a6c05ef1b5e79708366da6374ece1e6a2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cryptiles"."0.2.x" =
    self.by-version."cryptiles"."0.2.2";
  by-version."cryptiles"."0.2.2" = self.buildNodePackage {
    name = "cryptiles-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cryptiles/-/cryptiles-0.2.2.tgz";
      name = "cryptiles-0.2.2.tgz";
      sha1 = "ed91ff1f17ad13d3748288594f8a48a0d26f325c";
    };
    deps = {
      "boom-0.4.2" = self.by-version."boom"."0.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cryptiles"."2.x.x" =
    self.by-version."cryptiles"."2.0.5";
  by-version."cryptiles"."2.0.5" = self.buildNodePackage {
    name = "cryptiles-2.0.5";
    version = "2.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cryptiles/-/cryptiles-2.0.5.tgz";
      name = "cryptiles-2.0.5.tgz";
      sha1 = "3bdfecdc608147c1c67202fa291e7dca59eaa3b8";
    };
    deps = {
      "boom-2.10.1" = self.by-version."boom"."2.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."crypto-browserify"."~3.2.6" =
    self.by-version."crypto-browserify"."3.2.8";
  by-version."crypto-browserify"."3.2.8" = self.buildNodePackage {
    name = "crypto-browserify-3.2.8";
    version = "3.2.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/crypto-browserify/-/crypto-browserify-3.2.8.tgz";
      name = "crypto-browserify-3.2.8.tgz";
      sha1 = "b9b11dbe6d9651dd882a01e6cc467df718ecf189";
    };
    deps = {
      "pbkdf2-compat-2.0.1" = self.by-version."pbkdf2-compat"."2.0.1";
      "ripemd160-0.2.0" = self.by-version."ripemd160"."0.2.0";
      "sha.js-2.2.6" = self.by-version."sha.js"."2.2.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."css-color-names"."0.0.3" =
    self.by-version."css-color-names"."0.0.3";
  by-version."css-color-names"."0.0.3" = self.buildNodePackage {
    name = "css-color-names-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/css-color-names/-/css-color-names-0.0.3.tgz";
      name = "css-color-names-0.0.3.tgz";
      sha1 = "de0cef16f4d8aa8222a320d5b6d7e9bbada7b9f6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."css-loader"."^0.23.1" =
    self.by-version."css-loader"."0.23.1";
  by-version."css-loader"."0.23.1" = self.buildNodePackage {
    name = "css-loader-0.23.1";
    version = "0.23.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/css-loader/-/css-loader-0.23.1.tgz";
      name = "css-loader-0.23.1.tgz";
      sha1 = "9fa23f2b5c0965235910ad5ecef3b8a36390fe50";
    };
    deps = {
      "css-selector-tokenizer-0.5.4" = self.by-version."css-selector-tokenizer"."0.5.4";
      "cssnano-3.4.0" = self.by-version."cssnano"."3.4.0";
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "lodash.camelcase-3.0.1" = self.by-version."lodash.camelcase"."3.0.1";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-modules-extract-imports-1.0.0" = self.by-version."postcss-modules-extract-imports"."1.0.0";
      "postcss-modules-local-by-default-1.0.1" = self.by-version."postcss-modules-local-by-default"."1.0.1";
      "postcss-modules-scope-1.0.0" = self.by-version."postcss-modules-scope"."1.0.0";
      "postcss-modules-values-1.1.1" = self.by-version."postcss-modules-values"."1.1.1";
      "source-list-map-0.1.5" = self.by-version."source-list-map"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "css-loader" = self.by-version."css-loader"."0.23.1";
  by-spec."css-parse"."1.7.x" =
    self.by-version."css-parse"."1.7.0";
  by-version."css-parse"."1.7.0" = self.buildNodePackage {
    name = "css-parse-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/css-parse/-/css-parse-1.7.0.tgz";
      name = "css-parse-1.7.0.tgz";
      sha1 = "321f6cf73782a6ff751111390fc05e2c657d8c9b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."css-select"."^1.1.0" =
    self.by-version."css-select"."1.2.0";
  by-version."css-select"."1.2.0" = self.buildNodePackage {
    name = "css-select-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/css-select/-/css-select-1.2.0.tgz";
      name = "css-select-1.2.0.tgz";
      sha1 = "2b3a110539c5355f1cd8d314623e870b121ec858";
    };
    deps = {
      "css-what-2.1.0" = self.by-version."css-what"."2.1.0";
      "domutils-1.5.1" = self.by-version."domutils"."1.5.1";
      "boolbase-1.0.0" = self.by-version."boolbase"."1.0.0";
      "nth-check-1.0.1" = self.by-version."nth-check"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."css-selector-tokenizer"."^0.5.0" =
    self.by-version."css-selector-tokenizer"."0.5.4";
  by-version."css-selector-tokenizer"."0.5.4" = self.buildNodePackage {
    name = "css-selector-tokenizer-0.5.4";
    version = "0.5.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/css-selector-tokenizer/-/css-selector-tokenizer-0.5.4.tgz";
      name = "css-selector-tokenizer-0.5.4.tgz";
      sha1 = "139bafd34a35fd0c1428487049e0699e6f6a2c21";
    };
    deps = {
      "cssesc-0.1.0" = self.by-version."cssesc"."0.1.0";
      "fastparse-1.1.1" = self.by-version."fastparse"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."css-selector-tokenizer"."^0.5.1" =
    self.by-version."css-selector-tokenizer"."0.5.4";
  by-spec."css-what"."2.1" =
    self.by-version."css-what"."2.1.0";
  by-version."css-what"."2.1.0" = self.buildNodePackage {
    name = "css-what-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/css-what/-/css-what-2.1.0.tgz";
      name = "css-what-2.1.0.tgz";
      sha1 = "9467d032c38cfaefb9f2d79501253062f87fa1bd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cssesc"."^0.1.0" =
    self.by-version."cssesc"."0.1.0";
  by-version."cssesc"."0.1.0" = self.buildNodePackage {
    name = "cssesc-0.1.0";
    version = "0.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/cssesc/-/cssesc-0.1.0.tgz";
      name = "cssesc-0.1.0.tgz";
      sha1 = "c814903e45623371a0477b40109aaafbeeaddbb4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cssnano".">=2.6.1 <4" =
    self.by-version."cssnano"."3.4.0";
  by-version."cssnano"."3.4.0" = self.buildNodePackage {
    name = "cssnano-3.4.0";
    version = "3.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cssnano/-/cssnano-3.4.0.tgz";
      name = "cssnano-3.4.0.tgz";
      sha1 = "14d391032de4760d22e5db9f1fec1f0868e4bbb7";
    };
    deps = {
      "autoprefixer-6.3.1" = self.by-version."autoprefixer"."6.3.1";
      "decamelize-1.1.2" = self.by-version."decamelize"."1.1.2";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "indexes-of-1.0.1" = self.by-version."indexes-of"."1.0.1";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-calc-5.2.0" = self.by-version."postcss-calc"."5.2.0";
      "postcss-colormin-2.1.8" = self.by-version."postcss-colormin"."2.1.8";
      "postcss-convert-values-2.3.4" = self.by-version."postcss-convert-values"."2.3.4";
      "postcss-discard-comments-2.0.3" = self.by-version."postcss-discard-comments"."2.0.3";
      "postcss-discard-duplicates-2.0.0" = self.by-version."postcss-discard-duplicates"."2.0.0";
      "postcss-discard-empty-2.0.0" = self.by-version."postcss-discard-empty"."2.0.0";
      "postcss-discard-unused-2.1.0" = self.by-version."postcss-discard-unused"."2.1.0";
      "postcss-filter-plugins-2.0.0" = self.by-version."postcss-filter-plugins"."2.0.0";
      "postcss-merge-idents-2.1.4" = self.by-version."postcss-merge-idents"."2.1.4";
      "postcss-merge-longhand-2.0.1" = self.by-version."postcss-merge-longhand"."2.0.1";
      "postcss-merge-rules-2.0.3" = self.by-version."postcss-merge-rules"."2.0.3";
      "postcss-minify-font-values-1.0.2" = self.by-version."postcss-minify-font-values"."1.0.2";
      "postcss-minify-gradients-1.0.1" = self.by-version."postcss-minify-gradients"."1.0.1";
      "postcss-minify-params-1.0.4" = self.by-version."postcss-minify-params"."1.0.4";
      "postcss-minify-selectors-2.0.3" = self.by-version."postcss-minify-selectors"."2.0.3";
      "postcss-normalize-charset-1.1.0" = self.by-version."postcss-normalize-charset"."1.1.0";
      "postcss-normalize-url-3.0.5" = self.by-version."postcss-normalize-url"."3.0.5";
      "postcss-ordered-values-2.0.2" = self.by-version."postcss-ordered-values"."2.0.2";
      "postcss-reduce-idents-2.2.1" = self.by-version."postcss-reduce-idents"."2.2.1";
      "postcss-reduce-transforms-1.0.3" = self.by-version."postcss-reduce-transforms"."1.0.3";
      "postcss-svgo-2.1.1" = self.by-version."postcss-svgo"."2.1.1";
      "postcss-unique-selectors-2.0.1" = self.by-version."postcss-unique-selectors"."2.0.1";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
      "postcss-zindex-2.0.1" = self.by-version."postcss-zindex"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."csso"."~1.4.2" =
    self.by-version."csso"."1.4.4";
  by-version."csso"."1.4.4" = self.buildNodePackage {
    name = "csso-1.4.4";
    version = "1.4.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/csso/-/csso-1.4.4.tgz";
      name = "csso-1.4.4.tgz";
      sha1 = "0aebfa5093ef30ccac6db3ff5759dfca621b6b6a";
    };
    deps = {
      "clap-1.0.10" = self.by-version."clap"."1.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ctype"."0.5.3" =
    self.by-version."ctype"."0.5.3";
  by-version."ctype"."0.5.3" = self.buildNodePackage {
    name = "ctype-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ctype/-/ctype-0.5.3.tgz";
      name = "ctype-0.5.3.tgz";
      sha1 = "82c18c2461f74114ef16c135224ad0b9144ca12f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."custom-event"."~1.0.0" =
    self.by-version."custom-event"."1.0.0";
  by-version."custom-event"."1.0.0" = self.buildNodePackage {
    name = "custom-event-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/custom-event/-/custom-event-1.0.0.tgz";
      name = "custom-event-1.0.0.tgz";
      sha1 = "2e4628be19dc4b214b5c02630c5971e811618062";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."d"."^0.1.1" =
    self.by-version."d"."0.1.1";
  by-version."d"."0.1.1" = self.buildNodePackage {
    name = "d-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/d/-/d-0.1.1.tgz";
      name = "d-0.1.1.tgz";
      sha1 = "da184c535d18d8ee7ba2aa229b914009fae11309";
    };
    deps = {
      "es5-ext-0.10.11" = self.by-version."es5-ext"."0.10.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."d"."~0.1.1" =
    self.by-version."d"."0.1.1";
  by-spec."dashdash".">=1.10.1 <2.0.0" =
    self.by-version."dashdash"."1.12.2";
  by-version."dashdash"."1.12.2" = self.buildNodePackage {
    name = "dashdash-1.12.2";
    version = "1.12.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dashdash/-/dashdash-1.12.2.tgz";
      name = "dashdash-1.12.2.tgz";
      sha1 = "1c6f70588498d047b8cd5777b32ba85a5e25be36";
    };
    deps = {
      "assert-plus-0.2.0" = self.by-version."assert-plus"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."date-now"."^0.1.4" =
    self.by-version."date-now"."0.1.4";
  by-version."date-now"."0.1.4" = self.buildNodePackage {
    name = "date-now-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/date-now/-/date-now-0.1.4.tgz";
      name = "date-now-0.1.4.tgz";
      sha1 = "eaf439fd4d4848ad74e5cc7dbef200672b9e345b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."*" =
    self.by-version."debug"."2.2.0";
  by-version."debug"."2.2.0" = self.buildNodePackage {
    name = "debug-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
      name = "debug-2.2.0.tgz";
      sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
    };
    deps = {
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."0.7.4" =
    self.by-version."debug"."0.7.4";
  by-version."debug"."0.7.4" = self.buildNodePackage {
    name = "debug-0.7.4";
    version = "0.7.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-0.7.4.tgz";
      name = "debug-0.7.4.tgz";
      sha1 = "06e1ea8082c2cb14e39806e22e2f6f757f92af39";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."2" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."^2.1.0" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."^2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."~0.7.2" =
    self.by-version."debug"."0.7.4";
  by-spec."debug"."~2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."decamelize"."^1.0.0" =
    self.by-version."decamelize"."1.1.2";
  by-version."decamelize"."1.1.2" = self.buildNodePackage {
    name = "decamelize-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/decamelize/-/decamelize-1.1.2.tgz";
      name = "decamelize-1.1.2.tgz";
      sha1 = "dcc93727be209632e98b02718ef4cb79602322f2";
    };
    deps = {
      "escape-string-regexp-1.0.4" = self.by-version."escape-string-regexp"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."decamelize"."^1.1.0" =
    self.by-version."decamelize"."1.1.2";
  by-spec."decamelize"."^1.1.1" =
    self.by-version."decamelize"."1.1.2";
  by-spec."decamelize"."^1.1.2" =
    self.by-version."decamelize"."1.1.2";
  by-spec."deep-eql"."^0.1.3" =
    self.by-version."deep-eql"."0.1.3";
  by-version."deep-eql"."0.1.3" = self.buildNodePackage {
    name = "deep-eql-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-eql/-/deep-eql-0.1.3.tgz";
      name = "deep-eql-0.1.3.tgz";
      sha1 = "ef558acab8de25206cd713906d74e56930eb69f2";
    };
    deps = {
      "type-detect-0.1.1" = self.by-version."type-detect"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deep-equal"."^1.0.1" =
    self.by-version."deep-equal"."1.0.1";
  by-version."deep-equal"."1.0.1" = self.buildNodePackage {
    name = "deep-equal-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-equal/-/deep-equal-1.0.1.tgz";
      name = "deep-equal-1.0.1.tgz";
      sha1 = "f5d260292b660e084eff4cdbc9f08ad3247448b5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deep-extend"."~0.4.0" =
    self.by-version."deep-extend"."0.4.1";
  by-version."deep-extend"."0.4.1" = self.buildNodePackage {
    name = "deep-extend-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-extend/-/deep-extend-0.4.1.tgz";
      name = "deep-extend-0.4.1.tgz";
      sha1 = "efe4113d08085f4e6f9687759810f807469e2253";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."defined"."^1.0.0" =
    self.by-version."defined"."1.0.0";
  by-version."defined"."1.0.0" = self.buildNodePackage {
    name = "defined-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/defined/-/defined-1.0.0.tgz";
      name = "defined-1.0.0.tgz";
      sha1 = "c98d9bcef75674188e110969151199e39b1fa693";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delayed-stream"."0.0.5" =
    self.by-version."delayed-stream"."0.0.5";
  by-version."delayed-stream"."0.0.5" = self.buildNodePackage {
    name = "delayed-stream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delayed-stream/-/delayed-stream-0.0.5.tgz";
      name = "delayed-stream-0.0.5.tgz";
      sha1 = "d4b1f43a93e8296dfe02694f4680bc37a313c73f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delayed-stream"."~1.0.0" =
    self.by-version."delayed-stream"."1.0.0";
  by-version."delayed-stream"."1.0.0" = self.buildNodePackage {
    name = "delayed-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
      name = "delayed-stream-1.0.0.tgz";
      sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delegates"."^0.1.0" =
    self.by-version."delegates"."0.1.0";
  by-version."delegates"."0.1.0" = self.buildNodePackage {
    name = "delegates-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delegates/-/delegates-0.1.0.tgz";
      name = "delegates-0.1.0.tgz";
      sha1 = "b4b57be11a1653517a04b27f0949bdc327dfe390";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."depd"."~1.1.0" =
    self.by-version."depd"."1.1.0";
  by-version."depd"."1.1.0" = self.buildNodePackage {
    name = "depd-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/depd/-/depd-1.1.0.tgz";
      name = "depd-1.1.0.tgz";
      sha1 = "e1bd82c6aab6ced965b97b88b17ed3e528ca18c3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."destroy"."~1.0.4" =
    self.by-version."destroy"."1.0.4";
  by-version."destroy"."1.0.4" = self.buildNodePackage {
    name = "destroy-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/destroy/-/destroy-1.0.4.tgz";
      name = "destroy-1.0.4.tgz";
      sha1 = "978857442c44749e4206613e37946205826abd80";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."di"."^0.0.1" =
    self.by-version."di"."0.0.1";
  by-version."di"."0.0.1" = self.buildNodePackage {
    name = "di-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/di/-/di-0.0.1.tgz";
      name = "di-0.0.1.tgz";
      sha1 = "806649326ceaa7caa3306d75d985ea2748ba913c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."diff"."1.4.0" =
    self.by-version."diff"."1.4.0";
  by-version."diff"."1.4.0" = self.buildNodePackage {
    name = "diff-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/diff/-/diff-1.4.0.tgz";
      name = "diff-1.4.0.tgz";
      sha1 = "7f28d2eb9ee7b15a97efd89ce63dcfdaa3ccbabf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dom-converter"."~0.1" =
    self.by-version."dom-converter"."0.1.4";
  by-version."dom-converter"."0.1.4" = self.buildNodePackage {
    name = "dom-converter-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dom-converter/-/dom-converter-0.1.4.tgz";
      name = "dom-converter-0.1.4.tgz";
      sha1 = "a45ef5727b890c9bffe6d7c876e7b19cb0e17f3b";
    };
    deps = {
      "utila-0.3.3" = self.by-version."utila"."0.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dom-serialize"."^2.2.0" =
    self.by-version."dom-serialize"."2.2.1";
  by-version."dom-serialize"."2.2.1" = self.buildNodePackage {
    name = "dom-serialize-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dom-serialize/-/dom-serialize-2.2.1.tgz";
      name = "dom-serialize-2.2.1.tgz";
      sha1 = "562ae8999f44be5ea3076f5419dcd59eb43ac95b";
    };
    deps = {
      "custom-event-1.0.0" = self.by-version."custom-event"."1.0.0";
      "ent-2.2.0" = self.by-version."ent"."2.2.0";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "void-elements-2.0.1" = self.by-version."void-elements"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dom-serializer"."0" =
    self.by-version."dom-serializer"."0.1.0";
  by-version."dom-serializer"."0.1.0" = self.buildNodePackage {
    name = "dom-serializer-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dom-serializer/-/dom-serializer-0.1.0.tgz";
      name = "dom-serializer-0.1.0.tgz";
      sha1 = "073c697546ce0780ce23be4a28e293e40bc30c82";
    };
    deps = {
      "domelementtype-1.1.3" = self.by-version."domelementtype"."1.1.3";
      "entities-1.1.1" = self.by-version."entities"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domain-browser"."^1.1.1" =
    self.by-version."domain-browser"."1.1.7";
  by-version."domain-browser"."1.1.7" = self.buildNodePackage {
    name = "domain-browser-1.1.7";
    version = "1.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domain-browser/-/domain-browser-1.1.7.tgz";
      name = "domain-browser-1.1.7.tgz";
      sha1 = "867aa4b093faa05f1de08c06f4d7b21fdf8698bc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domelementtype"."1" =
    self.by-version."domelementtype"."1.3.0";
  by-version."domelementtype"."1.3.0" = self.buildNodePackage {
    name = "domelementtype-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domelementtype/-/domelementtype-1.3.0.tgz";
      name = "domelementtype-1.3.0.tgz";
      sha1 = "b17aed82e8ab59e52dd9c19b1756e0fc187204c2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domelementtype"."~1.1.1" =
    self.by-version."domelementtype"."1.1.3";
  by-version."domelementtype"."1.1.3" = self.buildNodePackage {
    name = "domelementtype-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domelementtype/-/domelementtype-1.1.3.tgz";
      name = "domelementtype-1.1.3.tgz";
      sha1 = "bd28773e2642881aec51544924299c5cd822185b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domhandler"."2.1" =
    self.by-version."domhandler"."2.1.0";
  by-version."domhandler"."2.1.0" = self.buildNodePackage {
    name = "domhandler-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domhandler/-/domhandler-2.1.0.tgz";
      name = "domhandler-2.1.0.tgz";
      sha1 = "d2646f5e57f6c3bab11cf6cb05d3c0acf7412594";
    };
    deps = {
      "domelementtype-1.3.0" = self.by-version."domelementtype"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domutils"."1.1" =
    self.by-version."domutils"."1.1.6";
  by-version."domutils"."1.1.6" = self.buildNodePackage {
    name = "domutils-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domutils/-/domutils-1.1.6.tgz";
      name = "domutils-1.1.6.tgz";
      sha1 = "bddc3de099b9a2efacc51c623f28f416ecc57485";
    };
    deps = {
      "domelementtype-1.3.0" = self.by-version."domelementtype"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domutils"."1.5.1" =
    self.by-version."domutils"."1.5.1";
  by-version."domutils"."1.5.1" = self.buildNodePackage {
    name = "domutils-1.5.1";
    version = "1.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domutils/-/domutils-1.5.1.tgz";
      name = "domutils-1.5.1.tgz";
      sha1 = "dcd8488a26f563d61079e48c9f7b7e32373682cf";
    };
    deps = {
      "dom-serializer-0.1.0" = self.by-version."dom-serializer"."0.1.0";
      "domelementtype-1.3.0" = self.by-version."domelementtype"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dot-case"."^1.1.0" =
    self.by-version."dot-case"."1.1.2";
  by-version."dot-case"."1.1.2" = self.buildNodePackage {
    name = "dot-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dot-case/-/dot-case-1.1.2.tgz";
      name = "dot-case-1.1.2.tgz";
      sha1 = "1e73826900de28d6de5480bc1de31d0842b06bec";
    };
    deps = {
      "sentence-case-1.1.3" = self.by-version."sentence-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ecc-jsbn".">=0.0.1 <1.0.0" =
    self.by-version."ecc-jsbn"."0.1.1";
  by-version."ecc-jsbn"."0.1.1" = self.buildNodePackage {
    name = "ecc-jsbn-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
      name = "ecc-jsbn-0.1.1.tgz";
      sha1 = "0fc73a9ed5f0d53c38193398523ef7e543777505";
    };
    deps = {
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ee-first"."1.1.1" =
    self.by-version."ee-first"."1.1.1";
  by-version."ee-first"."1.1.1" = self.buildNodePackage {
    name = "ee-first-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
      name = "ee-first-1.1.1.tgz";
      sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."engine.io"."1.6.7" =
    self.by-version."engine.io"."1.6.7";
  by-version."engine.io"."1.6.7" = self.buildNodePackage {
    name = "engine.io-1.6.7";
    version = "1.6.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io/-/engine.io-1.6.7.tgz";
      name = "engine.io-1.6.7.tgz";
      sha1 = "d49db58ffa41cb7a6ab24732f14dacfb39c4d27c";
    };
    deps = {
      "base64id-0.1.0" = self.by-version."base64id"."0.1.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "ws-1.0.1" = self.by-version."ws"."1.0.1";
      "engine.io-parser-1.2.4" = self.by-version."engine.io-parser"."1.2.4";
      "accepts-1.1.4" = self.by-version."accepts"."1.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."engine.io-client"."1.6.7" =
    self.by-version."engine.io-client"."1.6.7";
  by-version."engine.io-client"."1.6.7" = self.buildNodePackage {
    name = "engine.io-client-1.6.7";
    version = "1.6.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io-client/-/engine.io-client-1.6.7.tgz";
      name = "engine.io-client-1.6.7.tgz";
      sha1 = "eae106736021526475e6b087c8eaf927d26becc2";
    };
    deps = {
      "has-cors-1.1.0" = self.by-version."has-cors"."1.1.0";
      "ws-1.0.1" = self.by-version."ws"."1.0.1";
      "xmlhttprequest-ssl-1.5.1" = self.by-version."xmlhttprequest-ssl"."1.5.1";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
      "engine.io-parser-1.2.4" = self.by-version."engine.io-parser"."1.2.4";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "parseuri-0.0.4" = self.by-version."parseuri"."0.0.4";
      "parsejson-0.0.1" = self.by-version."parsejson"."0.0.1";
      "parseqs-0.0.2" = self.by-version."parseqs"."0.0.2";
      "component-inherit-0.0.3" = self.by-version."component-inherit"."0.0.3";
      "yeast-0.1.2" = self.by-version."yeast"."0.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."engine.io-parser"."1.2.4" =
    self.by-version."engine.io-parser"."1.2.4";
  by-version."engine.io-parser"."1.2.4" = self.buildNodePackage {
    name = "engine.io-parser-1.2.4";
    version = "1.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io-parser/-/engine.io-parser-1.2.4.tgz";
      name = "engine.io-parser-1.2.4.tgz";
      sha1 = "e0897b0bf14e792d4cd2a5950553919c56948c42";
    };
    deps = {
      "after-0.8.1" = self.by-version."after"."0.8.1";
      "arraybuffer.slice-0.0.6" = self.by-version."arraybuffer.slice"."0.0.6";
      "base64-arraybuffer-0.1.2" = self.by-version."base64-arraybuffer"."0.1.2";
      "blob-0.0.4" = self.by-version."blob"."0.0.4";
      "has-binary-0.1.6" = self.by-version."has-binary"."0.1.6";
      "utf8-2.1.0" = self.by-version."utf8"."2.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."enhanced-resolve"."~0.9.0" =
    self.by-version."enhanced-resolve"."0.9.1";
  by-version."enhanced-resolve"."0.9.1" = self.buildNodePackage {
    name = "enhanced-resolve-0.9.1";
    version = "0.9.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-0.9.1.tgz";
      name = "enhanced-resolve-0.9.1.tgz";
      sha1 = "4d6e689b3725f86090927ccc86cd9f1635b89e2e";
    };
    deps = {
      "tapable-0.1.10" = self.by-version."tapable"."0.1.10";
      "memory-fs-0.2.0" = self.by-version."memory-fs"."0.2.0";
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ent"."~2.2.0" =
    self.by-version."ent"."2.2.0";
  by-version."ent"."2.2.0" = self.buildNodePackage {
    name = "ent-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ent/-/ent-2.2.0.tgz";
      name = "ent-2.2.0.tgz";
      sha1 = "e964219325a21d05f44466a2f686ed6ce5f5dd1d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."entities"."~1.1.1" =
    self.by-version."entities"."1.1.1";
  by-version."entities"."1.1.1" = self.buildNodePackage {
    name = "entities-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/entities/-/entities-1.1.1.tgz";
      name = "entities-1.1.1.tgz";
      sha1 = "6e5c2d0a5621b5dadaecef80b90edfb5cd7772f0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."envify"."^3.0.0" =
    self.by-version."envify"."3.4.0";
  by-version."envify"."3.4.0" = self.buildNodePackage {
    name = "envify-3.4.0";
    version = "3.4.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/envify/-/envify-3.4.0.tgz";
      name = "envify-3.4.0.tgz";
      sha1 = "a0bed52222529076a02fabf6ce00eef42d7b6734";
    };
    deps = {
      "through-2.3.8" = self.by-version."through"."2.3.8";
      "jstransform-10.1.0" = self.by-version."jstransform"."10.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."errno"."^0.1.1" =
    self.by-version."errno"."0.1.4";
  by-version."errno"."0.1.4" = self.buildNodePackage {
    name = "errno-0.1.4";
    version = "0.1.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/errno/-/errno-0.1.4.tgz";
      name = "errno-0.1.4.tgz";
      sha1 = "b896e23a9e5e8ba33871fc996abd3635fc9a1c7d";
    };
    deps = {
      "prr-0.0.0" = self.by-version."prr"."0.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."errno"."^0.1.3" =
    self.by-version."errno"."0.1.4";
  by-spec."error-ex"."^1.2.0" =
    self.by-version."error-ex"."1.3.0";
  by-version."error-ex"."1.3.0" = self.buildNodePackage {
    name = "error-ex-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/error-ex/-/error-ex-1.3.0.tgz";
      name = "error-ex-1.3.0.tgz";
      sha1 = "e67b43f3e82c96ea3a584ffee0b9fc3325d802d9";
    };
    deps = {
      "is-arrayish-0.2.1" = self.by-version."is-arrayish"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es5-ext"."^0.10.7" =
    self.by-version."es5-ext"."0.10.11";
  by-version."es5-ext"."0.10.11" = self.buildNodePackage {
    name = "es5-ext-0.10.11";
    version = "0.10.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es5-ext/-/es5-ext-0.10.11.tgz";
      name = "es5-ext-0.10.11.tgz";
      sha1 = "8184c3e705a820948c2dbe043849379b1dbd0c45";
    };
    deps = {
      "es6-iterator-2.0.0" = self.by-version."es6-iterator"."2.0.0";
      "es6-symbol-3.0.2" = self.by-version."es6-symbol"."3.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es5-ext"."~0.10.10" =
    self.by-version."es5-ext"."0.10.11";
  by-spec."es5-ext"."~0.10.2" =
    self.by-version."es5-ext"."0.10.11";
  by-spec."es5-shim"."^4.5.0" =
    self.by-version."es5-shim"."4.5.0";
  by-version."es5-shim"."4.5.0" = self.buildNodePackage {
    name = "es5-shim-4.5.0";
    version = "4.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es5-shim/-/es5-shim-4.5.0.tgz";
      name = "es5-shim-4.5.0.tgz";
      sha1 = "4a79e69eb173ad71a35df1d3b1dd7c3e1db00d6a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "es5-shim" = self.by-version."es5-shim"."4.5.0";
  by-spec."es6-iterator"."2" =
    self.by-version."es6-iterator"."2.0.0";
  by-version."es6-iterator"."2.0.0" = self.buildNodePackage {
    name = "es6-iterator-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es6-iterator/-/es6-iterator-2.0.0.tgz";
      name = "es6-iterator-2.0.0.tgz";
      sha1 = "bd968567d61635e33c0b80727613c9cb4b096bac";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.11" = self.by-version."es5-ext"."0.10.11";
      "es6-symbol-3.0.2" = self.by-version."es6-symbol"."3.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es6-symbol"."3" =
    self.by-version."es6-symbol"."3.0.2";
  by-version."es6-symbol"."3.0.2" = self.buildNodePackage {
    name = "es6-symbol-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es6-symbol/-/es6-symbol-3.0.2.tgz";
      name = "es6-symbol-3.0.2.tgz";
      sha1 = "1e928878c6f5e63541625b4bb4df4af07d154219";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.11" = self.by-version."es5-ext"."0.10.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es6-symbol"."^3.0.2" =
    self.by-version."es6-symbol"."3.0.2";
  by-spec."es6-symbol"."~3.0.2" =
    self.by-version."es6-symbol"."3.0.2";
  by-spec."escape-html"."~1.0.3" =
    self.by-version."escape-html"."1.0.3";
  by-version."escape-html"."1.0.3" = self.buildNodePackage {
    name = "escape-html-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz";
      name = "escape-html-1.0.3.tgz";
      sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."1.0.2" =
    self.by-version."escape-string-regexp"."1.0.2";
  by-version."escape-string-regexp"."1.0.2" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.2.tgz";
      name = "escape-string-regexp-1.0.2.tgz";
      sha1 = "4dbc2fe674e71949caf3fb2695ce7f2dc1d9a8d1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."^1.0.2" =
    self.by-version."escape-string-regexp"."1.0.4";
  by-version."escape-string-regexp"."1.0.4" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.4.tgz";
      name = "escape-string-regexp-1.0.4.tgz";
      sha1 = "b85e679b46f72d03fbbe8a3bf7259d535c21b62f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."^1.0.4" =
    self.by-version."escape-string-regexp"."1.0.4";
  by-spec."esprima"."^2.5.0" =
    self.by-version."esprima"."2.7.1";
  by-version."esprima"."2.7.1" = self.buildNodePackage {
    name = "esprima-2.7.1";
    version = "2.7.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima/-/esprima-2.7.1.tgz";
      name = "esprima-2.7.1.tgz";
      sha1 = "2ab7d1549edd06d14d69a6c1a1754aca02e9657e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima"."^2.6.0" =
    self.by-version."esprima"."2.7.1";
  by-spec."esprima-fb"."13001.1001.0-dev-harmony-fb" =
    self.by-version."esprima-fb"."13001.1001.0-dev-harmony-fb";
  by-version."esprima-fb"."13001.1001.0-dev-harmony-fb" = self.buildNodePackage {
    name = "esprima-fb-13001.1001.0-dev-harmony-fb";
    version = "13001.1001.0-dev-harmony-fb";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima-fb/-/esprima-fb-13001.1001.0-dev-harmony-fb.tgz";
      name = "esprima-fb-13001.1001.0-dev-harmony-fb.tgz";
      sha1 = "633acdb40d9bd4db8a1c1d68c06a942959fad2b0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."etag"."~1.7.0" =
    self.by-version."etag"."1.7.0";
  by-version."etag"."1.7.0" = self.buildNodePackage {
    name = "etag-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/etag/-/etag-1.7.0.tgz";
      name = "etag-1.7.0.tgz";
      sha1 = "03d30b5f67dd6e632d2945d30d6652731a34d5d8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."eventemitter3"."1.x.x" =
    self.by-version."eventemitter3"."1.1.1";
  by-version."eventemitter3"."1.1.1" = self.buildNodePackage {
    name = "eventemitter3-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/eventemitter3/-/eventemitter3-1.1.1.tgz";
      name = "eventemitter3-1.1.1.tgz";
      sha1 = "47786bdaa087caf7b1b75e73abc5c7d540158cd0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."events"."^1.0.0" =
    self.by-version."events"."1.1.0";
  by-version."events"."1.1.0" = self.buildNodePackage {
    name = "events-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/events/-/events-1.1.0.tgz";
      name = "events-1.1.0.tgz";
      sha1 = "4b389fc200f910742ebff3abb2efe33690f45429";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."eventsource"."^0.1.3" =
    self.by-version."eventsource"."0.1.6";
  by-version."eventsource"."0.1.6" = self.buildNodePackage {
    name = "eventsource-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/eventsource/-/eventsource-0.1.6.tgz";
      name = "eventsource-0.1.6.tgz";
      sha1 = "0acede849ed7dd1ccc32c811bb11b944d4f29232";
    };
    deps = {
      "original-1.0.0" = self.by-version."original"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."exit"."0.1.2" =
    self.by-version."exit"."0.1.2";
  by-version."exit"."0.1.2" = self.buildNodePackage {
    name = "exit-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/exit/-/exit-0.1.2.tgz";
      name = "exit-0.1.2.tgz";
      sha1 = "0632638f8d877cc82107d30a0fff1a17cba1cd0c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-braces"."^0.1.1" =
    self.by-version."expand-braces"."0.1.2";
  by-version."expand-braces"."0.1.2" = self.buildNodePackage {
    name = "expand-braces-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-braces/-/expand-braces-0.1.2.tgz";
      name = "expand-braces-0.1.2.tgz";
      sha1 = "488b1d1d2451cb3d3a6b192cfc030f44c5855fea";
    };
    deps = {
      "array-slice-0.2.3" = self.by-version."array-slice"."0.2.3";
      "array-unique-0.2.1" = self.by-version."array-unique"."0.2.1";
      "braces-0.1.5" = self.by-version."braces"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-brackets"."^0.1.4" =
    self.by-version."expand-brackets"."0.1.4";
  by-version."expand-brackets"."0.1.4" = self.buildNodePackage {
    name = "expand-brackets-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-brackets/-/expand-brackets-0.1.4.tgz";
      name = "expand-brackets-0.1.4.tgz";
      sha1 = "797b9e484101205f418cecaec6312c132f51e2ae";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-range"."^0.1.0" =
    self.by-version."expand-range"."0.1.1";
  by-version."expand-range"."0.1.1" = self.buildNodePackage {
    name = "expand-range-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-range/-/expand-range-0.1.1.tgz";
      name = "expand-range-0.1.1.tgz";
      sha1 = "4cb8eda0993ca56fa4f41fc42f3cbb4ccadff044";
    };
    deps = {
      "is-number-0.1.1" = self.by-version."is-number"."0.1.1";
      "repeat-string-0.2.2" = self.by-version."repeat-string"."0.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-range"."^1.8.1" =
    self.by-version."expand-range"."1.8.1";
  by-version."expand-range"."1.8.1" = self.buildNodePackage {
    name = "expand-range-1.8.1";
    version = "1.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-range/-/expand-range-1.8.1.tgz";
      name = "expand-range-1.8.1.tgz";
      sha1 = "acbd63e56efd9139722b755f099b9db5ac1f33f6";
    };
    deps = {
      "fill-range-2.2.3" = self.by-version."fill-range"."2.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."express"."^4.13.3" =
    self.by-version."express"."4.13.4";
  by-version."express"."4.13.4" = self.buildNodePackage {
    name = "express-4.13.4";
    version = "4.13.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/express/-/express-4.13.4.tgz";
      name = "express-4.13.4.tgz";
      sha1 = "3c0b76f3c77590c8345739061ec0bd3ba067ec24";
    };
    deps = {
      "accepts-1.2.13" = self.by-version."accepts"."1.2.13";
      "array-flatten-1.1.1" = self.by-version."array-flatten"."1.1.1";
      "content-disposition-0.5.1" = self.by-version."content-disposition"."0.5.1";
      "content-type-1.0.1" = self.by-version."content-type"."1.0.1";
      "cookie-0.1.5" = self.by-version."cookie"."0.1.5";
      "cookie-signature-1.0.6" = self.by-version."cookie-signature"."1.0.6";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "finalhandler-0.4.1" = self.by-version."finalhandler"."0.4.1";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "merge-descriptors-1.0.1" = self.by-version."merge-descriptors"."1.0.1";
      "methods-1.1.2" = self.by-version."methods"."1.1.2";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "parseurl-1.3.1" = self.by-version."parseurl"."1.3.1";
      "path-to-regexp-0.1.7" = self.by-version."path-to-regexp"."0.1.7";
      "proxy-addr-1.0.10" = self.by-version."proxy-addr"."1.0.10";
      "qs-4.0.0" = self.by-version."qs"."4.0.0";
      "range-parser-1.0.3" = self.by-version."range-parser"."1.0.3";
      "send-0.13.1" = self.by-version."send"."0.13.1";
      "serve-static-1.10.2" = self.by-version."serve-static"."1.10.2";
      "type-is-1.6.10" = self.by-version."type-is"."1.6.10";
      "utils-merge-1.0.0" = self.by-version."utils-merge"."1.0.0";
      "vary-1.0.1" = self.by-version."vary"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extend"."1.2.1" =
    self.by-version."extend"."1.2.1";
  by-version."extend"."1.2.1" = self.buildNodePackage {
    name = "extend-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extend/-/extend-1.2.1.tgz";
      name = "extend-1.2.1.tgz";
      sha1 = "a0f5fd6cfc83a5fe49ef698d60ec8a624dd4576c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extend"."^3.0.0" =
    self.by-version."extend"."3.0.0";
  by-version."extend"."3.0.0" = self.buildNodePackage {
    name = "extend-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extend/-/extend-3.0.0.tgz";
      name = "extend-3.0.0.tgz";
      sha1 = "5a474353b9f3353ddd8176dfd37b91c83a46f1d4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extend"."~3.0.0" =
    self.by-version."extend"."3.0.0";
  by-spec."extglob"."^0.3.1" =
    self.by-version."extglob"."0.3.2";
  by-version."extglob"."0.3.2" = self.buildNodePackage {
    name = "extglob-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extglob/-/extglob-0.3.2.tgz";
      name = "extglob-0.3.2.tgz";
      sha1 = "2e18ff3d2f49ab2765cec9023f011daa8d8349a1";
    };
    deps = {
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extsprintf"."1.0.2" =
    self.by-version."extsprintf"."1.0.2";
  by-version."extsprintf"."1.0.2" = self.buildNodePackage {
    name = "extsprintf-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extsprintf/-/extsprintf-1.0.2.tgz";
      name = "extsprintf-1.0.2.tgz";
      sha1 = "e1080e0658e300b06294990cc70e1502235fd550";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fastparse"."^1.1.1" =
    self.by-version."fastparse"."1.1.1";
  by-version."fastparse"."1.1.1" = self.buildNodePackage {
    name = "fastparse-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fastparse/-/fastparse-1.1.1.tgz";
      name = "fastparse-1.1.1.tgz";
      sha1 = "d1e2643b38a94d7583b479060e6c4affc94071f8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."faye-websocket"."^0.9.3" =
    self.by-version."faye-websocket"."0.9.4";
  by-version."faye-websocket"."0.9.4" = self.buildNodePackage {
    name = "faye-websocket-0.9.4";
    version = "0.9.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/faye-websocket/-/faye-websocket-0.9.4.tgz";
      name = "faye-websocket-0.9.4.tgz";
      sha1 = "885934c79effb0409549e0c0a3801ed17a40cdad";
    };
    deps = {
      "websocket-driver-0.6.4" = self.by-version."websocket-driver"."0.6.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."faye-websocket"."~0.7.3" =
    self.by-version."faye-websocket"."0.7.3";
  by-version."faye-websocket"."0.7.3" = self.buildNodePackage {
    name = "faye-websocket-0.7.3";
    version = "0.7.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/faye-websocket/-/faye-websocket-0.7.3.tgz";
      name = "faye-websocket-0.7.3.tgz";
      sha1 = "cc4074c7f4a4dfd03af54dd65c354b135132ce11";
    };
    deps = {
      "websocket-driver-0.6.4" = self.by-version."websocket-driver"."0.6.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fbjs"."^0.6.1" =
    self.by-version."fbjs"."0.6.1";
  by-version."fbjs"."0.6.1" = self.buildNodePackage {
    name = "fbjs-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fbjs/-/fbjs-0.6.1.tgz";
      name = "fbjs-0.6.1.tgz";
      sha1 = "9636b7705f5ba9684d44b72f78321254afc860f7";
    };
    deps = {
      "core-js-1.2.6" = self.by-version."core-js"."1.2.6";
      "loose-envify-1.1.0" = self.by-version."loose-envify"."1.1.0";
      "promise-7.1.1" = self.by-version."promise"."7.1.1";
      "ua-parser-js-0.7.10" = self.by-version."ua-parser-js"."0.7.10";
      "whatwg-fetch-0.9.0" = self.by-version."whatwg-fetch"."0.9.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."file-loader"."*" =
    self.by-version."file-loader"."0.8.5";
  by-version."file-loader"."0.8.5" = self.buildNodePackage {
    name = "file-loader-0.8.5";
    version = "0.8.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/file-loader/-/file-loader-0.8.5.tgz";
      name = "file-loader-0.8.5.tgz";
      sha1 = "9275d031fe780f27d47f5f4af02bd43713cc151b";
    };
    deps = {
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."file-loader"."^0.8.5" =
    self.by-version."file-loader"."0.8.5";
  "file-loader" = self.by-version."file-loader"."0.8.5";
  by-spec."filename-regex"."^2.0.0" =
    self.by-version."filename-regex"."2.0.0";
  by-version."filename-regex"."2.0.0" = self.buildNodePackage {
    name = "filename-regex-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/filename-regex/-/filename-regex-2.0.0.tgz";
      name = "filename-regex-2.0.0.tgz";
      sha1 = "996e3e80479b98b9897f15a8a58b3d084e926775";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fill-range"."^2.1.0" =
    self.by-version."fill-range"."2.2.3";
  by-version."fill-range"."2.2.3" = self.buildNodePackage {
    name = "fill-range-2.2.3";
    version = "2.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fill-range/-/fill-range-2.2.3.tgz";
      name = "fill-range-2.2.3.tgz";
      sha1 = "50b77dfd7e469bc7492470963699fe7a8485a723";
    };
    deps = {
      "is-number-2.1.0" = self.by-version."is-number"."2.1.0";
      "isobject-2.0.0" = self.by-version."isobject"."2.0.0";
      "randomatic-1.1.5" = self.by-version."randomatic"."1.1.5";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
      "repeat-string-1.5.2" = self.by-version."repeat-string"."1.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."finalhandler"."0.4.1" =
    self.by-version."finalhandler"."0.4.1";
  by-version."finalhandler"."0.4.1" = self.buildNodePackage {
    name = "finalhandler-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/finalhandler/-/finalhandler-0.4.1.tgz";
      name = "finalhandler-0.4.1.tgz";
      sha1 = "85a17c6c59a94717d262d61230d4b0ebe3d4a14d";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "unpipe-1.0.0" = self.by-version."unpipe"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."find-up"."^1.0.0" =
    self.by-version."find-up"."1.1.0";
  by-version."find-up"."1.1.0" = self.buildNodePackage {
    name = "find-up-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/find-up/-/find-up-1.1.0.tgz";
      name = "find-up-1.1.0.tgz";
      sha1 = "a63b0eec4625a2902534898a5f9eec8aaed046e9";
    };
    deps = {
      "path-exists-2.1.0" = self.by-version."path-exists"."2.1.0";
      "pinkie-promise-2.0.0" = self.by-version."pinkie-promise"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."flatten"."0.0.1" =
    self.by-version."flatten"."0.0.1";
  by-version."flatten"."0.0.1" = self.buildNodePackage {
    name = "flatten-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/flatten/-/flatten-0.0.1.tgz";
      name = "flatten-0.0.1.tgz";
      sha1 = "554440766da0a0d603999f433453f6c2fc6a75c1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."font-awesome"."^4.5.0" =
    self.by-version."font-awesome"."4.5.0";
  by-version."font-awesome"."4.5.0" = self.buildNodePackage {
    name = "font-awesome-4.5.0";
    version = "4.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/font-awesome/-/font-awesome-4.5.0.tgz";
      name = "font-awesome-4.5.0.tgz";
      sha1 = "1e9d7ccf7d63bdbe57000e18d5188cb2557e70f8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "font-awesome" = self.by-version."font-awesome"."4.5.0";
  by-spec."for-in"."^0.1.4" =
    self.by-version."for-in"."0.1.4";
  by-version."for-in"."0.1.4" = self.buildNodePackage {
    name = "for-in-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/for-in/-/for-in-0.1.4.tgz";
      name = "for-in-0.1.4.tgz";
      sha1 = "9f5cf7b4ffc7e1ae6591a4e97b177aa59d70fb2e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."for-own"."^0.1.3" =
    self.by-version."for-own"."0.1.3";
  by-version."for-own"."0.1.3" = self.buildNodePackage {
    name = "for-own-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/for-own/-/for-own-0.1.3.tgz";
      name = "for-own-0.1.3.tgz";
      sha1 = "606444cde77c2f0a11088169e2e354eaf56e74fe";
    };
    deps = {
      "for-in-0.1.4" = self.by-version."for-in"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forever-agent"."~0.5.0" =
    self.by-version."forever-agent"."0.5.2";
  by-version."forever-agent"."0.5.2" = self.buildNodePackage {
    name = "forever-agent-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forever-agent/-/forever-agent-0.5.2.tgz";
      name = "forever-agent-0.5.2.tgz";
      sha1 = "6d0e09c4921f94a27f63d3b49c5feff1ea4c5130";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forever-agent"."~0.6.1" =
    self.by-version."forever-agent"."0.6.1";
  by-version."forever-agent"."0.6.1" = self.buildNodePackage {
    name = "forever-agent-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
      name = "forever-agent-0.6.1.tgz";
      sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."0.2.0" =
    self.by-version."form-data"."0.2.0";
  by-version."form-data"."0.2.0" = self.buildNodePackage {
    name = "form-data-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-0.2.0.tgz";
      name = "form-data-0.2.0.tgz";
      sha1 = "26f8bc26da6440e299cbdcfb69035c4f77a6e466";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
      "mime-types-2.0.14" = self.by-version."mime-types"."2.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~0.1.0" =
    self.by-version."form-data"."0.1.4";
  by-version."form-data"."0.1.4" = self.buildNodePackage {
    name = "form-data-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-0.1.4.tgz";
      name = "form-data-0.1.4.tgz";
      sha1 = "91abd788aba9702b1aabfa8bc01031a2ac9e3b12";
    };
    deps = {
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "async-0.9.2" = self.by-version."async"."0.9.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~1.0.0-rc3" =
    self.by-version."form-data"."1.0.0-rc3";
  by-version."form-data"."1.0.0-rc3" = self.buildNodePackage {
    name = "form-data-1.0.0-rc3";
    version = "1.0.0-rc3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-1.0.0-rc3.tgz";
      name = "form-data-1.0.0-rc3.tgz";
      sha1 = "d35bc62e7fbc2937ae78f948aaa0d38d90607577";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.9" = self.by-version."mime-types"."2.1.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."formidable"."~1.0.14" =
    self.by-version."formidable"."1.0.17";
  by-version."formidable"."1.0.17" = self.buildNodePackage {
    name = "formidable-1.0.17";
    version = "1.0.17";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/formidable/-/formidable-1.0.17.tgz";
      name = "formidable-1.0.17.tgz";
      sha1 = "ef5491490f9433b705faa77249c99029ae348559";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forwarded"."~0.1.0" =
    self.by-version."forwarded"."0.1.0";
  by-version."forwarded"."0.1.0" = self.buildNodePackage {
    name = "forwarded-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forwarded/-/forwarded-0.1.0.tgz";
      name = "forwarded-0.1.0.tgz";
      sha1 = "19ef9874c4ae1c297bcf078fde63a09b66a84363";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fresh"."0.3.0" =
    self.by-version."fresh"."0.3.0";
  by-version."fresh"."0.3.0" = self.buildNodePackage {
    name = "fresh-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fresh/-/fresh-0.3.0.tgz";
      name = "fresh-0.3.0.tgz";
      sha1 = "651f838e22424e7566de161d8358caa199f83d4f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fs-extra"."~0.23.1" =
    self.by-version."fs-extra"."0.23.1";
  by-version."fs-extra"."0.23.1" = self.buildNodePackage {
    name = "fs-extra-0.23.1";
    version = "0.23.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fs-extra/-/fs-extra-0.23.1.tgz";
      name = "fs-extra-0.23.1.tgz";
      sha1 = "6611dba6adf2ab8dc9c69fab37cddf8818157e3d";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "jsonfile-2.2.3" = self.by-version."jsonfile"."2.2.3";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "rimraf-2.5.1" = self.by-version."rimraf"."2.5.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream"."^1.0.0" =
    self.by-version."fstream"."1.0.8";
  by-version."fstream"."1.0.8" = self.buildNodePackage {
    name = "fstream-1.0.8";
    version = "1.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream/-/fstream-1.0.8.tgz";
      name = "fstream-1.0.8.tgz";
      sha1 = "7e8d7a73abb3647ef36e4b8a15ca801dba03d038";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rimraf-2.5.1" = self.by-version."rimraf"."2.5.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream"."^1.0.2" =
    self.by-version."fstream"."1.0.8";
  by-spec."fstream"."~1.0.8" =
    self.by-version."fstream"."1.0.8";
  by-spec."fstream-ignore"."~1.0.3" =
    self.by-version."fstream-ignore"."1.0.3";
  by-version."fstream-ignore"."1.0.3" = self.buildNodePackage {
    name = "fstream-ignore-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream-ignore/-/fstream-ignore-1.0.3.tgz";
      name = "fstream-ignore-1.0.3.tgz";
      sha1 = "4c74d91fa88b22b42f4f86a18a2820dd79d8fcdd";
    };
    deps = {
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-3.0.0" = self.by-version."minimatch"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."gauge"."~1.2.0" =
    self.by-version."gauge"."1.2.4";
  by-version."gauge"."1.2.4" = self.buildNodePackage {
    name = "gauge-1.2.4";
    version = "1.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gauge/-/gauge-1.2.4.tgz";
      name = "gauge-1.2.4.tgz";
      sha1 = "b1d519758b3c77c7b45021d0ca4841548818bc41";
    };
    deps = {
      "ansi-0.3.1" = self.by-version."ansi"."0.3.1";
      "has-unicode-2.0.0" = self.by-version."has-unicode"."2.0.0";
      "lodash.pad-3.2.0" = self.by-version."lodash.pad"."3.2.0";
      "lodash.padleft-3.1.1" = self.by-version."lodash.padleft"."3.1.1";
      "lodash.padright-3.1.1" = self.by-version."lodash.padright"."3.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."gauge"."~1.2.4" =
    self.by-version."gauge"."1.2.4";
  by-spec."gaze"."^0.5.1" =
    self.by-version."gaze"."0.5.2";
  by-version."gaze"."0.5.2" = self.buildNodePackage {
    name = "gaze-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gaze/-/gaze-0.5.2.tgz";
      name = "gaze-0.5.2.tgz";
      sha1 = "40b709537d24d1d45767db5a908689dfe69ac44f";
    };
    deps = {
      "globule-0.1.0" = self.by-version."globule"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."generate-function"."^2.0.0" =
    self.by-version."generate-function"."2.0.0";
  by-version."generate-function"."2.0.0" = self.buildNodePackage {
    name = "generate-function-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/generate-function/-/generate-function-2.0.0.tgz";
      name = "generate-function-2.0.0.tgz";
      sha1 = "6858fe7c0969b7d4e9093337647ac79f60dfbe74";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."generate-object-property"."^1.1.0" =
    self.by-version."generate-object-property"."1.2.0";
  by-version."generate-object-property"."1.2.0" = self.buildNodePackage {
    name = "generate-object-property-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/generate-object-property/-/generate-object-property-1.2.0.tgz";
      name = "generate-object-property-1.2.0.tgz";
      sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
    };
    deps = {
      "is-property-1.0.2" = self.by-version."is-property"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."get-stdin"."^4.0.1" =
    self.by-version."get-stdin"."4.0.1";
  by-version."get-stdin"."4.0.1" = self.buildNodePackage {
    name = "get-stdin-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/get-stdin/-/get-stdin-4.0.1.tgz";
      name = "get-stdin-4.0.1.tgz";
      sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."3 || 4" =
    self.by-version."glob"."4.5.3";
  by-version."glob"."4.5.3" = self.buildNodePackage {
    name = "glob-4.5.3";
    version = "4.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-4.5.3.tgz";
      name = "glob-4.5.3.tgz";
      sha1 = "c6cb73d3226c1efef04de3c56d012f03377ee15f";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "once-1.3.3" = self.by-version."once"."1.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."3.2.3" =
    self.by-version."glob"."3.2.3";
  by-version."glob"."3.2.3" = self.buildNodePackage {
    name = "glob-3.2.3";
    version = "3.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-3.2.3.tgz";
      name = "glob-3.2.3.tgz";
      sha1 = "e313eeb249c7affaa5c475286b0e115b59839467";
    };
    deps = {
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."3.2.x" =
    self.by-version."glob"."3.2.11";
  by-version."glob"."3.2.11" = self.buildNodePackage {
    name = "glob-3.2.11";
    version = "3.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-3.2.11.tgz";
      name = "glob-3.2.11.tgz";
      sha1 = "4a973f635b9190f715d10987d5c00fd2815ebe3d";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-0.3.0" = self.by-version."minimatch"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^4.0.0" =
    self.by-version."glob"."4.5.3";
  by-spec."glob"."^5.0.10" =
    self.by-version."glob"."5.0.15";
  by-version."glob"."5.0.15" = self.buildNodePackage {
    name = "glob-5.0.15";
    version = "5.0.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-5.0.15.tgz";
      name = "glob-5.0.15.tgz";
      sha1 = "1bc936b9e02f4a603fcc222ecf7633d30b8b93b1";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-3.0.0" = self.by-version."minimatch"."3.0.0";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^5.0.14" =
    self.by-version."glob"."5.0.15";
  by-spec."glob"."^5.0.5" =
    self.by-version."glob"."5.0.15";
  by-spec."glob"."^6.0.1" =
    self.by-version."glob"."6.0.4";
  by-version."glob"."6.0.4" = self.buildNodePackage {
    name = "glob-6.0.4";
    version = "6.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-6.0.4.tgz";
      name = "glob-6.0.4.tgz";
      sha1 = "0f08860f6a155127b2fadd4f9ce24b1aab6e4d22";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-3.0.0" = self.by-version."minimatch"."3.0.0";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^6.0.3" =
    self.by-version."glob"."6.0.4";
  by-spec."glob"."~3.1.21" =
    self.by-version."glob"."3.1.21";
  by-version."glob"."3.1.21" = self.buildNodePackage {
    name = "glob-3.1.21";
    version = "3.1.21";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-3.1.21.tgz";
      name = "glob-3.1.21.tgz";
      sha1 = "d29e0a055dea5138f4d07ed40e8982e83c2066cd";
    };
    deps = {
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "graceful-fs-1.2.3" = self.by-version."graceful-fs"."1.2.3";
      "inherits-1.0.2" = self.by-version."inherits"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob-base"."^0.3.0" =
    self.by-version."glob-base"."0.3.0";
  by-version."glob-base"."0.3.0" = self.buildNodePackage {
    name = "glob-base-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob-base/-/glob-base-0.3.0.tgz";
      name = "glob-base-0.3.0.tgz";
      sha1 = "dbb164f6221b1c0b1ccf82aea328b497df0ea3c4";
    };
    deps = {
      "glob-parent-2.0.0" = self.by-version."glob-parent"."2.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob-parent"."^2.0.0" =
    self.by-version."glob-parent"."2.0.0";
  by-version."glob-parent"."2.0.0" = self.buildNodePackage {
    name = "glob-parent-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob-parent/-/glob-parent-2.0.0.tgz";
      name = "glob-parent-2.0.0.tgz";
      sha1 = "81383d72db054fcccf5336daa902f182f6edbb28";
    };
    deps = {
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."globule"."~0.1.0" =
    self.by-version."globule"."0.1.0";
  by-version."globule"."0.1.0" = self.buildNodePackage {
    name = "globule-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/globule/-/globule-0.1.0.tgz";
      name = "globule-0.1.0.tgz";
      sha1 = "d9c8edde1da79d125a151b79533b978676346ae5";
    };
    deps = {
      "lodash-1.0.2" = self.by-version."lodash"."1.0.2";
      "glob-3.1.21" = self.by-version."glob"."3.1.21";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^3.0.5" =
    self.by-version."graceful-fs"."3.0.8";
  by-version."graceful-fs"."3.0.8" = self.buildNodePackage {
    name = "graceful-fs-3.0.8";
    version = "3.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-3.0.8.tgz";
      name = "graceful-fs-3.0.8.tgz";
      sha1 = "ce813e725fa82f7e6147d51c9a5ca68270551c22";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^4.1.2" =
    self.by-version."graceful-fs"."4.1.2";
  by-version."graceful-fs"."4.1.2" = self.buildNodePackage {
    name = "graceful-fs-4.1.2";
    version = "4.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.2.tgz";
      name = "graceful-fs-4.1.2.tgz";
      sha1 = "fe2239b7574972e67e41f808823f9bfa4a991e37";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."~1.2.0" =
    self.by-version."graceful-fs"."1.2.3";
  by-version."graceful-fs"."1.2.3" = self.buildNodePackage {
    name = "graceful-fs-1.2.3";
    version = "1.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-1.2.3.tgz";
      name = "graceful-fs-1.2.3.tgz";
      sha1 = "15a4806a57547cb2d2dbf27f42e89a8c3451b364";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."~2.0.0" =
    self.by-version."graceful-fs"."2.0.3";
  by-version."graceful-fs"."2.0.3" = self.buildNodePackage {
    name = "graceful-fs-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-2.0.3.tgz";
      name = "graceful-fs-2.0.3.tgz";
      sha1 = "7cd2cdb228a4a3f36e95efa6cc142de7d1a136d0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-readlink".">= 1.0.0" =
    self.by-version."graceful-readlink"."1.0.1";
  by-version."graceful-readlink"."1.0.1" = self.buildNodePackage {
    name = "graceful-readlink-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
      name = "graceful-readlink-1.0.1.tgz";
      sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."growl"."1.8.1" =
    self.by-version."growl"."1.8.1";
  by-version."growl"."1.8.1" = self.buildNodePackage {
    name = "growl-1.8.1";
    version = "1.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/growl/-/growl-1.8.1.tgz";
      name = "growl-1.8.1.tgz";
      sha1 = "4b2dec8d907e93db336624dcec0183502f8c9428";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."har-validator"."~2.0.2" =
    self.by-version."har-validator"."2.0.6";
  by-version."har-validator"."2.0.6" = self.buildNodePackage {
    name = "har-validator-2.0.6";
    version = "2.0.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/har-validator/-/har-validator-2.0.6.tgz";
      name = "har-validator-2.0.6.tgz";
      sha1 = "cdcbc08188265ad119b6a5a7c8ab70eecfb5d27d";
    };
    deps = {
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "commander-2.9.0" = self.by-version."commander"."2.9.0";
      "is-my-json-valid-2.12.4" = self.by-version."is-my-json-valid"."2.12.4";
      "pinkie-promise-2.0.0" = self.by-version."pinkie-promise"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-ansi"."^2.0.0" =
    self.by-version."has-ansi"."2.0.0";
  by-version."has-ansi"."2.0.0" = self.buildNodePackage {
    name = "has-ansi-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-ansi/-/has-ansi-2.0.0.tgz";
      name = "has-ansi-2.0.0.tgz";
      sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
    };
    deps = {
      "ansi-regex-2.0.0" = self.by-version."ansi-regex"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-binary"."0.1.6" =
    self.by-version."has-binary"."0.1.6";
  by-version."has-binary"."0.1.6" = self.buildNodePackage {
    name = "has-binary-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-binary/-/has-binary-0.1.6.tgz";
      name = "has-binary-0.1.6.tgz";
      sha1 = "25326f39cfa4f616ad8787894e3af2cfbc7b6e10";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-binary"."0.1.7" =
    self.by-version."has-binary"."0.1.7";
  by-version."has-binary"."0.1.7" = self.buildNodePackage {
    name = "has-binary-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-binary/-/has-binary-0.1.7.tgz";
      name = "has-binary-0.1.7.tgz";
      sha1 = "68e61eb16210c9545a0a5cce06a873912fe1e68c";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-cors"."1.1.0" =
    self.by-version."has-cors"."1.1.0";
  by-version."has-cors"."1.1.0" = self.buildNodePackage {
    name = "has-cors-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-cors/-/has-cors-1.1.0.tgz";
      name = "has-cors-1.1.0.tgz";
      sha1 = "5e474793f7ea9843d1bb99c23eef49ff126fff39";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-flag"."^1.0.0" =
    self.by-version."has-flag"."1.0.0";
  by-version."has-flag"."1.0.0" = self.buildNodePackage {
    name = "has-flag-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-flag/-/has-flag-1.0.0.tgz";
      name = "has-flag-1.0.0.tgz";
      sha1 = "9d9e793165ce017a00f00418c43f942a7b1d11fa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-own"."^1.0.0" =
    self.by-version."has-own"."1.0.0";
  by-version."has-own"."1.0.0" = self.buildNodePackage {
    name = "has-own-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-own/-/has-own-1.0.0.tgz";
      name = "has-own-1.0.0.tgz";
      sha1 = "3062246e31cfd887a9a61ee6d38ca57289378cd1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-unicode"."^2.0.0" =
    self.by-version."has-unicode"."2.0.0";
  by-version."has-unicode"."2.0.0" = self.buildNodePackage {
    name = "has-unicode-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-unicode/-/has-unicode-2.0.0.tgz";
      name = "has-unicode-2.0.0.tgz";
      sha1 = "a3cd96c307ba41d559c5a2ee408c12a11c4c2ec3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hawk"."1.1.1" =
    self.by-version."hawk"."1.1.1";
  by-version."hawk"."1.1.1" = self.buildNodePackage {
    name = "hawk-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-1.1.1.tgz";
      name = "hawk-1.1.1.tgz";
      sha1 = "87cd491f9b46e4e2aeaca335416766885d2d1ed9";
    };
    deps = {
      "hoek-0.9.1" = self.by-version."hoek"."0.9.1";
      "boom-0.4.2" = self.by-version."boom"."0.4.2";
      "cryptiles-0.2.2" = self.by-version."cryptiles"."0.2.2";
      "sntp-0.2.4" = self.by-version."sntp"."0.2.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hawk"."~3.1.0" =
    self.by-version."hawk"."3.1.3";
  by-version."hawk"."3.1.3" = self.buildNodePackage {
    name = "hawk-3.1.3";
    version = "3.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-3.1.3.tgz";
      name = "hawk-3.1.3.tgz";
      sha1 = "078444bd7c1640b0fe540d2c9b73d59678e8e1c4";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
      "boom-2.10.1" = self.by-version."boom"."2.10.1";
      "cryptiles-2.0.5" = self.by-version."cryptiles"."2.0.5";
      "sntp-1.0.9" = self.by-version."sntp"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hoek"."0.9.x" =
    self.by-version."hoek"."0.9.1";
  by-version."hoek"."0.9.1" = self.buildNodePackage {
    name = "hoek-0.9.1";
    version = "0.9.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hoek/-/hoek-0.9.1.tgz";
      name = "hoek-0.9.1.tgz";
      sha1 = "3d322462badf07716ea7eb85baf88079cddce505";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hoek"."2.x.x" =
    self.by-version."hoek"."2.16.3";
  by-version."hoek"."2.16.3" = self.buildNodePackage {
    name = "hoek-2.16.3";
    version = "2.16.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hoek/-/hoek-2.16.3.tgz";
      name = "hoek-2.16.3.tgz";
      sha1 = "20bb7403d3cea398e91dc4710a8ff1b8274a25ed";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hoist-non-react-statics"."^1.0.3" =
    self.by-version."hoist-non-react-statics"."1.0.3";
  by-version."hoist-non-react-statics"."1.0.3" = self.buildNodePackage {
    name = "hoist-non-react-statics-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hoist-non-react-statics/-/hoist-non-react-statics-1.0.3.tgz";
      name = "hoist-non-react-statics-1.0.3.tgz";
      sha1 = "22cfc787e53cc7cf4832ee35214fa3c55ef2d8aa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hosted-git-info"."^2.1.4" =
    self.by-version."hosted-git-info"."2.1.4";
  by-version."hosted-git-info"."2.1.4" = self.buildNodePackage {
    name = "hosted-git-info-2.1.4";
    version = "2.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hosted-git-info/-/hosted-git-info-2.1.4.tgz";
      name = "hosted-git-info-2.1.4.tgz";
      sha1 = "d9e953b26988be88096c46e926494d9604c300f8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."html-minifier"."^1.1.1" =
    self.by-version."html-minifier"."1.1.1";
  by-version."html-minifier"."1.1.1" = self.buildNodePackage {
    name = "html-minifier-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/html-minifier/-/html-minifier-1.1.1.tgz";
      name = "html-minifier-1.1.1.tgz";
      sha1 = "6850f99f9244a6541ad57d2327a204c9567b698f";
    };
    deps = {
      "change-case-2.3.1" = self.by-version."change-case"."2.3.1";
      "clean-css-3.4.9" = self.by-version."clean-css"."3.4.9";
      "cli-0.11.1" = self.by-version."cli"."0.11.1";
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "relateurl-0.2.6" = self.by-version."relateurl"."0.2.6";
      "uglify-js-2.6.1" = self.by-version."uglify-js"."2.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."html-webpack-plugin"."^2.7.2" =
    self.by-version."html-webpack-plugin"."2.7.2";
  by-version."html-webpack-plugin"."2.7.2" = self.buildNodePackage {
    name = "html-webpack-plugin-2.7.2";
    version = "2.7.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/html-webpack-plugin/-/html-webpack-plugin-2.7.2.tgz";
      name = "html-webpack-plugin-2.7.2.tgz";
      sha1 = "8015fe4b95f7385f3f9208208c0aabf886472ec3";
    };
    deps = {
      "bluebird-3.1.4" = self.by-version."bluebird"."3.1.4";
      "html-minifier-1.1.1" = self.by-version."html-minifier"."1.1.1";
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "pretty-error-2.0.0" = self.by-version."pretty-error"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "html-webpack-plugin" = self.by-version."html-webpack-plugin"."2.7.2";
  by-spec."htmlparser2"."~3.3.0" =
    self.by-version."htmlparser2"."3.3.0";
  by-version."htmlparser2"."3.3.0" = self.buildNodePackage {
    name = "htmlparser2-3.3.0";
    version = "3.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/htmlparser2/-/htmlparser2-3.3.0.tgz";
      name = "htmlparser2-3.3.0.tgz";
      sha1 = "cc70d05a59f6542e43f0e685c982e14c924a9efe";
    };
    deps = {
      "domhandler-2.1.0" = self.by-version."domhandler"."2.1.0";
      "domutils-1.1.6" = self.by-version."domutils"."1.1.6";
      "domelementtype-1.3.0" = self.by-version."domelementtype"."1.3.0";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-browserify"."^1.3.2" =
    self.by-version."http-browserify"."1.7.0";
  by-version."http-browserify"."1.7.0" = self.buildNodePackage {
    name = "http-browserify-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-browserify/-/http-browserify-1.7.0.tgz";
      name = "http-browserify-1.7.0.tgz";
      sha1 = "33795ade72df88acfbfd36773cefeda764735b20";
    };
    deps = {
      "Base64-0.2.1" = self.by-version."Base64"."0.2.1";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-errors"."~1.3.1" =
    self.by-version."http-errors"."1.3.1";
  by-version."http-errors"."1.3.1" = self.buildNodePackage {
    name = "http-errors-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-errors/-/http-errors-1.3.1.tgz";
      name = "http-errors-1.3.1.tgz";
      sha1 = "197e22cdebd4198585e8694ef6786197b91ed942";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "statuses-1.2.1" = self.by-version."statuses"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-proxy"."^1.11.1" =
    self.by-version."http-proxy"."1.12.1";
  by-version."http-proxy"."1.12.1" = self.buildNodePackage {
    name = "http-proxy-1.12.1";
    version = "1.12.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-proxy/-/http-proxy-1.12.1.tgz";
      name = "http-proxy-1.12.1.tgz";
      sha1 = "23b4244d1b7f5a77ae333b8b189c13b4d2ccc468";
    };
    deps = {
      "eventemitter3-1.1.1" = self.by-version."eventemitter3"."1.1.1";
      "requires-port-1.0.0" = self.by-version."requires-port"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-proxy"."^1.11.2" =
    self.by-version."http-proxy"."1.12.1";
  by-spec."http-signature"."~0.10.0" =
    self.by-version."http-signature"."0.10.1";
  by-version."http-signature"."0.10.1" = self.buildNodePackage {
    name = "http-signature-0.10.1";
    version = "0.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-signature/-/http-signature-0.10.1.tgz";
      name = "http-signature-0.10.1.tgz";
      sha1 = "4fbdac132559aa8323121e540779c0a012b27e66";
    };
    deps = {
      "assert-plus-0.1.5" = self.by-version."assert-plus"."0.1.5";
      "asn1-0.1.11" = self.by-version."asn1"."0.1.11";
      "ctype-0.5.3" = self.by-version."ctype"."0.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-signature"."~1.1.0" =
    self.by-version."http-signature"."1.1.0";
  by-version."http-signature"."1.1.0" = self.buildNodePackage {
    name = "http-signature-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-signature/-/http-signature-1.1.0.tgz";
      name = "http-signature-1.1.0.tgz";
      sha1 = "5d2d7e9b6ef49980ad5b128d8e4ef09a31c90d95";
    };
    deps = {
      "assert-plus-0.1.5" = self.by-version."assert-plus"."0.1.5";
      "jsprim-1.2.2" = self.by-version."jsprim"."1.2.2";
      "sshpk-1.7.3" = self.by-version."sshpk"."1.7.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."https-browserify"."0.0.0" =
    self.by-version."https-browserify"."0.0.0";
  by-version."https-browserify"."0.0.0" = self.buildNodePackage {
    name = "https-browserify-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/https-browserify/-/https-browserify-0.0.0.tgz";
      name = "https-browserify-0.0.0.tgz";
      sha1 = "b3ffdfe734b2a3d4a9efd58e8654c91fce86eafd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."iconv-lite"."0.4.13" =
    self.by-version."iconv-lite"."0.4.13";
  by-version."iconv-lite"."0.4.13" = self.buildNodePackage {
    name = "iconv-lite-0.4.13";
    version = "0.4.13";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.13.tgz";
      name = "iconv-lite-0.4.13.tgz";
      sha1 = "1f88aba4ab0b1508e8312acc39345f36e992e2f2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."icss-replace-symbols"."^1.0.2" =
    self.by-version."icss-replace-symbols"."1.0.2";
  by-version."icss-replace-symbols"."1.0.2" = self.buildNodePackage {
    name = "icss-replace-symbols-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/icss-replace-symbols/-/icss-replace-symbols-1.0.2.tgz";
      name = "icss-replace-symbols-1.0.2.tgz";
      sha1 = "cb0b6054eb3af6edc9ab1d62d01933e2d4c8bfa5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ieee754"."^1.1.4" =
    self.by-version."ieee754"."1.1.6";
  by-version."ieee754"."1.1.6" = self.buildNodePackage {
    name = "ieee754-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ieee754/-/ieee754-1.1.6.tgz";
      name = "ieee754-1.1.6.tgz";
      sha1 = "2e1013219c6d6712973ec54d981ec19e5579de97";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ignore"."^2.2.15" =
    self.by-version."ignore"."2.2.19";
  by-version."ignore"."2.2.19" = self.buildNodePackage {
    name = "ignore-2.2.19";
    version = "2.2.19";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ignore/-/ignore-2.2.19.tgz";
      name = "ignore-2.2.19.tgz";
      sha1 = "4c845a61f7e50b4a410f6156aaa38b6ad95e0c8f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."image-size"."~0.3.5" =
    self.by-version."image-size"."0.3.5";
  by-version."image-size"."0.3.5" = self.buildNodePackage {
    name = "image-size-0.3.5";
    version = "0.3.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/image-size/-/image-size-0.3.5.tgz";
      name = "image-size-0.3.5.tgz";
      sha1 = "83240eab2fb5b00b04aab8c74b0471e9cba7ad8c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."indent-string"."^2.1.0" =
    self.by-version."indent-string"."2.1.0";
  by-version."indent-string"."2.1.0" = self.buildNodePackage {
    name = "indent-string-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/indent-string/-/indent-string-2.1.0.tgz";
      name = "indent-string-2.1.0.tgz";
      sha1 = "8e2d48348742121b4a8218b7a137e9a52049dc80";
    };
    deps = {
      "repeating-2.0.0" = self.by-version."repeating"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."indexes-of"."^1.0.1" =
    self.by-version."indexes-of"."1.0.1";
  by-version."indexes-of"."1.0.1" = self.buildNodePackage {
    name = "indexes-of-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/indexes-of/-/indexes-of-1.0.1.tgz";
      name = "indexes-of-1.0.1.tgz";
      sha1 = "f30f716c8e2bd346c7b67d3df3915566a7c05607";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."indexof"."0.0.1" =
    self.by-version."indexof"."0.0.1";
  by-version."indexof"."0.0.1" = self.buildNodePackage {
    name = "indexof-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/indexof/-/indexof-0.0.1.tgz";
      name = "indexof-0.0.1.tgz";
      sha1 = "82dc336d232b9062179d05ab3293a66059fd435d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inflight"."^1.0.4" =
    self.by-version."inflight"."1.0.4";
  by-version."inflight"."1.0.4" = self.buildNodePackage {
    name = "inflight-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inflight/-/inflight-1.0.4.tgz";
      name = "inflight-1.0.4.tgz";
      sha1 = "6cbb4521ebd51ce0ec0a936bfd7657ef7e9b172a";
    };
    deps = {
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherit"."^2.2.2" =
    self.by-version."inherit"."2.2.3";
  by-version."inherit"."2.2.3" = self.buildNodePackage {
    name = "inherit-2.2.3";
    version = "2.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inherit/-/inherit-2.2.3.tgz";
      name = "inherit-2.2.3.tgz";
      sha1 = "33234f912ac3276ea7ba7ad71231967c7ae45c0d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."1" =
    self.by-version."inherits"."1.0.2";
  by-version."inherits"."1.0.2" = self.buildNodePackage {
    name = "inherits-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inherits/-/inherits-1.0.2.tgz";
      name = "inherits-1.0.2.tgz";
      sha1 = "ca4309dadee6b54cc0b8d247e8d7c7a0975bdc9b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."2" =
    self.by-version."inherits"."2.0.1";
  by-version."inherits"."2.0.1" = self.buildNodePackage {
    name = "inherits-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz";
      name = "inherits-2.0.1.tgz";
      sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."inherits"."^2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."inherits"."~2.0.0" =
    self.by-version."inherits"."2.0.1";
  by-spec."inherits"."~2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."ini"."^1.2.0" =
    self.by-version."ini"."1.3.4";
  by-version."ini"."1.3.4" = self.buildNodePackage {
    name = "ini-1.3.4";
    version = "1.3.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ini/-/ini-1.3.4.tgz";
      name = "ini-1.3.4.tgz";
      sha1 = "0537cb79daf59b59a1a517dff706c86ec039162e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ini"."^1.3.4" =
    self.by-version."ini"."1.3.4";
  by-spec."ini"."~1.3.0" =
    self.by-version."ini"."1.3.4";
  by-spec."interpret"."^0.6.4" =
    self.by-version."interpret"."0.6.6";
  by-version."interpret"."0.6.6" = self.buildNodePackage {
    name = "interpret-0.6.6";
    version = "0.6.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/interpret/-/interpret-0.6.6.tgz";
      name = "interpret-0.6.6.tgz";
      sha1 = "fecd7a18e7ce5ca6abfb953e1f86213a49f1625b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."invariant"."^2.0.0" =
    self.by-version."invariant"."2.2.0";
  by-version."invariant"."2.2.0" = self.buildNodePackage {
    name = "invariant-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/invariant/-/invariant-2.2.0.tgz";
      name = "invariant-2.2.0.tgz";
      sha1 = "c8d7e847366a49cc18b622f058a689d481e895f2";
    };
    deps = {
      "loose-envify-1.1.0" = self.by-version."loose-envify"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."invert-kv"."^1.0.0" =
    self.by-version."invert-kv"."1.0.0";
  by-version."invert-kv"."1.0.0" = self.buildNodePackage {
    name = "invert-kv-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/invert-kv/-/invert-kv-1.0.0.tgz";
      name = "invert-kv-1.0.0.tgz";
      sha1 = "104a8e4aaca6d3d8cd157a8ef8bfab2d7a3ffdb6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ipaddr.js"."1.0.5" =
    self.by-version."ipaddr.js"."1.0.5";
  by-version."ipaddr.js"."1.0.5" = self.buildNodePackage {
    name = "ipaddr.js-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.0.5.tgz";
      name = "ipaddr.js-1.0.5.tgz";
      sha1 = "5fa78cf301b825c78abc3042d812723049ea23c7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-absolute"."^0.1.7" =
    self.by-version."is-absolute"."0.1.7";
  by-version."is-absolute"."0.1.7" = self.buildNodePackage {
    name = "is-absolute-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-absolute/-/is-absolute-0.1.7.tgz";
      name = "is-absolute-0.1.7.tgz";
      sha1 = "847491119fccb5fb436217cc737f7faad50f603f";
    };
    deps = {
      "is-relative-0.1.3" = self.by-version."is-relative"."0.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-absolute-url"."^2.0.0" =
    self.by-version."is-absolute-url"."2.0.0";
  by-version."is-absolute-url"."2.0.0" = self.buildNodePackage {
    name = "is-absolute-url-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-absolute-url/-/is-absolute-url-2.0.0.tgz";
      name = "is-absolute-url-2.0.0.tgz";
      sha1 = "9c4b20b0e5c0cbef9a479a367ede6f991679f359";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-arrayish"."^0.2.1" =
    self.by-version."is-arrayish"."0.2.1";
  by-version."is-arrayish"."0.2.1" = self.buildNodePackage {
    name = "is-arrayish-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-arrayish/-/is-arrayish-0.2.1.tgz";
      name = "is-arrayish-0.2.1.tgz";
      sha1 = "77c99840527aa8ecb1a8ba697b80645a7a926a9d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-binary-path"."^1.0.0" =
    self.by-version."is-binary-path"."1.0.1";
  by-version."is-binary-path"."1.0.1" = self.buildNodePackage {
    name = "is-binary-path-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-binary-path/-/is-binary-path-1.0.1.tgz";
      name = "is-binary-path-1.0.1.tgz";
      sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
    };
    deps = {
      "binary-extensions-1.4.0" = self.by-version."binary-extensions"."1.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-buffer"."^1.0.2" =
    self.by-version."is-buffer"."1.1.1";
  by-version."is-buffer"."1.1.1" = self.buildNodePackage {
    name = "is-buffer-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-buffer/-/is-buffer-1.1.1.tgz";
      name = "is-buffer-1.1.1.tgz";
      sha1 = "3058de9ca454564e8bbe5b8dd2719a8d7089e7d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-buffer"."~ 1.0.2" =
    self.by-version."is-buffer"."1.0.2";
  by-version."is-buffer"."1.0.2" = self.buildNodePackage {
    name = "is-buffer-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-buffer/-/is-buffer-1.0.2.tgz";
      name = "is-buffer-1.0.2.tgz";
      sha1 = "f5c6c051d73f86f11b4ee14267cc1029fce261d0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-builtin-module"."^1.0.0" =
    self.by-version."is-builtin-module"."1.0.0";
  by-version."is-builtin-module"."1.0.0" = self.buildNodePackage {
    name = "is-builtin-module-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-builtin-module/-/is-builtin-module-1.0.0.tgz";
      name = "is-builtin-module-1.0.0.tgz";
      sha1 = "540572d34f7ac3119f8f76c30cbc1b1e037affbe";
    };
    deps = {
      "builtin-modules-1.1.1" = self.by-version."builtin-modules"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-dotfile"."^1.0.0" =
    self.by-version."is-dotfile"."1.0.2";
  by-version."is-dotfile"."1.0.2" = self.buildNodePackage {
    name = "is-dotfile-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-dotfile/-/is-dotfile-1.0.2.tgz";
      name = "is-dotfile-1.0.2.tgz";
      sha1 = "2c132383f39199f8edc268ca01b9b007d205cc4d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-equal-shallow"."^0.1.1" =
    self.by-version."is-equal-shallow"."0.1.3";
  by-version."is-equal-shallow"."0.1.3" = self.buildNodePackage {
    name = "is-equal-shallow-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
      name = "is-equal-shallow-0.1.3.tgz";
      sha1 = "2238098fc221de0bcfa5d9eac4c45d638aa1c534";
    };
    deps = {
      "is-primitive-2.0.0" = self.by-version."is-primitive"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-extendable"."^0.1.1" =
    self.by-version."is-extendable"."0.1.1";
  by-version."is-extendable"."0.1.1" = self.buildNodePackage {
    name = "is-extendable-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-extendable/-/is-extendable-0.1.1.tgz";
      name = "is-extendable-0.1.1.tgz";
      sha1 = "62b110e289a471418e3ec36a617d472e301dfc89";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-extglob"."^1.0.0" =
    self.by-version."is-extglob"."1.0.0";
  by-version."is-extglob"."1.0.0" = self.buildNodePackage {
    name = "is-extglob-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz";
      name = "is-extglob-1.0.0.tgz";
      sha1 = "ac468177c4943405a092fc8f29760c6ffc6206c0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-finite"."^1.0.0" =
    self.by-version."is-finite"."1.0.1";
  by-version."is-finite"."1.0.1" = self.buildNodePackage {
    name = "is-finite-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-finite/-/is-finite-1.0.1.tgz";
      name = "is-finite-1.0.1.tgz";
      sha1 = "6438603eaebe2793948ff4a4262ec8db3d62597b";
    };
    deps = {
      "number-is-nan-1.0.0" = self.by-version."number-is-nan"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-fullwidth-code-point"."^1.0.0" =
    self.by-version."is-fullwidth-code-point"."1.0.0";
  by-version."is-fullwidth-code-point"."1.0.0" = self.buildNodePackage {
    name = "is-fullwidth-code-point-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
      name = "is-fullwidth-code-point-1.0.0.tgz";
      sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
    };
    deps = {
      "number-is-nan-1.0.0" = self.by-version."number-is-nan"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-glob"."^2.0.0" =
    self.by-version."is-glob"."2.0.1";
  by-version."is-glob"."2.0.1" = self.buildNodePackage {
    name = "is-glob-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-glob/-/is-glob-2.0.1.tgz";
      name = "is-glob-2.0.1.tgz";
      sha1 = "d096f926a3ded5600f3fdfd91198cb0888c2d863";
    };
    deps = {
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-glob"."^2.0.1" =
    self.by-version."is-glob"."2.0.1";
  by-spec."is-lower-case"."^1.1.0" =
    self.by-version."is-lower-case"."1.1.3";
  by-version."is-lower-case"."1.1.3" = self.buildNodePackage {
    name = "is-lower-case-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-lower-case/-/is-lower-case-1.1.3.tgz";
      name = "is-lower-case-1.1.3.tgz";
      sha1 = "7e147be4768dc466db3bfb21cc60b31e6ad69393";
    };
    deps = {
      "lower-case-1.1.3" = self.by-version."lower-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-my-json-valid"."^2.12.4" =
    self.by-version."is-my-json-valid"."2.12.4";
  by-version."is-my-json-valid"."2.12.4" = self.buildNodePackage {
    name = "is-my-json-valid-2.12.4";
    version = "2.12.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.12.4.tgz";
      name = "is-my-json-valid-2.12.4.tgz";
      sha1 = "d4ed2bc1d7f88daf8d0f763b3e3e39a69bd37880";
    };
    deps = {
      "generate-function-2.0.0" = self.by-version."generate-function"."2.0.0";
      "generate-object-property-1.2.0" = self.by-version."generate-object-property"."1.2.0";
      "jsonpointer-2.0.0" = self.by-version."jsonpointer"."2.0.0";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^0.1.1" =
    self.by-version."is-number"."0.1.1";
  by-version."is-number"."0.1.1" = self.buildNodePackage {
    name = "is-number-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-number/-/is-number-0.1.1.tgz";
      name = "is-number-0.1.1.tgz";
      sha1 = "69a7af116963d47206ec9bd9b48a14216f1e3806";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^2.0.2" =
    self.by-version."is-number"."2.1.0";
  by-version."is-number"."2.1.0" = self.buildNodePackage {
    name = "is-number-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-number/-/is-number-2.1.0.tgz";
      name = "is-number-2.1.0.tgz";
      sha1 = "01fcbbb393463a548f2f466cce16dece49db908f";
    };
    deps = {
      "kind-of-3.0.2" = self.by-version."kind-of"."3.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^2.1.0" =
    self.by-version."is-number"."2.1.0";
  by-spec."is-plain-obj"."^1.0.0" =
    self.by-version."is-plain-obj"."1.1.0";
  by-version."is-plain-obj"."1.1.0" = self.buildNodePackage {
    name = "is-plain-obj-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-plain-obj/-/is-plain-obj-1.1.0.tgz";
      name = "is-plain-obj-1.1.0.tgz";
      sha1 = "71a50c8429dfca773c92a390a4a03b39fcd51d3e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-primitive"."^2.0.0" =
    self.by-version."is-primitive"."2.0.0";
  by-version."is-primitive"."2.0.0" = self.buildNodePackage {
    name = "is-primitive-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-primitive/-/is-primitive-2.0.0.tgz";
      name = "is-primitive-2.0.0.tgz";
      sha1 = "207bab91638499c07b2adf240a41a87210034575";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-promise"."^2.1.0" =
    self.by-version."is-promise"."2.1.0";
  by-version."is-promise"."2.1.0" = self.buildNodePackage {
    name = "is-promise-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-promise/-/is-promise-2.1.0.tgz";
      name = "is-promise-2.1.0.tgz";
      sha1 = "79a2a9ece7f096e80f36d2b2f3bc16c1ff4bf3fa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-property"."^1.0.0" =
    self.by-version."is-property"."1.0.2";
  by-version."is-property"."1.0.2" = self.buildNodePackage {
    name = "is-property-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-property/-/is-property-1.0.2.tgz";
      name = "is-property-1.0.2.tgz";
      sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-relative"."^0.1.0" =
    self.by-version."is-relative"."0.1.3";
  by-version."is-relative"."0.1.3" = self.buildNodePackage {
    name = "is-relative-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-relative/-/is-relative-0.1.3.tgz";
      name = "is-relative-0.1.3.tgz";
      sha1 = "905fee8ae86f45b3ec614bc3c15c869df0876e82";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-svg"."^1.1.1" =
    self.by-version."is-svg"."1.1.1";
  by-version."is-svg"."1.1.1" = self.buildNodePackage {
    name = "is-svg-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-svg/-/is-svg-1.1.1.tgz";
      name = "is-svg-1.1.1.tgz";
      sha1 = "ac0efaafb653ac58473708b1f873636ca110e31b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-typedarray"."~1.0.0" =
    self.by-version."is-typedarray"."1.0.0";
  by-version."is-typedarray"."1.0.0" = self.buildNodePackage {
    name = "is-typedarray-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz";
      name = "is-typedarray-1.0.0.tgz";
      sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-upper-case"."^1.1.0" =
    self.by-version."is-upper-case"."1.1.2";
  by-version."is-upper-case"."1.1.2" = self.buildNodePackage {
    name = "is-upper-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-upper-case/-/is-upper-case-1.1.2.tgz";
      name = "is-upper-case-1.1.2.tgz";
      sha1 = "8d0b1fa7e7933a1e58483600ec7d9661cbaf756f";
    };
    deps = {
      "upper-case-1.1.3" = self.by-version."upper-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-utf8"."^0.2.0" =
    self.by-version."is-utf8"."0.2.1";
  by-version."is-utf8"."0.2.1" = self.buildNodePackage {
    name = "is-utf8-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-utf8/-/is-utf8-0.2.1.tgz";
      name = "is-utf8-0.2.1.tgz";
      sha1 = "4b0da1442104d1b336340e80797e865cf39f7d72";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isarray"."0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-version."isarray"."0.0.1" = self.buildNodePackage {
    name = "isarray-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
      name = "isarray-0.0.1.tgz";
      sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isarray"."^1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-version."isarray"."1.0.0" = self.buildNodePackage {
    name = "isarray-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
      name = "isarray-1.0.0.tgz";
      sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isexe"."^1.0.1" =
    self.by-version."isexe"."1.0.1";
  by-version."isexe"."1.0.1" = self.buildNodePackage {
    name = "isexe-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isexe/-/isexe-1.0.1.tgz";
      name = "isexe-1.0.1.tgz";
      sha1 = "5db010ed38a649d12d5faf9884b3474002e66a65";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isobject"."^2.0.0" =
    self.by-version."isobject"."2.0.0";
  by-version."isobject"."2.0.0" = self.buildNodePackage {
    name = "isobject-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isobject/-/isobject-2.0.0.tgz";
      name = "isobject-2.0.0.tgz";
      sha1 = "208de872bd7378c2a92af9428a3f56eb91a122c4";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isstream"."~0.1.2" =
    self.by-version."isstream"."0.1.2";
  by-version."isstream"."0.1.2" = self.buildNodePackage {
    name = "isstream-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
      name = "isstream-0.1.2.tgz";
      sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jade"."0.26.3" =
    self.by-version."jade"."0.26.3";
  by-version."jade"."0.26.3" = self.buildNodePackage {
    name = "jade-0.26.3";
    version = "0.26.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/jade/-/jade-0.26.3.tgz";
      name = "jade-0.26.3.tgz";
      sha1 = "8f10d7977d8d79f2f6ff862a81b0513ccb25686c";
    };
    deps = {
      "commander-0.6.1" = self.by-version."commander"."0.6.1";
      "mkdirp-0.3.0" = self.by-version."mkdirp"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jodid25519".">=1.0.0 <2.0.0" =
    self.by-version."jodid25519"."1.0.2";
  by-version."jodid25519"."1.0.2" = self.buildNodePackage {
    name = "jodid25519-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jodid25519/-/jodid25519-1.0.2.tgz";
      name = "jodid25519-1.0.2.tgz";
      sha1 = "06d4912255093419477d425633606e0e90782967";
    };
    deps = {
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-base64"."^2.1.9" =
    self.by-version."js-base64"."2.1.9";
  by-version."js-base64"."2.1.9" = self.buildNodePackage {
    name = "js-base64-2.1.9";
    version = "2.1.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-base64/-/js-base64-2.1.9.tgz";
      name = "js-base64-2.1.9.tgz";
      sha1 = "f0e80ae039a4bd654b5f281fc93f04a914a7fcce";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-tokens"."^1.0.1" =
    self.by-version."js-tokens"."1.0.2";
  by-version."js-tokens"."1.0.2" = self.buildNodePackage {
    name = "js-tokens-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-tokens/-/js-tokens-1.0.2.tgz";
      name = "js-tokens-1.0.2.tgz";
      sha1 = "8647f7e13f64ac15d9357a59a346c804d53b3efe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-yaml"."~3.4.3" =
    self.by-version."js-yaml"."3.4.6";
  by-version."js-yaml"."3.4.6" = self.buildNodePackage {
    name = "js-yaml-3.4.6";
    version = "3.4.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-yaml/-/js-yaml-3.4.6.tgz";
      name = "js-yaml-3.4.6.tgz";
      sha1 = "6be1b23f6249f53d293370fd4d1aaa63ce1b4eb0";
    };
    deps = {
      "argparse-1.0.4" = self.by-version."argparse"."1.0.4";
      "esprima-2.7.1" = self.by-version."esprima"."2.7.1";
      "inherit-2.2.3" = self.by-version."inherit"."2.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsbn".">=0.1.0 <0.2.0" =
    self.by-version."jsbn"."0.1.0";
  by-version."jsbn"."0.1.0" = self.buildNodePackage {
    name = "jsbn-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsbn/-/jsbn-0.1.0.tgz";
      name = "jsbn-0.1.0.tgz";
      sha1 = "650987da0dd74f4ebf5a11377a2aa2d273e97dfd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsbn"."~0.1.0" =
    self.by-version."jsbn"."0.1.0";
  by-spec."json-loader"."^0.5.4" =
    self.by-version."json-loader"."0.5.4";
  by-version."json-loader"."0.5.4" = self.buildNodePackage {
    name = "json-loader-0.5.4";
    version = "0.5.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-loader/-/json-loader-0.5.4.tgz";
      name = "json-loader-0.5.4.tgz";
      sha1 = "8baa1365a632f58a3c46d20175fc6002c96e37de";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "json-loader" = self.by-version."json-loader"."0.5.4";
  by-spec."json-schema"."0.2.2" =
    self.by-version."json-schema"."0.2.2";
  by-version."json-schema"."0.2.2" = self.buildNodePackage {
    name = "json-schema-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-schema/-/json-schema-0.2.2.tgz";
      name = "json-schema-0.2.2.tgz";
      sha1 = "50354f19f603917c695f70b85afa77c3b0f23506";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-stringify-safe"."~5.0.0" =
    self.by-version."json-stringify-safe"."5.0.1";
  by-version."json-stringify-safe"."5.0.1" = self.buildNodePackage {
    name = "json-stringify-safe-5.0.1";
    version = "5.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
      name = "json-stringify-safe-5.0.1.tgz";
      sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-stringify-safe"."~5.0.1" =
    self.by-version."json-stringify-safe"."5.0.1";
  by-spec."json3"."3.2.6" =
    self.by-version."json3"."3.2.6";
  by-version."json3"."3.2.6" = self.buildNodePackage {
    name = "json3-3.2.6";
    version = "3.2.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json3/-/json3-3.2.6.tgz";
      name = "json3-3.2.6.tgz";
      sha1 = "f6efc93c06a04de9aec53053df2559bb19e2038b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json3"."3.3.2" =
    self.by-version."json3"."3.3.2";
  by-version."json3"."3.3.2" = self.buildNodePackage {
    name = "json3-3.3.2";
    version = "3.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json3/-/json3-3.3.2.tgz";
      name = "json3-3.3.2.tgz";
      sha1 = "3c0434743df93e2f5c42aee7b19bcb483575f4e1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json3"."^3.3.2" =
    self.by-version."json3"."3.3.2";
  by-spec."json5"."^0.4.0" =
    self.by-version."json5"."0.4.0";
  by-version."json5"."0.4.0" = self.buildNodePackage {
    name = "json5-0.4.0";
    version = "0.4.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/json5/-/json5-0.4.0.tgz";
      name = "json5-0.4.0.tgz";
      sha1 = "054352e4c4c80c86c0923877d449de176a732c8d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonfile"."^2.1.0" =
    self.by-version."jsonfile"."2.2.3";
  by-version."jsonfile"."2.2.3" = self.buildNodePackage {
    name = "jsonfile-2.2.3";
    version = "2.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonfile/-/jsonfile-2.2.3.tgz";
      name = "jsonfile-2.2.3.tgz";
      sha1 = "e252b99a6af901d3ec41f332589c90509a7bc605";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonpointer"."2.0.0" =
    self.by-version."jsonpointer"."2.0.0";
  by-version."jsonpointer"."2.0.0" = self.buildNodePackage {
    name = "jsonpointer-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonpointer/-/jsonpointer-2.0.0.tgz";
      name = "jsonpointer-2.0.0.tgz";
      sha1 = "3af1dd20fe85463910d469a385e33017d2a030d9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsprim"."^1.2.2" =
    self.by-version."jsprim"."1.2.2";
  by-version."jsprim"."1.2.2" = self.buildNodePackage {
    name = "jsprim-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsprim/-/jsprim-1.2.2.tgz";
      name = "jsprim-1.2.2.tgz";
      sha1 = "f20c906ac92abd58e3b79ac8bc70a48832512da1";
    };
    deps = {
      "extsprintf-1.0.2" = self.by-version."extsprintf"."1.0.2";
      "json-schema-0.2.2" = self.by-version."json-schema"."0.2.2";
      "verror-1.3.6" = self.by-version."verror"."1.3.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jstransform"."^10.0.1" =
    self.by-version."jstransform"."10.1.0";
  by-version."jstransform"."10.1.0" = self.buildNodePackage {
    name = "jstransform-10.1.0";
    version = "10.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jstransform/-/jstransform-10.1.0.tgz";
      name = "jstransform-10.1.0.tgz";
      sha1 = "b4c49bf63f162c108b0348399a8737c713b0a83a";
    };
    deps = {
      "base62-0.1.1" = self.by-version."base62"."0.1.1";
      "esprima-fb-13001.1001.0-dev-harmony-fb" = self.by-version."esprima-fb"."13001.1001.0-dev-harmony-fb";
      "source-map-0.1.31" = self.by-version."source-map"."0.1.31";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."karma".">=0.10.9" =
    self.by-version."karma"."0.13.19";
  by-version."karma"."0.13.19" = self.buildNodePackage {
    name = "karma-0.13.19";
    version = "0.13.19";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma/-/karma-0.13.19.tgz";
      name = "karma-0.13.19.tgz";
      sha1 = "72042233aaa4216246f3b7b565645e1ad7644d24";
    };
    deps = {
      "batch-0.5.3" = self.by-version."batch"."0.5.3";
      "bluebird-2.10.2" = self.by-version."bluebird"."2.10.2";
      "body-parser-1.14.2" = self.by-version."body-parser"."1.14.2";
      "chokidar-1.4.2" = self.by-version."chokidar"."1.4.2";
      "colors-1.1.2" = self.by-version."colors"."1.1.2";
      "connect-3.4.1" = self.by-version."connect"."3.4.1";
      "core-js-2.0.3" = self.by-version."core-js"."2.0.3";
      "di-0.0.1" = self.by-version."di"."0.0.1";
      "dom-serialize-2.2.1" = self.by-version."dom-serialize"."2.2.1";
      "expand-braces-0.1.2" = self.by-version."expand-braces"."0.1.2";
      "glob-6.0.4" = self.by-version."glob"."6.0.4";
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "http-proxy-1.12.1" = self.by-version."http-proxy"."1.12.1";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "log4js-0.6.29" = self.by-version."log4js"."0.6.29";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "minimatch-3.0.0" = self.by-version."minimatch"."3.0.0";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "rimraf-2.5.1" = self.by-version."rimraf"."2.5.1";
      "socket.io-1.4.4" = self.by-version."socket.io"."1.4.4";
      "source-map-0.5.3" = self.by-version."source-map"."0.5.3";
      "useragent-2.1.8" = self.by-version."useragent"."2.1.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."karma".">=0.9" =
    self.by-version."karma"."0.13.19";
  by-spec."karma"."^0.13.19" =
    self.by-version."karma"."0.13.19";
  "karma" = self.by-version."karma"."0.13.19";
  by-spec."karma-chai"."^0.1.0" =
    self.by-version."karma-chai"."0.1.0";
  by-version."karma-chai"."0.1.0" = self.buildNodePackage {
    name = "karma-chai-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-chai/-/karma-chai-0.1.0.tgz";
      name = "karma-chai-0.1.0.tgz";
      sha1 = "bee5ad40400517811ae34bb945f762909108b79a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."chai"."3.4.1"
      self.by-version."karma"."0.13.19"];
    os = [ ];
    cpu = [ ];
  };
  "karma-chai" = self.by-version."karma-chai"."0.1.0";
  by-spec."karma-mocha"."^0.2.1" =
    self.by-version."karma-mocha"."0.2.1";
  by-version."karma-mocha"."0.2.1" = self.buildNodePackage {
    name = "karma-mocha-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-mocha/-/karma-mocha-0.2.1.tgz";
      name = "karma-mocha-0.2.1.tgz";
      sha1 = "6a3f25005cc8a0034df47c24e07c1eb681d4d1f0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."mocha"."2.3.4"];
    os = [ ];
    cpu = [ ];
  };
  "karma-mocha" = self.by-version."karma-mocha"."0.2.1";
  by-spec."karma-mocha-reporter"."^1.1.5" =
    self.by-version."karma-mocha-reporter"."1.1.5";
  by-version."karma-mocha-reporter"."1.1.5" = self.buildNodePackage {
    name = "karma-mocha-reporter-1.1.5";
    version = "1.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-mocha-reporter/-/karma-mocha-reporter-1.1.5.tgz";
      name = "karma-mocha-reporter-1.1.5.tgz";
      sha1 = "2df59465f24894b0ba1d8fec12232b5de5f49bd2";
    };
    deps = {
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "karma-0.13.19" = self.by-version."karma"."0.13.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "karma-mocha-reporter" = self.by-version."karma-mocha-reporter"."1.1.5";
  by-spec."karma-phantomjs-launcher"."^0.2.3" =
    self.by-version."karma-phantomjs-launcher"."0.2.3";
  by-version."karma-phantomjs-launcher"."0.2.3" = self.buildNodePackage {
    name = "karma-phantomjs-launcher-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-phantomjs-launcher/-/karma-phantomjs-launcher-0.2.3.tgz";
      name = "karma-phantomjs-launcher-0.2.3.tgz";
      sha1 = "77f68243fad7852c5b321bcf9d691f1223cc0809";
    };
    deps = {
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."karma"."0.13.19"
      self.by-version."phantomjs"."1.9.19"];
    os = [ ];
    cpu = [ ];
  };
  "karma-phantomjs-launcher" = self.by-version."karma-phantomjs-launcher"."0.2.3";
  by-spec."karma-webpack"."^1.7.0" =
    self.by-version."karma-webpack"."1.7.0";
  by-version."karma-webpack"."1.7.0" = self.buildNodePackage {
    name = "karma-webpack-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-webpack/-/karma-webpack-1.7.0.tgz";
      name = "karma-webpack-1.7.0.tgz";
      sha1 = "7e5a4fb2ab68b0cc1c7a4fbfa72bb76eeb18cb2a";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
      "webpack-dev-middleware-1.5.1" = self.by-version."webpack-dev-middleware"."1.5.1";
      "webpack-1.12.12" = self.by-version."webpack"."1.12.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "karma-webpack" = self.by-version."karma-webpack"."1.7.0";
  by-spec."kew"."0.4.0" =
    self.by-version."kew"."0.4.0";
  by-version."kew"."0.4.0" = self.buildNodePackage {
    name = "kew-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/kew/-/kew-0.4.0.tgz";
      name = "kew-0.4.0.tgz";
      sha1 = "da97484f1b06502146f3c60cec05ac6012cd993f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."kind-of"."^2.0.0" =
    self.by-version."kind-of"."2.0.1";
  by-version."kind-of"."2.0.1" = self.buildNodePackage {
    name = "kind-of-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/kind-of/-/kind-of-2.0.1.tgz";
      name = "kind-of-2.0.1.tgz";
      sha1 = "018ec7a4ce7e3a86cb9141be519d24c8faa981b5";
    };
    deps = {
      "is-buffer-1.1.1" = self.by-version."is-buffer"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."kind-of"."^3.0.2" =
    self.by-version."kind-of"."3.0.2";
  by-version."kind-of"."3.0.2" = self.buildNodePackage {
    name = "kind-of-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/kind-of/-/kind-of-3.0.2.tgz";
      name = "kind-of-3.0.2.tgz";
      sha1 = "187db427046e7e90945692e6768668bd6900dea0";
    };
    deps = {
      "is-buffer-1.1.1" = self.by-version."is-buffer"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lazy-cache"."^0.2.4" =
    self.by-version."lazy-cache"."0.2.7";
  by-version."lazy-cache"."0.2.7" = self.buildNodePackage {
    name = "lazy-cache-0.2.7";
    version = "0.2.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lazy-cache/-/lazy-cache-0.2.7.tgz";
      name = "lazy-cache-0.2.7.tgz";
      sha1 = "7feddf2dcb6edb77d11ef1d117ab5ffdf0ab1b65";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lcid"."^1.0.0" =
    self.by-version."lcid"."1.0.0";
  by-version."lcid"."1.0.0" = self.buildNodePackage {
    name = "lcid-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lcid/-/lcid-1.0.0.tgz";
      name = "lcid-1.0.0.tgz";
      sha1 = "308accafa0bc483a3867b4b6f2b9506251d1b835";
    };
    deps = {
      "invert-kv-1.0.0" = self.by-version."invert-kv"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."leaflet"."^0.7.0" =
    self.by-version."leaflet"."0.7.7";
  by-version."leaflet"."0.7.7" = self.buildNodePackage {
    name = "leaflet-0.7.7";
    version = "0.7.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/leaflet/-/leaflet-0.7.7.tgz";
      name = "leaflet-0.7.7.tgz";
      sha1 = "1e352ba54e63d076451fa363c900890cb2cf75ee";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."leaflet"."^0.7.7" =
    self.by-version."leaflet"."0.7.7";
  "leaflet" = self.by-version."leaflet"."0.7.7";
  by-spec."less"."^2.3.1" =
    self.by-version."less"."2.5.3";
  by-version."less"."2.5.3" = self.buildNodePackage {
    name = "less-2.5.3";
    version = "2.5.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/less/-/less-2.5.3.tgz";
      name = "less-2.5.3.tgz";
      sha1 = "9ff586e8a703515fc18dc99c7bc498d2f3ad4849";
    };
    deps = {
    };
    optionalDependencies = {
      "errno-0.1.4" = self.by-version."errno"."0.1.4";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "image-size-0.3.5" = self.by-version."image-size"."0.3.5";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "promise-6.1.0" = self.by-version."promise"."6.1.0";
      "request-2.67.0" = self.by-version."request"."2.67.0";
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."less"."^2.5.3" =
    self.by-version."less"."2.5.3";
  "less" = self.by-version."less"."2.5.3";
  by-spec."less-loader"."^2.2.2" =
    self.by-version."less-loader"."2.2.2";
  by-version."less-loader"."2.2.2" = self.buildNodePackage {
    name = "less-loader-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/less-loader/-/less-loader-2.2.2.tgz";
      name = "less-loader-2.2.2.tgz";
      sha1 = "084f0e549b4bab8fa12c2580deacd27439ea8529";
    };
    deps = {
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."less"."2.5.3"];
    os = [ ];
    cpu = [ ];
  };
  "less-loader" = self.by-version."less-loader"."2.2.2";
  by-spec."load-json-file"."^1.0.0" =
    self.by-version."load-json-file"."1.1.0";
  by-version."load-json-file"."1.1.0" = self.buildNodePackage {
    name = "load-json-file-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/load-json-file/-/load-json-file-1.1.0.tgz";
      name = "load-json-file-1.1.0.tgz";
      sha1 = "956905708d58b4bab4c2261b04f59f31c99374c0";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "parse-json-2.2.0" = self.by-version."parse-json"."2.2.0";
      "pify-2.3.0" = self.by-version."pify"."2.3.0";
      "pinkie-promise-2.0.0" = self.by-version."pinkie-promise"."2.0.0";
      "strip-bom-2.0.0" = self.by-version."strip-bom"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loader-utils"."0.2.x" =
    self.by-version."loader-utils"."0.2.12";
  by-version."loader-utils"."0.2.12" = self.buildNodePackage {
    name = "loader-utils-0.2.12";
    version = "0.2.12";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/loader-utils/-/loader-utils-0.2.12.tgz";
      name = "loader-utils-0.2.12.tgz";
      sha1 = "faa2a501563a3c2c9dda57aa8c39d8be628de7a2";
    };
    deps = {
      "big.js-3.1.3" = self.by-version."big.js"."3.1.3";
      "json5-0.4.0" = self.by-version."json5"."0.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loader-utils"."^0.2.11" =
    self.by-version."loader-utils"."0.2.12";
  by-spec."loader-utils"."^0.2.12" =
    self.by-version."loader-utils"."0.2.12";
  by-spec."loader-utils"."^0.2.5" =
    self.by-version."loader-utils"."0.2.12";
  by-spec."loader-utils"."^0.2.7" =
    self.by-version."loader-utils"."0.2.12";
  by-spec."loader-utils"."^0.2.9" =
    self.by-version."loader-utils"."0.2.12";
  by-spec."loader-utils"."~0.2.2" =
    self.by-version."loader-utils"."0.2.12";
  by-spec."loader-utils"."~0.2.5" =
    self.by-version."loader-utils"."0.2.12";
  by-spec."lodash".">= 4.0.0 < 5.0.0" =
    self.by-version."lodash"."4.0.0";
  by-version."lodash"."4.0.0" = self.buildNodePackage {
    name = "lodash-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-4.0.0.tgz";
      name = "lodash-4.0.0.tgz";
      sha1 = "9ac43844c595e28d30108b7ba583703395922dfc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."^3.0.0" =
    self.by-version."lodash"."3.10.1";
  by-version."lodash"."3.10.1" = self.buildNodePackage {
    name = "lodash-3.10.1";
    version = "3.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-3.10.1.tgz";
      name = "lodash-3.10.1.tgz";
      sha1 = "5bf45e8e49ba4189e17d482789dfd15bd140b7b6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."^3.10.1" =
    self.by-version."lodash"."3.10.1";
  "lodash" = self.by-version."lodash"."3.10.1";
  by-spec."lodash"."^3.8.0" =
    self.by-version."lodash"."3.10.1";
  by-spec."lodash"."~1.0.1" =
    self.by-version."lodash"."1.0.2";
  by-version."lodash"."1.0.2" = self.buildNodePackage {
    name = "lodash-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-1.0.2.tgz";
      name = "lodash-1.0.2.tgz";
      sha1 = "8f57560c83b59fc270bd3d561b690043430e2551";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._basetostring"."^3.0.0" =
    self.by-version."lodash._basetostring"."3.0.1";
  by-version."lodash._basetostring"."3.0.1" = self.buildNodePackage {
    name = "lodash._basetostring-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._basetostring/-/lodash._basetostring-3.0.1.tgz";
      name = "lodash._basetostring-3.0.1.tgz";
      sha1 = "d1861d877f824a52f669832dcaf3ee15566a07d5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._createcompounder"."^3.0.0" =
    self.by-version."lodash._createcompounder"."3.0.0";
  by-version."lodash._createcompounder"."3.0.0" = self.buildNodePackage {
    name = "lodash._createcompounder-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._createcompounder/-/lodash._createcompounder-3.0.0.tgz";
      name = "lodash._createcompounder-3.0.0.tgz";
      sha1 = "5dd2cb55372d6e70e0e2392fb2304d6631091075";
    };
    deps = {
      "lodash.deburr-3.1.0" = self.by-version."lodash.deburr"."3.1.0";
      "lodash.words-3.1.0" = self.by-version."lodash.words"."3.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._createpadding"."^3.0.0" =
    self.by-version."lodash._createpadding"."3.6.1";
  by-version."lodash._createpadding"."3.6.1" = self.buildNodePackage {
    name = "lodash._createpadding-3.6.1";
    version = "3.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._createpadding/-/lodash._createpadding-3.6.1.tgz";
      name = "lodash._createpadding-3.6.1.tgz";
      sha1 = "4907b438595adc54ee8935527a6c424c02c81a87";
    };
    deps = {
      "lodash.repeat-3.1.0" = self.by-version."lodash.repeat"."3.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.camelcase"."^3.0.1" =
    self.by-version."lodash.camelcase"."3.0.1";
  by-version."lodash.camelcase"."3.0.1" = self.buildNodePackage {
    name = "lodash.camelcase-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.camelcase/-/lodash.camelcase-3.0.1.tgz";
      name = "lodash.camelcase-3.0.1.tgz";
      sha1 = "932c8b87f8a4377897c67197533282f97aeac298";
    };
    deps = {
      "lodash._createcompounder-3.0.0" = self.by-version."lodash._createcompounder"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.deburr"."^3.0.0" =
    self.by-version."lodash.deburr"."3.1.0";
  by-version."lodash.deburr"."3.1.0" = self.buildNodePackage {
    name = "lodash.deburr-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.deburr/-/lodash.deburr-3.1.0.tgz";
      name = "lodash.deburr-3.1.0.tgz";
      sha1 = "d309f7fb43cace1de301191e226339cf5dfd6633";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.pad"."^3.0.0" =
    self.by-version."lodash.pad"."3.2.0";
  by-version."lodash.pad"."3.2.0" = self.buildNodePackage {
    name = "lodash.pad-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.pad/-/lodash.pad-3.2.0.tgz";
      name = "lodash.pad-3.2.0.tgz";
      sha1 = "d1d882526da12087ef8c6089173ec081717698a2";
    };
    deps = {
      "lodash.repeat-3.1.0" = self.by-version."lodash.repeat"."3.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.padleft"."^3.0.0" =
    self.by-version."lodash.padleft"."3.1.1";
  by-version."lodash.padleft"."3.1.1" = self.buildNodePackage {
    name = "lodash.padleft-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.padleft/-/lodash.padleft-3.1.1.tgz";
      name = "lodash.padleft-3.1.1.tgz";
      sha1 = "150151f1e0245edba15d50af2d71f1d5cff46530";
    };
    deps = {
      "lodash._basetostring-3.0.1" = self.by-version."lodash._basetostring"."3.0.1";
      "lodash._createpadding-3.6.1" = self.by-version."lodash._createpadding"."3.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.padright"."^3.0.0" =
    self.by-version."lodash.padright"."3.1.1";
  by-version."lodash.padright"."3.1.1" = self.buildNodePackage {
    name = "lodash.padright-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.padright/-/lodash.padright-3.1.1.tgz";
      name = "lodash.padright-3.1.1.tgz";
      sha1 = "79f7770baaa39738c040aeb5465e8d88f2aacec0";
    };
    deps = {
      "lodash._basetostring-3.0.1" = self.by-version."lodash._basetostring"."3.0.1";
      "lodash._createpadding-3.6.1" = self.by-version."lodash._createpadding"."3.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.repeat"."^3.0.0" =
    self.by-version."lodash.repeat"."3.1.0";
  by-version."lodash.repeat"."3.1.0" = self.buildNodePackage {
    name = "lodash.repeat-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.repeat/-/lodash.repeat-3.1.0.tgz";
      name = "lodash.repeat-3.1.0.tgz";
      sha1 = "a7bfe799b07c9a75dc010b65c61c1cfed3e18a96";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.words"."^3.0.0" =
    self.by-version."lodash.words"."3.1.0";
  by-version."lodash.words"."3.1.0" = self.buildNodePackage {
    name = "lodash.words-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.words/-/lodash.words-3.1.0.tgz";
      name = "lodash.words-3.1.0.tgz";
      sha1 = "93c12cb208d12badc7cfad784581958d29cdf053";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."log4js"."^0.6.28" =
    self.by-version."log4js"."0.6.29";
  by-version."log4js"."0.6.29" = self.buildNodePackage {
    name = "log4js-0.6.29";
    version = "0.6.29";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/log4js/-/log4js-0.6.29.tgz";
      name = "log4js-0.6.29.tgz";
      sha1 = "3b07f57160cfb9a7bfca271913e8344e81862ec6";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
      "underscore-1.8.2" = self.by-version."underscore"."1.8.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."longest"."^1.0.1" =
    self.by-version."longest"."1.0.1";
  by-version."longest"."1.0.1" = self.buildNodePackage {
    name = "longest-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/longest/-/longest-1.0.1.tgz";
      name = "longest-1.0.1.tgz";
      sha1 = "30a0b2da38f73770e8294a0d22e6625ed77d0097";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loose-envify"."^1.0.0" =
    self.by-version."loose-envify"."1.1.0";
  by-version."loose-envify"."1.1.0" = self.buildNodePackage {
    name = "loose-envify-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/loose-envify/-/loose-envify-1.1.0.tgz";
      name = "loose-envify-1.1.0.tgz";
      sha1 = "527582d62cff4e04da3f9976c7110d3392ec7e0c";
    };
    deps = {
      "js-tokens-1.0.2" = self.by-version."js-tokens"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loud-rejection"."^1.0.0" =
    self.by-version."loud-rejection"."1.2.0";
  by-version."loud-rejection"."1.2.0" = self.buildNodePackage {
    name = "loud-rejection-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/loud-rejection/-/loud-rejection-1.2.0.tgz";
      name = "loud-rejection-1.2.0.tgz";
      sha1 = "f4f87db6abec3b7fe47834531ecf6a011143e58d";
    };
    deps = {
      "signal-exit-2.1.2" = self.by-version."signal-exit"."2.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lower-case"."^1.1.0" =
    self.by-version."lower-case"."1.1.3";
  by-version."lower-case"."1.1.3" = self.buildNodePackage {
    name = "lower-case-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lower-case/-/lower-case-1.1.3.tgz";
      name = "lower-case-1.1.3.tgz";
      sha1 = "c92393d976793eee5ba4edb583cf8eae35bd9bfb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lower-case"."^1.1.1" =
    self.by-version."lower-case"."1.1.3";
  by-spec."lower-case"."^1.1.2" =
    self.by-version."lower-case"."1.1.3";
  by-spec."lower-case-first"."^1.0.0" =
    self.by-version."lower-case-first"."1.0.2";
  by-version."lower-case-first"."1.0.2" = self.buildNodePackage {
    name = "lower-case-first-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lower-case-first/-/lower-case-first-1.0.2.tgz";
      name = "lower-case-first-1.0.2.tgz";
      sha1 = "e5da7c26f29a7073be02d52bac9980e5922adfa1";
    };
    deps = {
      "lower-case-1.1.3" = self.by-version."lower-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."2" =
    self.by-version."lru-cache"."2.7.3";
  by-version."lru-cache"."2.7.3" = self.buildNodePackage {
    name = "lru-cache-2.7.3";
    version = "2.7.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.7.3.tgz";
      name = "lru-cache-2.7.3.tgz";
      sha1 = "6d4524e8b955f95d4f5b58851ce21dd72fb4e952";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."2.2.x" =
    self.by-version."lru-cache"."2.2.4";
  by-version."lru-cache"."2.2.4" = self.buildNodePackage {
    name = "lru-cache-2.2.4";
    version = "2.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.2.4.tgz";
      name = "lru-cache-2.2.4.tgz";
      sha1 = "6c658619becf14031d0d0b594b16042ce4dc063d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."^4.0.0" =
    self.by-version."lru-cache"."4.0.0";
  by-version."lru-cache"."4.0.0" = self.buildNodePackage {
    name = "lru-cache-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-4.0.0.tgz";
      name = "lru-cache-4.0.0.tgz";
      sha1 = "b5cbf01556c16966febe54ceec0fb4dc90df6c28";
    };
    deps = {
      "pseudomap-1.0.2" = self.by-version."pseudomap"."1.0.2";
      "yallist-2.0.0" = self.by-version."yallist"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."map-obj"."^1.0.0" =
    self.by-version."map-obj"."1.0.1";
  by-version."map-obj"."1.0.1" = self.buildNodePackage {
    name = "map-obj-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/map-obj/-/map-obj-1.0.1.tgz";
      name = "map-obj-1.0.1.tgz";
      sha1 = "d933ceb9205d82bdcf4886f6742bdc2b4dea146d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."map-obj"."^1.0.1" =
    self.by-version."map-obj"."1.0.1";
  by-spec."md5"."~2.0.0" =
    self.by-version."md5"."2.0.0";
  by-version."md5"."2.0.0" = self.buildNodePackage {
    name = "md5-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/md5/-/md5-2.0.0.tgz";
      name = "md5-2.0.0.tgz";
      sha1 = "75e392e0ebd5a9b88dc7cb7a93875137b87c8a33";
    };
    deps = {
      "charenc-0.0.1" = self.by-version."charenc"."0.0.1";
      "crypt-0.0.1" = self.by-version."crypt"."0.0.1";
      "is-buffer-1.0.2" = self.by-version."is-buffer"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."media-typer"."0.3.0" =
    self.by-version."media-typer"."0.3.0";
  by-version."media-typer"."0.3.0" = self.buildNodePackage {
    name = "media-typer-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz";
      name = "media-typer-0.3.0.tgz";
      sha1 = "8710d7af0aa626f8fffa1ce00168545263255748";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."memory-fs"."^0.2.0" =
    self.by-version."memory-fs"."0.2.0";
  by-version."memory-fs"."0.2.0" = self.buildNodePackage {
    name = "memory-fs-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/memory-fs/-/memory-fs-0.2.0.tgz";
      name = "memory-fs-0.2.0.tgz";
      sha1 = "f2bb25368bc121e391c2520de92969caee0a0290";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."memory-fs"."~0.3.0" =
    self.by-version."memory-fs"."0.3.0";
  by-version."memory-fs"."0.3.0" = self.buildNodePackage {
    name = "memory-fs-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/memory-fs/-/memory-fs-0.3.0.tgz";
      name = "memory-fs-0.3.0.tgz";
      sha1 = "7bcc6b629e3a43e871d7e29aca6ae8a7f15cbb20";
    };
    deps = {
      "errno-0.1.4" = self.by-version."errno"."0.1.4";
      "readable-stream-2.0.5" = self.by-version."readable-stream"."2.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."meow"."^3.3.0" =
    self.by-version."meow"."3.7.0";
  by-version."meow"."3.7.0" = self.buildNodePackage {
    name = "meow-3.7.0";
    version = "3.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/meow/-/meow-3.7.0.tgz";
      name = "meow-3.7.0.tgz";
      sha1 = "72cb668b425228290abbfa856892587308a801fb";
    };
    deps = {
      "camelcase-keys-2.0.0" = self.by-version."camelcase-keys"."2.0.0";
      "decamelize-1.1.2" = self.by-version."decamelize"."1.1.2";
      "loud-rejection-1.2.0" = self.by-version."loud-rejection"."1.2.0";
      "map-obj-1.0.1" = self.by-version."map-obj"."1.0.1";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "normalize-package-data-2.3.5" = self.by-version."normalize-package-data"."2.3.5";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "read-pkg-up-1.0.1" = self.by-version."read-pkg-up"."1.0.1";
      "redent-1.0.0" = self.by-version."redent"."1.0.0";
      "trim-newlines-1.0.0" = self.by-version."trim-newlines"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."merge-descriptors"."1.0.1" =
    self.by-version."merge-descriptors"."1.0.1";
  by-version."merge-descriptors"."1.0.1" = self.buildNodePackage {
    name = "merge-descriptors-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
      name = "merge-descriptors-1.0.1.tgz";
      sha1 = "b00aaa556dd8b44568150ec9d1b953f3f90cbb61";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."methods"."~1.1.1" =
    self.by-version."methods"."1.1.2";
  by-version."methods"."1.1.2" = self.buildNodePackage {
    name = "methods-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/methods/-/methods-1.1.2.tgz";
      name = "methods-1.1.2.tgz";
      sha1 = "5529a4d67654134edcc5266656835b0f851afcee";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."methods"."~1.1.2" =
    self.by-version."methods"."1.1.2";
  by-spec."micromatch"."^2.1.5" =
    self.by-version."micromatch"."2.3.7";
  by-version."micromatch"."2.3.7" = self.buildNodePackage {
    name = "micromatch-2.3.7";
    version = "2.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/micromatch/-/micromatch-2.3.7.tgz";
      name = "micromatch-2.3.7.tgz";
      sha1 = "2f2e85ef46140dbea6cb55e739b6b11b30eaa509";
    };
    deps = {
      "arr-diff-2.0.0" = self.by-version."arr-diff"."2.0.0";
      "array-unique-0.2.1" = self.by-version."array-unique"."0.2.1";
      "braces-1.8.3" = self.by-version."braces"."1.8.3";
      "expand-brackets-0.1.4" = self.by-version."expand-brackets"."0.1.4";
      "extglob-0.3.2" = self.by-version."extglob"."0.3.2";
      "filename-regex-2.0.0" = self.by-version."filename-regex"."2.0.0";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "kind-of-3.0.2" = self.by-version."kind-of"."3.0.2";
      "normalize-path-2.0.1" = self.by-version."normalize-path"."2.0.1";
      "object.omit-2.0.0" = self.by-version."object.omit"."2.0.0";
      "parse-glob-3.0.4" = self.by-version."parse-glob"."3.0.4";
      "regex-cache-0.4.2" = self.by-version."regex-cache"."0.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."1.2.x" =
    self.by-version."mime"."1.2.11";
  by-version."mime"."1.2.11" = self.buildNodePackage {
    name = "mime-1.2.11";
    version = "1.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.2.11.tgz";
      name = "mime-1.2.11.tgz";
      sha1 = "58203eed86e3a5ef17aed2b7d9ebd47f0a60dd10";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."1.3.4" =
    self.by-version."mime"."1.3.4";
  by-version."mime"."1.3.4" = self.buildNodePackage {
    name = "mime-1.3.4";
    version = "1.3.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.3.4.tgz";
      name = "mime-1.3.4.tgz";
      sha1 = "115f9e3b6b3daf2959983cb38f149a2d40eb5d53";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."^1.2.11" =
    self.by-version."mime"."1.3.4";
  by-spec."mime"."^1.3.4" =
    self.by-version."mime"."1.3.4";
  by-spec."mime"."~1.2.11" =
    self.by-version."mime"."1.2.11";
  by-spec."mime-db".">= 1.21.0 < 2" =
    self.by-version."mime-db"."1.21.0";
  by-version."mime-db"."1.21.0" = self.buildNodePackage {
    name = "mime-db-1.21.0";
    version = "1.21.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-db/-/mime-db-1.21.0.tgz";
      name = "mime-db-1.21.0.tgz";
      sha1 = "9b5239e3353cf6eb015a00d890261027c36d4bac";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-db"."~1.12.0" =
    self.by-version."mime-db"."1.12.0";
  by-version."mime-db"."1.12.0" = self.buildNodePackage {
    name = "mime-db-1.12.0";
    version = "1.12.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-db/-/mime-db-1.12.0.tgz";
      name = "mime-db-1.12.0.tgz";
      sha1 = "3d0c63180f458eb10d325aaa37d7c58ae312e9d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-db"."~1.21.0" =
    self.by-version."mime-db"."1.21.0";
  by-spec."mime-types"."^2.1.3" =
    self.by-version."mime-types"."2.1.9";
  by-version."mime-types"."2.1.9" = self.buildNodePackage {
    name = "mime-types-2.1.9";
    version = "2.1.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-2.1.9.tgz";
      name = "mime-types-2.1.9.tgz";
      sha1 = "dfb396764b5fdf75be34b1f4104bc3687fb635f8";
    };
    deps = {
      "mime-db-1.21.0" = self.by-version."mime-db"."1.21.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~1.0.1" =
    self.by-version."mime-types"."1.0.2";
  by-version."mime-types"."1.0.2" = self.buildNodePackage {
    name = "mime-types-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-1.0.2.tgz";
      name = "mime-types-1.0.2.tgz";
      sha1 = "995ae1392ab8affcbfcb2641dd054e943c0d5dce";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.0.3" =
    self.by-version."mime-types"."2.0.14";
  by-version."mime-types"."2.0.14" = self.buildNodePackage {
    name = "mime-types-2.0.14";
    version = "2.0.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-2.0.14.tgz";
      name = "mime-types-2.0.14.tgz";
      sha1 = "310e159db23e077f8bb22b748dabfa4957140aa6";
    };
    deps = {
      "mime-db-1.12.0" = self.by-version."mime-db"."1.12.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.0.4" =
    self.by-version."mime-types"."2.0.14";
  by-spec."mime-types"."~2.1.6" =
    self.by-version."mime-types"."2.1.9";
  by-spec."mime-types"."~2.1.7" =
    self.by-version."mime-types"."2.1.9";
  by-spec."mime-types"."~2.1.8" =
    self.by-version."mime-types"."2.1.9";
  by-spec."mime-types"."~2.1.9" =
    self.by-version."mime-types"."2.1.9";
  by-spec."minimatch"."0.3" =
    self.by-version."minimatch"."0.3.0";
  by-version."minimatch"."0.3.0" = self.buildNodePackage {
    name = "minimatch-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-0.3.0.tgz";
      name = "minimatch-0.3.0.tgz";
      sha1 = "275d8edaac4f1bb3326472089e7949c8394699dd";
    };
    deps = {
      "lru-cache-2.7.3" = self.by-version."lru-cache"."2.7.3";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."1" =
    self.by-version."minimatch"."1.0.0";
  by-version."minimatch"."1.0.0" = self.buildNodePackage {
    name = "minimatch-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-1.0.0.tgz";
      name = "minimatch-1.0.0.tgz";
      sha1 = "e0dd2120b49e1b724ce8d714c520822a9438576d";
    };
    deps = {
      "lru-cache-2.7.3" = self.by-version."lru-cache"."2.7.3";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."2 || 3" =
    self.by-version."minimatch"."3.0.0";
  by-version."minimatch"."3.0.0" = self.buildNodePackage {
    name = "minimatch-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-3.0.0.tgz";
      name = "minimatch-3.0.0.tgz";
      sha1 = "5236157a51e4f004c177fb3c527ff7dd78f0ef83";
    };
    deps = {
      "brace-expansion-1.1.2" = self.by-version."brace-expansion"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^2.0.1" =
    self.by-version."minimatch"."2.0.10";
  by-version."minimatch"."2.0.10" = self.buildNodePackage {
    name = "minimatch-2.0.10";
    version = "2.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-2.0.10.tgz";
      name = "minimatch-2.0.10.tgz";
      sha1 = "8d087c39c6b38c001b97fca7ce6d0e1e80afbac7";
    };
    deps = {
      "brace-expansion-1.1.2" = self.by-version."brace-expansion"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^2.0.10" =
    self.by-version."minimatch"."2.0.10";
  by-spec."minimatch"."^3.0.0" =
    self.by-version."minimatch"."3.0.0";
  by-spec."minimatch"."~0.2.11" =
    self.by-version."minimatch"."0.2.14";
  by-version."minimatch"."0.2.14" = self.buildNodePackage {
    name = "minimatch-0.2.14";
    version = "0.2.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-0.2.14.tgz";
      name = "minimatch-0.2.14.tgz";
      sha1 = "c74e780574f63c6f9a090e90efbe6ef53a6a756a";
    };
    deps = {
      "lru-cache-2.7.3" = self.by-version."lru-cache"."2.7.3";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."0.0.8" =
    self.by-version."minimist"."0.0.8";
  by-version."minimist"."0.0.8" = self.buildNodePackage {
    name = "minimist-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
      name = "minimist-0.0.8.tgz";
      sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."^1.1.3" =
    self.by-version."minimist"."1.2.0";
  by-version."minimist"."1.2.0" = self.buildNodePackage {
    name = "minimist-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-1.2.0.tgz";
      name = "minimist-1.2.0.tgz";
      sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."^1.2.0" =
    self.by-version."minimist"."1.2.0";
  by-spec."minimist"."~0.0.1" =
    self.by-version."minimist"."0.0.10";
  by-version."minimist"."0.0.10" = self.buildNodePackage {
    name = "minimist-0.0.10";
    version = "0.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-0.0.10.tgz";
      name = "minimist-0.0.10.tgz";
      sha1 = "de3f98543dbf96082be48ad1a0c7cda836301dcf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."0.3.0" =
    self.by-version."mkdirp"."0.3.0";
  by-version."mkdirp"."0.3.0" = self.buildNodePackage {
    name = "mkdirp-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.3.0.tgz";
      name = "mkdirp-0.3.0.tgz";
      sha1 = "1bbf5ab1ba827af23575143490426455f481fe1e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."0.3.x" =
    self.by-version."mkdirp"."0.3.5";
  by-version."mkdirp"."0.3.5" = self.buildNodePackage {
    name = "mkdirp-0.3.5";
    version = "0.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.3.5.tgz";
      name = "mkdirp-0.3.5.tgz";
      sha1 = "de3e5f8961c88c787ee1368df849ac4413eca8d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."0.5.0" =
    self.by-version."mkdirp"."0.5.0";
  by-version."mkdirp"."0.5.0" = self.buildNodePackage {
    name = "mkdirp-0.5.0";
    version = "0.5.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.0.tgz";
      name = "mkdirp-0.5.0.tgz";
      sha1 = "1d73076a6df986cd9344e15e71fcc05a4c9abf12";
    };
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."0.5.x" =
    self.by-version."mkdirp"."0.5.1";
  by-version."mkdirp"."0.5.1" = self.buildNodePackage {
    name = "mkdirp-0.5.1";
    version = "0.5.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
      name = "mkdirp-0.5.1.tgz";
      sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
    };
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp".">=0.5 0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."^0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."^0.5.1" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."~0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."~0.5.1" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mocha"."*" =
    self.by-version."mocha"."2.3.4";
  by-version."mocha"."2.3.4" = self.buildNodePackage {
    name = "mocha-2.3.4";
    version = "2.3.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mocha/-/mocha-2.3.4.tgz";
      name = "mocha-2.3.4.tgz";
      sha1 = "8629a6fb044f2d225aa4b81a2ae2d001699eb266";
    };
    deps = {
      "commander-2.3.0" = self.by-version."commander"."2.3.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "diff-1.4.0" = self.by-version."diff"."1.4.0";
      "escape-string-regexp-1.0.2" = self.by-version."escape-string-regexp"."1.0.2";
      "glob-3.2.3" = self.by-version."glob"."3.2.3";
      "growl-1.8.1" = self.by-version."growl"."1.8.1";
      "jade-0.26.3" = self.by-version."jade"."0.26.3";
      "mkdirp-0.5.0" = self.by-version."mkdirp"."0.5.0";
      "supports-color-1.2.0" = self.by-version."supports-color"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mocha"."^2.3.4" =
    self.by-version."mocha"."2.3.4";
  "mocha" = self.by-version."mocha"."2.3.4";
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = self.buildNodePackage {
    name = "ms-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
      name = "ms-0.7.1.tgz";
      sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nan"."^2.0.8" =
    self.by-version."nan"."2.2.0";
  by-version."nan"."2.2.0" = self.buildNodePackage {
    name = "nan-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-2.2.0.tgz";
      name = "nan-2.2.0.tgz";
      sha1 = "779c07135629503cf6a7b7e6aab33049b3c3853c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nan"."^2.1.0" =
    self.by-version."nan"."2.2.0";
  by-spec."negotiator"."0.4.9" =
    self.by-version."negotiator"."0.4.9";
  by-version."negotiator"."0.4.9" = self.buildNodePackage {
    name = "negotiator-0.4.9";
    version = "0.4.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/negotiator/-/negotiator-0.4.9.tgz";
      name = "negotiator-0.4.9.tgz";
      sha1 = "92e46b6db53c7e421ed64a2bc94f08be7630df3f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."negotiator"."0.5.3" =
    self.by-version."negotiator"."0.5.3";
  by-version."negotiator"."0.5.3" = self.buildNodePackage {
    name = "negotiator-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/negotiator/-/negotiator-0.5.3.tgz";
      name = "negotiator-0.5.3.tgz";
      sha1 = "269d5c476810ec92edbe7b6c2f28316384f9a7e8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."negotiator"."0.6.0" =
    self.by-version."negotiator"."0.6.0";
  by-version."negotiator"."0.6.0" = self.buildNodePackage {
    name = "negotiator-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/negotiator/-/negotiator-0.6.0.tgz";
      name = "negotiator-0.6.0.tgz";
      sha1 = "33593a5a2b0ce30c985840c6f56b6fb1ea9e3a55";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nib"."^1.1.0" =
    self.by-version."nib"."1.1.0";
  by-version."nib"."1.1.0" = self.buildNodePackage {
    name = "nib-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nib/-/nib-1.1.0.tgz";
      name = "nib-1.1.0.tgz";
      sha1 = "527c19662a10a2b565fe85e9b309d622aa7557d3";
    };
    deps = {
      "stylus-0.49.3" = self.by-version."stylus"."0.49.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "nib" = self.by-version."nib"."1.1.0";
  by-spec."node-gyp"."^3.0.1" =
    self.by-version."node-gyp"."3.2.1";
  by-version."node-gyp"."3.2.1" = self.buildNodePackage {
    name = "node-gyp-3.2.1";
    version = "3.2.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-gyp/-/node-gyp-3.2.1.tgz";
      name = "node-gyp-3.2.1.tgz";
      sha1 = "f5dd569970a508464cc3c15d7e9e8d2de8638dd5";
    };
    deps = {
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "npmlog-1.2.1" = self.by-version."npmlog"."1.2.1";
      "osenv-0.1.3" = self.by-version."osenv"."0.1.3";
      "path-array-1.0.1" = self.by-version."path-array"."1.0.1";
      "request-2.67.0" = self.by-version."request"."2.67.0";
      "rimraf-2.5.1" = self.by-version."rimraf"."2.5.1";
      "semver-5.1.0" = self.by-version."semver"."5.1.0";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "which-1.2.2" = self.by-version."which"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-libs-browser".">= 0.4.0 <=0.6.0" =
    self.by-version."node-libs-browser"."0.5.3";
  by-version."node-libs-browser"."0.5.3" = self.buildNodePackage {
    name = "node-libs-browser-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-libs-browser/-/node-libs-browser-0.5.3.tgz";
      name = "node-libs-browser-0.5.3.tgz";
      sha1 = "55efa888ec907acdb8cffc4e7a51712780e13b6a";
    };
    deps = {
      "assert-1.3.0" = self.by-version."assert"."1.3.0";
      "browserify-zlib-0.1.4" = self.by-version."browserify-zlib"."0.1.4";
      "buffer-3.6.0" = self.by-version."buffer"."3.6.0";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-0.0.1" = self.by-version."constants-browserify"."0.0.1";
      "crypto-browserify-3.2.8" = self.by-version."crypto-browserify"."3.2.8";
      "domain-browser-1.1.7" = self.by-version."domain-browser"."1.1.7";
      "events-1.1.0" = self.by-version."events"."1.1.0";
      "http-browserify-1.7.0" = self.by-version."http-browserify"."1.7.0";
      "https-browserify-0.0.0" = self.by-version."https-browserify"."0.0.0";
      "os-browserify-0.1.2" = self.by-version."os-browserify"."0.1.2";
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "process-0.11.2" = self.by-version."process"."0.11.2";
      "punycode-1.4.0" = self.by-version."punycode"."1.4.0";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "stream-browserify-1.0.0" = self.by-version."stream-browserify"."1.0.0";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "timers-browserify-1.4.2" = self.by-version."timers-browserify"."1.4.2";
      "tty-browserify-0.0.0" = self.by-version."tty-browserify"."0.0.0";
      "url-0.10.3" = self.by-version."url"."0.10.3";
      "util-0.10.3" = self.by-version."util"."0.10.3";
      "vm-browserify-0.0.4" = self.by-version."vm-browserify"."0.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-pre-gyp"."^0.6.17" =
    self.by-version."node-pre-gyp"."0.6.19";
  by-version."node-pre-gyp"."0.6.19" = self.buildNodePackage {
    name = "node-pre-gyp-0.6.19";
    version = "0.6.19";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-pre-gyp/-/node-pre-gyp-0.6.19.tgz";
      name = "node-pre-gyp-0.6.19.tgz";
      sha1 = "842badff2e9c423c5a817e068ffe8f8487dc1016";
    };
    deps = {
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "npmlog-2.0.1" = self.by-version."npmlog"."2.0.1";
      "request-2.67.0" = self.by-version."request"."2.67.0";
      "semver-5.1.0" = self.by-version."semver"."5.1.0";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "tar-pack-3.1.2" = self.by-version."tar-pack"."3.1.2";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rc-1.1.6" = self.by-version."rc"."1.1.6";
      "rimraf-2.5.1" = self.by-version."rimraf"."2.5.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-sass"."^3.4.2" =
    self.by-version."node-sass"."3.4.2";
  by-version."node-sass"."3.4.2" = self.buildNodePackage {
    name = "node-sass-3.4.2";
    version = "3.4.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-sass/-/node-sass-3.4.2.tgz";
      name = "node-sass-3.4.2.tgz";
      sha1 = "ef61069927f1578ae51408ed60298449c4cdd294";
    };
    deps = {
      "async-foreach-0.1.3" = self.by-version."async-foreach"."0.1.3";
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "cross-spawn-2.1.4" = self.by-version."cross-spawn"."2.1.4";
      "gaze-0.5.2" = self.by-version."gaze"."0.5.2";
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
      "meow-3.7.0" = self.by-version."meow"."3.7.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nan-2.2.0" = self.by-version."nan"."2.2.0";
      "npmconf-2.1.2" = self.by-version."npmconf"."2.1.2";
      "node-gyp-3.2.1" = self.by-version."node-gyp"."3.2.1";
      "request-2.67.0" = self.by-version."request"."2.67.0";
      "sass-graph-2.0.1" = self.by-version."sass-graph"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "node-sass" = self.by-version."node-sass"."3.4.2";
  by-spec."node-uuid"."^1.4.1" =
    self.by-version."node-uuid"."1.4.7";
  by-version."node-uuid"."1.4.7" = self.buildNodePackage {
    name = "node-uuid-1.4.7";
    version = "1.4.7";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-uuid/-/node-uuid-1.4.7.tgz";
      name = "node-uuid-1.4.7.tgz";
      sha1 = "6da5a17668c4b3dd59623bda11cf7fa4c1f60a6f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-uuid"."~1.4.0" =
    self.by-version."node-uuid"."1.4.7";
  by-spec."node-uuid"."~1.4.7" =
    self.by-version."node-uuid"."1.4.7";
  by-spec."nopt"."2 || 3" =
    self.by-version."nopt"."3.0.6";
  by-version."nopt"."3.0.6" = self.buildNodePackage {
    name = "nopt-3.0.6";
    version = "3.0.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nopt/-/nopt-3.0.6.tgz";
      name = "nopt-3.0.6.tgz";
      sha1 = "c6465dbf08abcd4db359317f79ac68a646b28ff9";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nopt"."~3.0.1" =
    self.by-version."nopt"."3.0.6";
  by-spec."normalize-package-data"."^2.3.2" =
    self.by-version."normalize-package-data"."2.3.5";
  by-version."normalize-package-data"."2.3.5" = self.buildNodePackage {
    name = "normalize-package-data-2.3.5";
    version = "2.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/normalize-package-data/-/normalize-package-data-2.3.5.tgz";
      name = "normalize-package-data-2.3.5.tgz";
      sha1 = "8d924f142960e1777e7ffe170543631cc7cb02df";
    };
    deps = {
      "hosted-git-info-2.1.4" = self.by-version."hosted-git-info"."2.1.4";
      "is-builtin-module-1.0.0" = self.by-version."is-builtin-module"."1.0.0";
      "semver-5.1.0" = self.by-version."semver"."5.1.0";
      "validate-npm-package-license-3.0.1" = self.by-version."validate-npm-package-license"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."normalize-package-data"."^2.3.4" =
    self.by-version."normalize-package-data"."2.3.5";
  by-spec."normalize-path"."^2.0.1" =
    self.by-version."normalize-path"."2.0.1";
  by-version."normalize-path"."2.0.1" = self.buildNodePackage {
    name = "normalize-path-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/normalize-path/-/normalize-path-2.0.1.tgz";
      name = "normalize-path-2.0.1.tgz";
      sha1 = "47886ac1662760d4261b7d979d241709d3ce3f7a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."normalize-range"."^0.1.2" =
    self.by-version."normalize-range"."0.1.2";
  by-version."normalize-range"."0.1.2" = self.buildNodePackage {
    name = "normalize-range-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/normalize-range/-/normalize-range-0.1.2.tgz";
      name = "normalize-range-0.1.2.tgz";
      sha1 = "2d10c06bdfd312ea9777695a4d28439456b75942";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."normalize-url"."^1.3.1" =
    self.by-version."normalize-url"."1.4.0";
  by-version."normalize-url"."1.4.0" = self.buildNodePackage {
    name = "normalize-url-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/normalize-url/-/normalize-url-1.4.0.tgz";
      name = "normalize-url-1.4.0.tgz";
      sha1 = "8ae93e97ddf66f17544c1f12a2dc0c0e4b5762ff";
    };
    deps = {
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "prepend-http-1.0.3" = self.by-version."prepend-http"."1.0.3";
      "query-string-3.0.0" = self.by-version."query-string"."3.0.0";
      "sort-keys-1.1.1" = self.by-version."sort-keys"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."normalize.css"."^3.0.3" =
    self.by-version."normalize.css"."3.0.3";
  by-version."normalize.css"."3.0.3" = self.buildNodePackage {
    name = "normalize.css-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/normalize.css/-/normalize.css-3.0.3.tgz";
      name = "normalize.css-3.0.3.tgz";
      sha1 = "acc00262e235a2caa91363a2e5e3bfa4f8ad05c6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "normalize.css" = self.by-version."normalize.css"."3.0.3";
  by-spec."npmconf"."2.1.1" =
    self.by-version."npmconf"."2.1.1";
  by-version."npmconf"."2.1.1" = self.buildNodePackage {
    name = "npmconf-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/npmconf/-/npmconf-2.1.1.tgz";
      name = "npmconf-2.1.1.tgz";
      sha1 = "a266c7e5c56695eb7f55caf3a5a7328f24510dae";
    };
    deps = {
      "config-chain-1.1.10" = self.by-version."config-chain"."1.1.10";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "osenv-0.1.3" = self.by-version."osenv"."0.1.3";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
      "uid-number-0.0.5" = self.by-version."uid-number"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."npmconf"."^2.1.2" =
    self.by-version."npmconf"."2.1.2";
  by-version."npmconf"."2.1.2" = self.buildNodePackage {
    name = "npmconf-2.1.2";
    version = "2.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/npmconf/-/npmconf-2.1.2.tgz";
      name = "npmconf-2.1.2.tgz";
      sha1 = "66606a4a736f1e77a059aa071a79c94ab781853a";
    };
    deps = {
      "config-chain-1.1.10" = self.by-version."config-chain"."1.1.10";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "osenv-0.1.3" = self.by-version."osenv"."0.1.3";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
      "uid-number-0.0.5" = self.by-version."uid-number"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."npmlog"."0 || 1" =
    self.by-version."npmlog"."1.2.1";
  by-version."npmlog"."1.2.1" = self.buildNodePackage {
    name = "npmlog-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/npmlog/-/npmlog-1.2.1.tgz";
      name = "npmlog-1.2.1.tgz";
      sha1 = "28e7be619609b53f7ad1dd300a10d64d716268b6";
    };
    deps = {
      "ansi-0.3.1" = self.by-version."ansi"."0.3.1";
      "are-we-there-yet-1.0.5" = self.by-version."are-we-there-yet"."1.0.5";
      "gauge-1.2.4" = self.by-version."gauge"."1.2.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."npmlog"."~2.0.0" =
    self.by-version."npmlog"."2.0.1";
  by-version."npmlog"."2.0.1" = self.buildNodePackage {
    name = "npmlog-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/npmlog/-/npmlog-2.0.1.tgz";
      name = "npmlog-2.0.1.tgz";
      sha1 = "c2e704d3eb50de738c903f7172001d60bf673fa0";
    };
    deps = {
      "ansi-0.3.1" = self.by-version."ansi"."0.3.1";
      "are-we-there-yet-1.0.5" = self.by-version."are-we-there-yet"."1.0.5";
      "gauge-1.2.4" = self.by-version."gauge"."1.2.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nth-check"."~1.0.1" =
    self.by-version."nth-check"."1.0.1";
  by-version."nth-check"."1.0.1" = self.buildNodePackage {
    name = "nth-check-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nth-check/-/nth-check-1.0.1.tgz";
      name = "nth-check-1.0.1.tgz";
      sha1 = "9929acdf628fc2c41098deab82ac580cf149aae4";
    };
    deps = {
      "boolbase-1.0.0" = self.by-version."boolbase"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."num2fraction"."^1.2.2" =
    self.by-version."num2fraction"."1.2.2";
  by-version."num2fraction"."1.2.2" = self.buildNodePackage {
    name = "num2fraction-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/num2fraction/-/num2fraction-1.2.2.tgz";
      name = "num2fraction-1.2.2.tgz";
      sha1 = "6f682b6a027a4e9ddfa4564cd2589d1d4e669ede";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."number-is-nan"."^1.0.0" =
    self.by-version."number-is-nan"."1.0.0";
  by-version."number-is-nan"."1.0.0" = self.buildNodePackage {
    name = "number-is-nan-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.0.tgz";
      name = "number-is-nan-1.0.0.tgz";
      sha1 = "c020f529c5282adfdd233d91d4b181c3d686dc4b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."oauth-sign"."~0.4.0" =
    self.by-version."oauth-sign"."0.4.0";
  by-version."oauth-sign"."0.4.0" = self.buildNodePackage {
    name = "oauth-sign-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.4.0.tgz";
      name = "oauth-sign-0.4.0.tgz";
      sha1 = "f22956f31ea7151a821e5f2fb32c113cad8b9f69";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."oauth-sign"."~0.8.0" =
    self.by-version."oauth-sign"."0.8.0";
  by-version."oauth-sign"."0.8.0" = self.buildNodePackage {
    name = "oauth-sign-0.8.0";
    version = "0.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.0.tgz";
      name = "oauth-sign-0.8.0.tgz";
      sha1 = "938fdc875765ba527137d8aec9d178e24debc553";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^4.0.1" =
    self.by-version."object-assign"."4.0.1";
  by-version."object-assign"."4.0.1" = self.buildNodePackage {
    name = "object-assign-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-4.0.1.tgz";
      name = "object-assign-4.0.1.tgz";
      sha1 = "99504456c3598b5cad4fc59c26e8a9bb107fe0bd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-component"."0.0.3" =
    self.by-version."object-component"."0.0.3";
  by-version."object-component"."0.0.3" = self.buildNodePackage {
    name = "object-component-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-component/-/object-component-0.0.3.tgz";
      name = "object-component-0.0.3.tgz";
      sha1 = "f0c69aa50efc95b866c186f400a33769cb2f1291";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object.omit"."^2.0.0" =
    self.by-version."object.omit"."2.0.0";
  by-version."object.omit"."2.0.0" = self.buildNodePackage {
    name = "object.omit-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object.omit/-/object.omit-2.0.0.tgz";
      name = "object.omit-2.0.0.tgz";
      sha1 = "868597333d54e60662940bb458605dd6ae12fe94";
    };
    deps = {
      "for-own-0.1.3" = self.by-version."for-own"."0.1.3";
      "is-extendable-0.1.1" = self.by-version."is-extendable"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."on-finished"."~2.3.0" =
    self.by-version."on-finished"."2.3.0";
  by-version."on-finished"."2.3.0" = self.buildNodePackage {
    name = "on-finished-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz";
      name = "on-finished-2.3.0.tgz";
      sha1 = "20f1336481b083cd75337992a16971aa2d906947";
    };
    deps = {
      "ee-first-1.1.1" = self.by-version."ee-first"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."on-headers"."~1.0.1" =
    self.by-version."on-headers"."1.0.1";
  by-version."on-headers"."1.0.1" = self.buildNodePackage {
    name = "on-headers-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/on-headers/-/on-headers-1.0.1.tgz";
      name = "on-headers-1.0.1.tgz";
      sha1 = "928f5d0f470d49342651ea6794b0857c100693f7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."^1.3.0" =
    self.by-version."once"."1.3.3";
  by-version."once"."1.3.3" = self.buildNodePackage {
    name = "once-1.3.3";
    version = "1.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/once/-/once-1.3.3.tgz";
      name = "once-1.3.3.tgz";
      sha1 = "b2e261557ce4c314ec8304f3fa82663e4297ca20";
    };
    deps = {
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."~1.1.1" =
    self.by-version."once"."1.1.1";
  by-version."once"."1.1.1" = self.buildNodePackage {
    name = "once-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/once/-/once-1.1.1.tgz";
      name = "once-1.1.1.tgz";
      sha1 = "9db574933ccb08c3a7614d154032c09ea6f339e7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."~1.3.0" =
    self.by-version."once"."1.3.3";
  by-spec."optimist"."^0.6.1" =
    self.by-version."optimist"."0.6.1";
  by-version."optimist"."0.6.1" = self.buildNodePackage {
    name = "optimist-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.6.1.tgz";
      name = "optimist-0.6.1.tgz";
      sha1 = "da3ea74686fa21a19a111c326e90eb15a0196686";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
      "minimist-0.0.10" = self.by-version."minimist"."0.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."~0.6.0" =
    self.by-version."optimist"."0.6.1";
  by-spec."options".">=0.0.5" =
    self.by-version."options"."0.0.6";
  by-version."options"."0.0.6" = self.buildNodePackage {
    name = "options-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/options/-/options-0.0.6.tgz";
      name = "options-0.0.6.tgz";
      sha1 = "ec22d312806bb53e731773e7cdaefcf1c643128f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."original".">=0.0.5" =
    self.by-version."original"."1.0.0";
  by-version."original"."1.0.0" = self.buildNodePackage {
    name = "original-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/original/-/original-1.0.0.tgz";
      name = "original-1.0.0.tgz";
      sha1 = "9147f93fa1696d04be61e01bd50baeaca656bd3b";
    };
    deps = {
      "url-parse-1.0.5" = self.by-version."url-parse"."1.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-browserify"."~0.1.2" =
    self.by-version."os-browserify"."0.1.2";
  by-version."os-browserify"."0.1.2" = self.buildNodePackage {
    name = "os-browserify-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-browserify/-/os-browserify-0.1.2.tgz";
      name = "os-browserify-0.1.2.tgz";
      sha1 = "49ca0293e0b19590a5f5de10c7f265a617d8fe54";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-homedir"."^1.0.0" =
    self.by-version."os-homedir"."1.0.1";
  by-version."os-homedir"."1.0.1" = self.buildNodePackage {
    name = "os-homedir-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-homedir/-/os-homedir-1.0.1.tgz";
      name = "os-homedir-1.0.1.tgz";
      sha1 = "0d62bdf44b916fd3bbdcf2cab191948fb094f007";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-locale"."^1.4.0" =
    self.by-version."os-locale"."1.4.0";
  by-version."os-locale"."1.4.0" = self.buildNodePackage {
    name = "os-locale-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-locale/-/os-locale-1.4.0.tgz";
      name = "os-locale-1.4.0.tgz";
      sha1 = "20f9f17ae29ed345e8bde583b13d2009803c14d9";
    };
    deps = {
      "lcid-1.0.0" = self.by-version."lcid"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-shim"."^0.1.2" =
    self.by-version."os-shim"."0.1.3";
  by-version."os-shim"."0.1.3" = self.buildNodePackage {
    name = "os-shim-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-shim/-/os-shim-0.1.3.tgz";
      name = "os-shim-0.1.3.tgz";
      sha1 = "6b62c3791cf7909ea35ed46e17658bb417cb3917";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-tmpdir"."^1.0.0" =
    self.by-version."os-tmpdir"."1.0.1";
  by-version."os-tmpdir"."1.0.1" = self.buildNodePackage {
    name = "os-tmpdir-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.1.tgz";
      name = "os-tmpdir-1.0.1.tgz";
      sha1 = "e9b423a1edaf479882562e92ed71d7743a071b6e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."osenv"."0" =
    self.by-version."osenv"."0.1.3";
  by-version."osenv"."0.1.3" = self.buildNodePackage {
    name = "osenv-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/osenv/-/osenv-0.1.3.tgz";
      name = "osenv-0.1.3.tgz";
      sha1 = "83cf05c6d6458fc4d5ac6362ea325d92f2754217";
    };
    deps = {
      "os-homedir-1.0.1" = self.by-version."os-homedir"."1.0.1";
      "os-tmpdir-1.0.1" = self.by-version."os-tmpdir"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."osenv"."^0.1.0" =
    self.by-version."osenv"."0.1.3";
  by-spec."pako"."~0.2.0" =
    self.by-version."pako"."0.2.8";
  by-version."pako"."0.2.8" = self.buildNodePackage {
    name = "pako-0.2.8";
    version = "0.2.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pako/-/pako-0.2.8.tgz";
      name = "pako-0.2.8.tgz";
      sha1 = "15ad772915362913f20de4a8a164b4aacc6165d6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."param-case"."^1.1.0" =
    self.by-version."param-case"."1.1.2";
  by-version."param-case"."1.1.2" = self.buildNodePackage {
    name = "param-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/param-case/-/param-case-1.1.2.tgz";
      name = "param-case-1.1.2.tgz";
      sha1 = "dcb091a43c259b9228f1c341e7b6a44ea0bf9743";
    };
    deps = {
      "sentence-case-1.1.3" = self.by-version."sentence-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parse-glob"."^3.0.4" =
    self.by-version."parse-glob"."3.0.4";
  by-version."parse-glob"."3.0.4" = self.buildNodePackage {
    name = "parse-glob-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parse-glob/-/parse-glob-3.0.4.tgz";
      name = "parse-glob-3.0.4.tgz";
      sha1 = "b2c376cfb11f35513badd173ef0bb6e3a388391c";
    };
    deps = {
      "glob-base-0.3.0" = self.by-version."glob-base"."0.3.0";
      "is-dotfile-1.0.2" = self.by-version."is-dotfile"."1.0.2";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parse-json"."^2.2.0" =
    self.by-version."parse-json"."2.2.0";
  by-version."parse-json"."2.2.0" = self.buildNodePackage {
    name = "parse-json-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parse-json/-/parse-json-2.2.0.tgz";
      name = "parse-json-2.2.0.tgz";
      sha1 = "f480f40434ef80741f8469099f8dea18f55a4dc9";
    };
    deps = {
      "error-ex-1.3.0" = self.by-version."error-ex"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parsejson"."0.0.1" =
    self.by-version."parsejson"."0.0.1";
  by-version."parsejson"."0.0.1" = self.buildNodePackage {
    name = "parsejson-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parsejson/-/parsejson-0.0.1.tgz";
      name = "parsejson-0.0.1.tgz";
      sha1 = "9b10c6c0d825ab589e685153826de0a3ba278bcc";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parseqs"."0.0.2" =
    self.by-version."parseqs"."0.0.2";
  by-version."parseqs"."0.0.2" = self.buildNodePackage {
    name = "parseqs-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseqs/-/parseqs-0.0.2.tgz";
      name = "parseqs-0.0.2.tgz";
      sha1 = "9dfe70b2cddac388bde4f35b1f240fa58adbe6c7";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parseuri"."0.0.4" =
    self.by-version."parseuri"."0.0.4";
  by-version."parseuri"."0.0.4" = self.buildNodePackage {
    name = "parseuri-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseuri/-/parseuri-0.0.4.tgz";
      name = "parseuri-0.0.4.tgz";
      sha1 = "806582a39887e1ea18dd5e2fe0e01902268e9350";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parseurl"."~1.3.1" =
    self.by-version."parseurl"."1.3.1";
  by-version."parseurl"."1.3.1" = self.buildNodePackage {
    name = "parseurl-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseurl/-/parseurl-1.3.1.tgz";
      name = "parseurl-1.3.1.tgz";
      sha1 = "c8ab8c9223ba34888aa64a297b28853bec18da56";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pascal-case"."^1.1.0" =
    self.by-version."pascal-case"."1.1.2";
  by-version."pascal-case"."1.1.2" = self.buildNodePackage {
    name = "pascal-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pascal-case/-/pascal-case-1.1.2.tgz";
      name = "pascal-case-1.1.2.tgz";
      sha1 = "3e5d64a20043830a7c49344c2d74b41be0c9c99b";
    };
    deps = {
      "camel-case-1.2.2" = self.by-version."camel-case"."1.2.2";
      "upper-case-first-1.1.2" = self.by-version."upper-case-first"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-array"."^1.0.0" =
    self.by-version."path-array"."1.0.1";
  by-version."path-array"."1.0.1" = self.buildNodePackage {
    name = "path-array-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-array/-/path-array-1.0.1.tgz";
      name = "path-array-1.0.1.tgz";
      sha1 = "7e2f0f35f07a2015122b868b7eac0eb2c4fec271";
    };
    deps = {
      "array-index-1.0.0" = self.by-version."array-index"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-browserify"."0.0.0" =
    self.by-version."path-browserify"."0.0.0";
  by-version."path-browserify"."0.0.0" = self.buildNodePackage {
    name = "path-browserify-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-browserify/-/path-browserify-0.0.0.tgz";
      name = "path-browserify-0.0.0.tgz";
      sha1 = "a0b870729aae214005b7d5032ec2cbbb0fb4451a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-case"."^1.1.0" =
    self.by-version."path-case"."1.1.2";
  by-version."path-case"."1.1.2" = self.buildNodePackage {
    name = "path-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-case/-/path-case-1.1.2.tgz";
      name = "path-case-1.1.2.tgz";
      sha1 = "50ce6ba0d3bed3dd0b5c2a9c4553697434409514";
    };
    deps = {
      "sentence-case-1.1.3" = self.by-version."sentence-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-exists"."^2.0.0" =
    self.by-version."path-exists"."2.1.0";
  by-version."path-exists"."2.1.0" = self.buildNodePackage {
    name = "path-exists-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-exists/-/path-exists-2.1.0.tgz";
      name = "path-exists-2.1.0.tgz";
      sha1 = "0feb6c64f0fc518d9a754dd5efb62c7022761f4b";
    };
    deps = {
      "pinkie-promise-2.0.0" = self.by-version."pinkie-promise"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-is-absolute"."^1.0.0" =
    self.by-version."path-is-absolute"."1.0.0";
  by-version."path-is-absolute"."1.0.0" = self.buildNodePackage {
    name = "path-is-absolute-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.0.tgz";
      name = "path-is-absolute-1.0.0.tgz";
      sha1 = "263dada66ab3f2fb10bf7f9d24dd8f3e570ef912";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-to-regexp"."0.1.7" =
    self.by-version."path-to-regexp"."0.1.7";
  by-version."path-to-regexp"."0.1.7" = self.buildNodePackage {
    name = "path-to-regexp-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
      name = "path-to-regexp-0.1.7.tgz";
      sha1 = "df604178005f522f15eb4490e7247a1bfaa67f8c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-type"."^1.0.0" =
    self.by-version."path-type"."1.1.0";
  by-version."path-type"."1.1.0" = self.buildNodePackage {
    name = "path-type-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-type/-/path-type-1.1.0.tgz";
      name = "path-type-1.1.0.tgz";
      sha1 = "59c44f7ee491da704da415da5a4070ba4f8fe441";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "pify-2.3.0" = self.by-version."pify"."2.3.0";
      "pinkie-promise-2.0.0" = self.by-version."pinkie-promise"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pbkdf2-compat"."2.0.1" =
    self.by-version."pbkdf2-compat"."2.0.1";
  by-version."pbkdf2-compat"."2.0.1" = self.buildNodePackage {
    name = "pbkdf2-compat-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pbkdf2-compat/-/pbkdf2-compat-2.0.1.tgz";
      name = "pbkdf2-compat-2.0.1.tgz";
      sha1 = "b6e0c8fa99494d94e0511575802a59a5c142f288";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."phantomjs".">=1.9" =
    self.by-version."phantomjs"."1.9.19";
  by-version."phantomjs"."1.9.19" = self.buildNodePackage {
    name = "phantomjs-1.9.19";
    version = "1.9.19";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/phantomjs/-/phantomjs-1.9.19.tgz";
      name = "phantomjs-1.9.19.tgz";
      sha1 = "a7f2cef5eba7343e1a729ce9922a95a6d0a11c07";
    };
    deps = {
      "adm-zip-0.4.4" = self.by-version."adm-zip"."0.4.4";
      "fs-extra-0.23.1" = self.by-version."fs-extra"."0.23.1";
      "kew-0.4.0" = self.by-version."kew"."0.4.0";
      "md5-2.0.0" = self.by-version."md5"."2.0.0";
      "npmconf-2.1.1" = self.by-version."npmconf"."2.1.1";
      "progress-1.1.8" = self.by-version."progress"."1.1.8";
      "request-2.42.0" = self.by-version."request"."2.42.0";
      "request-progress-0.3.1" = self.by-version."request-progress"."0.3.1";
      "which-1.0.9" = self.by-version."which"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."phantomjs"."^1.9.19" =
    self.by-version."phantomjs"."1.9.19";
  "phantomjs" = self.by-version."phantomjs"."1.9.19";
  by-spec."pify"."^2.0.0" =
    self.by-version."pify"."2.3.0";
  by-version."pify"."2.3.0" = self.buildNodePackage {
    name = "pify-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pify/-/pify-2.3.0.tgz";
      name = "pify-2.3.0.tgz";
      sha1 = "ed141a6ac043a849ea588498e7dca8b15330e90c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie"."^2.0.0" =
    self.by-version."pinkie"."2.0.1";
  by-version."pinkie"."2.0.1" = self.buildNodePackage {
    name = "pinkie-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pinkie/-/pinkie-2.0.1.tgz";
      name = "pinkie-2.0.1.tgz";
      sha1 = "4236c86fc29f261c2045bbe81f78cbb2a5e8306c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie-promise"."^2.0.0" =
    self.by-version."pinkie-promise"."2.0.0";
  by-version."pinkie-promise"."2.0.0" = self.buildNodePackage {
    name = "pinkie-promise-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pinkie-promise/-/pinkie-promise-2.0.0.tgz";
      name = "pinkie-promise-2.0.0.tgz";
      sha1 = "4c83538de1f6e660c29e0a13446844f7a7e88259";
    };
    deps = {
      "pinkie-2.0.1" = self.by-version."pinkie"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss"."^5.0.10" =
    self.by-version."postcss"."5.0.14";
  by-version."postcss"."5.0.14" = self.buildNodePackage {
    name = "postcss-5.0.14";
    version = "5.0.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss/-/postcss-5.0.14.tgz";
      name = "postcss-5.0.14.tgz";
      sha1 = "164dafa9f3c6775ee599919cda610adeb495fcec";
    };
    deps = {
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "source-map-0.5.3" = self.by-version."source-map"."0.5.3";
      "js-base64-2.1.9" = self.by-version."js-base64"."2.1.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss"."^5.0.12" =
    self.by-version."postcss"."5.0.14";
  by-spec."postcss"."^5.0.13" =
    self.by-version."postcss"."5.0.14";
  by-spec."postcss"."^5.0.14" =
    self.by-version."postcss"."5.0.14";
  by-spec."postcss"."^5.0.2" =
    self.by-version."postcss"."5.0.14";
  by-spec."postcss"."^5.0.4" =
    self.by-version."postcss"."5.0.14";
  by-spec."postcss"."^5.0.5" =
    self.by-version."postcss"."5.0.14";
  by-spec."postcss"."^5.0.6" =
    self.by-version."postcss"."5.0.14";
  by-spec."postcss"."^5.0.8" =
    self.by-version."postcss"."5.0.14";
  by-spec."postcss-calc"."^5.0.0" =
    self.by-version."postcss-calc"."5.2.0";
  by-version."postcss-calc"."5.2.0" = self.buildNodePackage {
    name = "postcss-calc-5.2.0";
    version = "5.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-calc/-/postcss-calc-5.2.0.tgz";
      name = "postcss-calc-5.2.0.tgz";
      sha1 = "0b6153b79390ba3b7b98eaddff63f179ffe6faf5";
    };
    deps = {
      "postcss-message-helpers-2.0.0" = self.by-version."postcss-message-helpers"."2.0.0";
      "reduce-css-calc-1.2.0" = self.by-version."reduce-css-calc"."1.2.0";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-colormin"."^2.1.7" =
    self.by-version."postcss-colormin"."2.1.8";
  by-version."postcss-colormin"."2.1.8" = self.buildNodePackage {
    name = "postcss-colormin-2.1.8";
    version = "2.1.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-colormin/-/postcss-colormin-2.1.8.tgz";
      name = "postcss-colormin-2.1.8.tgz";
      sha1 = "37d379d5e3f739ebbb8485169aa1266d1c608af5";
    };
    deps = {
      "colormin-1.0.7" = self.by-version."colormin"."1.0.7";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-convert-values"."^2.3.4" =
    self.by-version."postcss-convert-values"."2.3.4";
  by-version."postcss-convert-values"."2.3.4" = self.buildNodePackage {
    name = "postcss-convert-values-2.3.4";
    version = "2.3.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-convert-values/-/postcss-convert-values-2.3.4.tgz";
      name = "postcss-convert-values-2.3.4.tgz";
      sha1 = "2321ba0397f322579130d8b9f0e89a42d82e6239";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-discard-comments"."^2.0.2" =
    self.by-version."postcss-discard-comments"."2.0.3";
  by-version."postcss-discard-comments"."2.0.3" = self.buildNodePackage {
    name = "postcss-discard-comments-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-discard-comments/-/postcss-discard-comments-2.0.3.tgz";
      name = "postcss-discard-comments-2.0.3.tgz";
      sha1 = "59797a51747e05e2bec208f22d635a6983068b04";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-discard-duplicates"."^2.0.0" =
    self.by-version."postcss-discard-duplicates"."2.0.0";
  by-version."postcss-discard-duplicates"."2.0.0" = self.buildNodePackage {
    name = "postcss-discard-duplicates-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-discard-duplicates/-/postcss-discard-duplicates-2.0.0.tgz";
      name = "postcss-discard-duplicates-2.0.0.tgz";
      sha1 = "16a1901e5d791947b198e4a6b29d7e123814dd12";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-discard-empty"."^2.0.0" =
    self.by-version."postcss-discard-empty"."2.0.0";
  by-version."postcss-discard-empty"."2.0.0" = self.buildNodePackage {
    name = "postcss-discard-empty-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-discard-empty/-/postcss-discard-empty-2.0.0.tgz";
      name = "postcss-discard-empty-2.0.0.tgz";
      sha1 = "404768be05a91330490115486e1d521918c8e761";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-discard-unused"."^2.1.0" =
    self.by-version."postcss-discard-unused"."2.1.0";
  by-version."postcss-discard-unused"."2.1.0" = self.buildNodePackage {
    name = "postcss-discard-unused-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-discard-unused/-/postcss-discard-unused-2.1.0.tgz";
      name = "postcss-discard-unused-2.1.0.tgz";
      sha1 = "55f76aead571c00bc7419e3056269c0d1213f148";
    };
    deps = {
      "flatten-0.0.1" = self.by-version."flatten"."0.0.1";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "uniqs-2.0.0" = self.by-version."uniqs"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-filter-plugins"."^2.0.0" =
    self.by-version."postcss-filter-plugins"."2.0.0";
  by-version."postcss-filter-plugins"."2.0.0" = self.buildNodePackage {
    name = "postcss-filter-plugins-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-filter-plugins/-/postcss-filter-plugins-2.0.0.tgz";
      name = "postcss-filter-plugins-2.0.0.tgz";
      sha1 = "acce5d18c40e51be598911b6eca8b54d9e5bdedf";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "uniqid-1.0.0" = self.by-version."uniqid"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-merge-idents"."^2.1.3" =
    self.by-version."postcss-merge-idents"."2.1.4";
  by-version."postcss-merge-idents"."2.1.4" = self.buildNodePackage {
    name = "postcss-merge-idents-2.1.4";
    version = "2.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-merge-idents/-/postcss-merge-idents-2.1.4.tgz";
      name = "postcss-merge-idents-2.1.4.tgz";
      sha1 = "270d1e9eae275f107a7ba76da130374de32d7ac1";
    };
    deps = {
      "has-own-1.0.0" = self.by-version."has-own"."1.0.0";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-merge-longhand"."^2.0.1" =
    self.by-version."postcss-merge-longhand"."2.0.1";
  by-version."postcss-merge-longhand"."2.0.1" = self.buildNodePackage {
    name = "postcss-merge-longhand-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-merge-longhand/-/postcss-merge-longhand-2.0.1.tgz";
      name = "postcss-merge-longhand-2.0.1.tgz";
      sha1 = "ff59b5dec6d586ce2cea183138f55c5876fa9cdc";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-merge-rules"."^2.0.1" =
    self.by-version."postcss-merge-rules"."2.0.3";
  by-version."postcss-merge-rules"."2.0.3" = self.buildNodePackage {
    name = "postcss-merge-rules-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-merge-rules/-/postcss-merge-rules-2.0.3.tgz";
      name = "postcss-merge-rules-2.0.3.tgz";
      sha1 = "92eff7efb5a13029853ebb4aa3309be525f319e6";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-message-helpers"."^2.0.0" =
    self.by-version."postcss-message-helpers"."2.0.0";
  by-version."postcss-message-helpers"."2.0.0" = self.buildNodePackage {
    name = "postcss-message-helpers-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-message-helpers/-/postcss-message-helpers-2.0.0.tgz";
      name = "postcss-message-helpers-2.0.0.tgz";
      sha1 = "a4f2f4fab6e4fe002f0aed000478cdf52f9ba60e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-minify-font-values"."^1.0.2" =
    self.by-version."postcss-minify-font-values"."1.0.2";
  by-version."postcss-minify-font-values"."1.0.2" = self.buildNodePackage {
    name = "postcss-minify-font-values-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-minify-font-values/-/postcss-minify-font-values-1.0.2.tgz";
      name = "postcss-minify-font-values-1.0.2.tgz";
      sha1 = "9f6a045ff4160a16da60617dd3fc32abdbee7d8b";
    };
    deps = {
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
      "uniqs-2.0.0" = self.by-version."uniqs"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-minify-gradients"."^1.0.0" =
    self.by-version."postcss-minify-gradients"."1.0.1";
  by-version."postcss-minify-gradients"."1.0.1" = self.buildNodePackage {
    name = "postcss-minify-gradients-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-minify-gradients/-/postcss-minify-gradients-1.0.1.tgz";
      name = "postcss-minify-gradients-1.0.1.tgz";
      sha1 = "3db3224a395711732bc0ae97b4c76597481a40f8";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-minify-params"."^1.0.4" =
    self.by-version."postcss-minify-params"."1.0.4";
  by-version."postcss-minify-params"."1.0.4" = self.buildNodePackage {
    name = "postcss-minify-params-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-minify-params/-/postcss-minify-params-1.0.4.tgz";
      name = "postcss-minify-params-1.0.4.tgz";
      sha1 = "2a77b96db80487f15fef941595b11b595368d543";
    };
    deps = {
      "alphanum-sort-1.0.2" = self.by-version."alphanum-sort"."1.0.2";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
      "uniqs-2.0.0" = self.by-version."uniqs"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-minify-selectors"."^2.0.1" =
    self.by-version."postcss-minify-selectors"."2.0.3";
  by-version."postcss-minify-selectors"."2.0.3" = self.buildNodePackage {
    name = "postcss-minify-selectors-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-minify-selectors/-/postcss-minify-selectors-2.0.3.tgz";
      name = "postcss-minify-selectors-2.0.3.tgz";
      sha1 = "d3e478f549e2fe70060b86cb823d2a02dd09c762";
    };
    deps = {
      "alphanum-sort-1.0.2" = self.by-version."alphanum-sort"."1.0.2";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-selector-parser-1.3.0" = self.by-version."postcss-selector-parser"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-modules-extract-imports"."^1.0.0" =
    self.by-version."postcss-modules-extract-imports"."1.0.0";
  by-version."postcss-modules-extract-imports"."1.0.0" = self.buildNodePackage {
    name = "postcss-modules-extract-imports-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-modules-extract-imports/-/postcss-modules-extract-imports-1.0.0.tgz";
      name = "postcss-modules-extract-imports-1.0.0.tgz";
      sha1 = "5b07f368e350cda6fd5c8844b79123a7bd3e37be";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-modules-local-by-default"."^1.0.1" =
    self.by-version."postcss-modules-local-by-default"."1.0.1";
  by-version."postcss-modules-local-by-default"."1.0.1" = self.buildNodePackage {
    name = "postcss-modules-local-by-default-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-modules-local-by-default/-/postcss-modules-local-by-default-1.0.1.tgz";
      name = "postcss-modules-local-by-default-1.0.1.tgz";
      sha1 = "5ecb890fe5269f70fc3b980f6202cde9771d4799";
    };
    deps = {
      "css-selector-tokenizer-0.5.4" = self.by-version."css-selector-tokenizer"."0.5.4";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-modules-scope"."^1.0.0" =
    self.by-version."postcss-modules-scope"."1.0.0";
  by-version."postcss-modules-scope"."1.0.0" = self.buildNodePackage {
    name = "postcss-modules-scope-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-modules-scope/-/postcss-modules-scope-1.0.0.tgz";
      name = "postcss-modules-scope-1.0.0.tgz";
      sha1 = "d17baef9b34512d06a316492cb3ea7cce9072255";
    };
    deps = {
      "css-selector-tokenizer-0.5.4" = self.by-version."css-selector-tokenizer"."0.5.4";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-modules-values"."^1.1.0" =
    self.by-version."postcss-modules-values"."1.1.1";
  by-version."postcss-modules-values"."1.1.1" = self.buildNodePackage {
    name = "postcss-modules-values-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-modules-values/-/postcss-modules-values-1.1.1.tgz";
      name = "postcss-modules-values-1.1.1.tgz";
      sha1 = "5231d283318e2054f65d600430d2c74129b5969b";
    };
    deps = {
      "icss-replace-symbols-1.0.2" = self.by-version."icss-replace-symbols"."1.0.2";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-normalize-charset"."^1.1.0" =
    self.by-version."postcss-normalize-charset"."1.1.0";
  by-version."postcss-normalize-charset"."1.1.0" = self.buildNodePackage {
    name = "postcss-normalize-charset-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-normalize-charset/-/postcss-normalize-charset-1.1.0.tgz";
      name = "postcss-normalize-charset-1.1.0.tgz";
      sha1 = "2fbd30e12248c442981d31ea2484d46fd0628970";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-normalize-url"."^3.0.4" =
    self.by-version."postcss-normalize-url"."3.0.5";
  by-version."postcss-normalize-url"."3.0.5" = self.buildNodePackage {
    name = "postcss-normalize-url-3.0.5";
    version = "3.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-normalize-url/-/postcss-normalize-url-3.0.5.tgz";
      name = "postcss-normalize-url-3.0.5.tgz";
      sha1 = "fbabf11283953f36bea7f7a44c2c3b1980790d36";
    };
    deps = {
      "is-absolute-url-2.0.0" = self.by-version."is-absolute-url"."2.0.0";
      "normalize-url-1.4.0" = self.by-version."normalize-url"."1.4.0";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-ordered-values"."^2.0.2" =
    self.by-version."postcss-ordered-values"."2.0.2";
  by-version."postcss-ordered-values"."2.0.2" = self.buildNodePackage {
    name = "postcss-ordered-values-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-ordered-values/-/postcss-ordered-values-2.0.2.tgz";
      name = "postcss-ordered-values-2.0.2.tgz";
      sha1 = "fff3c4e79cab5ebf38450657e36f3617a502354a";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-reduce-idents"."^2.2.1" =
    self.by-version."postcss-reduce-idents"."2.2.1";
  by-version."postcss-reduce-idents"."2.2.1" = self.buildNodePackage {
    name = "postcss-reduce-idents-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-reduce-idents/-/postcss-reduce-idents-2.2.1.tgz";
      name = "postcss-reduce-idents-2.2.1.tgz";
      sha1 = "ecd82f719fb40eda22b0b6d41c3fc2dac6ad6a9b";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-reduce-transforms"."^1.0.3" =
    self.by-version."postcss-reduce-transforms"."1.0.3";
  by-version."postcss-reduce-transforms"."1.0.3" = self.buildNodePackage {
    name = "postcss-reduce-transforms-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-reduce-transforms/-/postcss-reduce-transforms-1.0.3.tgz";
      name = "postcss-reduce-transforms-1.0.3.tgz";
      sha1 = "fc193e435a973c10f9801c74700a830f79643343";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-selector-parser"."^1.3.0" =
    self.by-version."postcss-selector-parser"."1.3.0";
  by-version."postcss-selector-parser"."1.3.0" = self.buildNodePackage {
    name = "postcss-selector-parser-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-selector-parser/-/postcss-selector-parser-1.3.0.tgz";
      name = "postcss-selector-parser-1.3.0.tgz";
      sha1 = "3df60a87fd313869110f0ee4b09712d0703fa885";
    };
    deps = {
      "flatten-0.0.1" = self.by-version."flatten"."0.0.1";
      "indexes-of-1.0.1" = self.by-version."indexes-of"."1.0.1";
      "uniq-1.0.1" = self.by-version."uniq"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-svgo"."^2.0.4" =
    self.by-version."postcss-svgo"."2.1.1";
  by-version."postcss-svgo"."2.1.1" = self.buildNodePackage {
    name = "postcss-svgo-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-svgo/-/postcss-svgo-2.1.1.tgz";
      name = "postcss-svgo-2.1.1.tgz";
      sha1 = "dac5b375d092789d64bbfcabe9dc7486b8aa8ecd";
    };
    deps = {
      "is-svg-1.1.1" = self.by-version."is-svg"."1.1.1";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "postcss-value-parser-3.2.3" = self.by-version."postcss-value-parser"."3.2.3";
      "svgo-0.6.1" = self.by-version."svgo"."0.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-unique-selectors"."^2.0.1" =
    self.by-version."postcss-unique-selectors"."2.0.1";
  by-version."postcss-unique-selectors"."2.0.1" = self.buildNodePackage {
    name = "postcss-unique-selectors-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-unique-selectors/-/postcss-unique-selectors-2.0.1.tgz";
      name = "postcss-unique-selectors-2.0.1.tgz";
      sha1 = "6cdef52fe176088545aae670dfe7d14604be0931";
    };
    deps = {
      "alphanum-sort-1.0.2" = self.by-version."alphanum-sort"."1.0.2";
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "uniqs-2.0.0" = self.by-version."uniqs"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-value-parser"."^3.0.1" =
    self.by-version."postcss-value-parser"."3.2.3";
  by-version."postcss-value-parser"."3.2.3" = self.buildNodePackage {
    name = "postcss-value-parser-3.2.3";
    version = "3.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-value-parser/-/postcss-value-parser-3.2.3.tgz";
      name = "postcss-value-parser-3.2.3.tgz";
      sha1 = "216e7247bbd26b7668ab9eebd08de6b96eb2b453";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-value-parser"."^3.0.2" =
    self.by-version."postcss-value-parser"."3.2.3";
  by-spec."postcss-value-parser"."^3.1.1" =
    self.by-version."postcss-value-parser"."3.2.3";
  by-spec."postcss-value-parser"."^3.1.3" =
    self.by-version."postcss-value-parser"."3.2.3";
  by-spec."postcss-value-parser"."^3.2.3" =
    self.by-version."postcss-value-parser"."3.2.3";
  by-spec."postcss-zindex"."^2.0.0" =
    self.by-version."postcss-zindex"."2.0.1";
  by-version."postcss-zindex"."2.0.1" = self.buildNodePackage {
    name = "postcss-zindex-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-zindex/-/postcss-zindex-2.0.1.tgz";
      name = "postcss-zindex-2.0.1.tgz";
      sha1 = "1c9b22269691a87557f7565dfe6e3b8473e530bc";
    };
    deps = {
      "postcss-5.0.14" = self.by-version."postcss"."5.0.14";
      "uniqs-2.0.0" = self.by-version."uniqs"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."prepend-http"."^1.0.0" =
    self.by-version."prepend-http"."1.0.3";
  by-version."prepend-http"."1.0.3" = self.buildNodePackage {
    name = "prepend-http-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/prepend-http/-/prepend-http-1.0.3.tgz";
      name = "prepend-http-1.0.3.tgz";
      sha1 = "4d0d2b6f9efcf1190c23931325b4f3a9dba84869";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."preserve"."^0.2.0" =
    self.by-version."preserve"."0.2.0";
  by-version."preserve"."0.2.0" = self.buildNodePackage {
    name = "preserve-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/preserve/-/preserve-0.2.0.tgz";
      name = "preserve-0.2.0.tgz";
      sha1 = "815ed1f6ebc65926f865b310c0713bcb3315ce4b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pretty-error"."^2.0.0" =
    self.by-version."pretty-error"."2.0.0";
  by-version."pretty-error"."2.0.0" = self.buildNodePackage {
    name = "pretty-error-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pretty-error/-/pretty-error-2.0.0.tgz";
      name = "pretty-error-2.0.0.tgz";
      sha1 = "e5f4dd401a652cf46226707c10ffa124e433e83f";
    };
    deps = {
      "utila-0.4.0" = self.by-version."utila"."0.4.0";
      "renderkid-2.0.0" = self.by-version."renderkid"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."process"."^0.11.0" =
    self.by-version."process"."0.11.2";
  by-version."process"."0.11.2" = self.buildNodePackage {
    name = "process-0.11.2";
    version = "0.11.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/process/-/process-0.11.2.tgz";
      name = "process-0.11.2.tgz";
      sha1 = "8a58d1d12c573f3f890da9848a4fe8e16ca977b2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."process"."~0.11.0" =
    self.by-version."process"."0.11.2";
  by-spec."process-nextick-args"."~1.0.6" =
    self.by-version."process-nextick-args"."1.0.6";
  by-version."process-nextick-args"."1.0.6" = self.buildNodePackage {
    name = "process-nextick-args-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/process-nextick-args/-/process-nextick-args-1.0.6.tgz";
      name = "process-nextick-args-1.0.6.tgz";
      sha1 = "0f96b001cea90b12592ce566edb97ec11e69bd05";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."progress"."1.1.8" =
    self.by-version."progress"."1.1.8";
  by-version."progress"."1.1.8" = self.buildNodePackage {
    name = "progress-1.1.8";
    version = "1.1.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/progress/-/progress-1.1.8.tgz";
      name = "progress-1.1.8.tgz";
      sha1 = "e260c78f6161cdd9b0e56cc3e0a85de17c7a57be";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."promise"."^6.0.1" =
    self.by-version."promise"."6.1.0";
  by-version."promise"."6.1.0" = self.buildNodePackage {
    name = "promise-6.1.0";
    version = "6.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/promise/-/promise-6.1.0.tgz";
      name = "promise-6.1.0.tgz";
      sha1 = "2ce729f6b94b45c26891ad0602c5c90e04c6eef6";
    };
    deps = {
      "asap-1.0.0" = self.by-version."asap"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."promise"."^7.0.3" =
    self.by-version."promise"."7.1.1";
  by-version."promise"."7.1.1" = self.buildNodePackage {
    name = "promise-7.1.1";
    version = "7.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/promise/-/promise-7.1.1.tgz";
      name = "promise-7.1.1.tgz";
      sha1 = "489654c692616b8aa55b0724fa809bb7db49c5bf";
    };
    deps = {
      "asap-2.0.3" = self.by-version."asap"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."proto-list"."~1.2.1" =
    self.by-version."proto-list"."1.2.4";
  by-version."proto-list"."1.2.4" = self.buildNodePackage {
    name = "proto-list-1.2.4";
    version = "1.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/proto-list/-/proto-list-1.2.4.tgz";
      name = "proto-list-1.2.4.tgz";
      sha1 = "212d5bfe1318306a420f6402b8e26ff39647a849";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."proxy-addr"."~1.0.10" =
    self.by-version."proxy-addr"."1.0.10";
  by-version."proxy-addr"."1.0.10" = self.buildNodePackage {
    name = "proxy-addr-1.0.10";
    version = "1.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/proxy-addr/-/proxy-addr-1.0.10.tgz";
      name = "proxy-addr-1.0.10.tgz";
      sha1 = "0d40a82f801fc355567d2ecb65efe3f077f121c5";
    };
    deps = {
      "forwarded-0.1.0" = self.by-version."forwarded"."0.1.0";
      "ipaddr.js-1.0.5" = self.by-version."ipaddr.js"."1.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."prr"."~0.0.0" =
    self.by-version."prr"."0.0.0";
  by-version."prr"."0.0.0" = self.buildNodePackage {
    name = "prr-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/prr/-/prr-0.0.0.tgz";
      name = "prr-0.0.0.tgz";
      sha1 = "1a84b85908325501411853d0081ee3fa86e2926a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pseudomap"."^1.0.1" =
    self.by-version."pseudomap"."1.0.2";
  by-version."pseudomap"."1.0.2" = self.buildNodePackage {
    name = "pseudomap-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pseudomap/-/pseudomap-1.0.2.tgz";
      name = "pseudomap-1.0.2.tgz";
      sha1 = "f052a28da70e618917ef0a8ac34c1ae5a68286b3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."punycode"."1.3.2" =
    self.by-version."punycode"."1.3.2";
  by-version."punycode"."1.3.2" = self.buildNodePackage {
    name = "punycode-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/punycode/-/punycode-1.3.2.tgz";
      name = "punycode-1.3.2.tgz";
      sha1 = "9653a036fb7c1ee42342f2325cceefea3926c48d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."punycode"."^1.2.4" =
    self.by-version."punycode"."1.4.0";
  by-version."punycode"."1.4.0" = self.buildNodePackage {
    name = "punycode-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/punycode/-/punycode-1.4.0.tgz";
      name = "punycode-1.4.0.tgz";
      sha1 = "3f879ea03f24c718d4d4b7e47de1fb51cf6c3e33";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."purecss"."^0.6.0" =
    self.by-version."purecss"."0.6.0";
  by-version."purecss"."0.6.0" = self.buildNodePackage {
    name = "purecss-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/purecss/-/purecss-0.6.0.tgz";
      name = "purecss-0.6.0.tgz";
      sha1 = "3e971c79199aa2ab1414dec90c6c15ebe2fc9c79";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "purecss" = self.by-version."purecss"."0.6.0";
  by-spec."q"."^1.1.2" =
    self.by-version."q"."1.4.1";
  by-version."q"."1.4.1" = self.buildNodePackage {
    name = "q-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/q/-/q-1.4.1.tgz";
      name = "q-1.4.1.tgz";
      sha1 = "55705bcd93c5f3673530c2c2cbc0c2b3addc286e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."2.3.3" =
    self.by-version."qs"."2.3.3";
  by-version."qs"."2.3.3" = self.buildNodePackage {
    name = "qs-2.3.3";
    version = "2.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-2.3.3.tgz";
      name = "qs-2.3.3.tgz";
      sha1 = "e9e85adbe75da0bbe4c8e0476a086290f863b404";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."4.0.0" =
    self.by-version."qs"."4.0.0";
  by-version."qs"."4.0.0" = self.buildNodePackage {
    name = "qs-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-4.0.0.tgz";
      name = "qs-4.0.0.tgz";
      sha1 = "c31d9b74ec27df75e543a86c78728ed8d4623607";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."5.2.0" =
    self.by-version."qs"."5.2.0";
  by-version."qs"."5.2.0" = self.buildNodePackage {
    name = "qs-5.2.0";
    version = "5.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-5.2.0.tgz";
      name = "qs-5.2.0.tgz";
      sha1 = "a9f31142af468cb72b25b30136ba2456834916be";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."~1.2.0" =
    self.by-version."qs"."1.2.2";
  by-version."qs"."1.2.2" = self.buildNodePackage {
    name = "qs-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-1.2.2.tgz";
      name = "qs-1.2.2.tgz";
      sha1 = "19b57ff24dc2a99ce1f8bdf6afcda59f8ef61f88";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."~5.2.0" =
    self.by-version."qs"."5.2.0";
  by-spec."query-string"."^3.0.0" =
    self.by-version."query-string"."3.0.0";
  by-version."query-string"."3.0.0" = self.buildNodePackage {
    name = "query-string-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/query-string/-/query-string-3.0.0.tgz";
      name = "query-string-3.0.0.tgz";
      sha1 = "02fd306f0432040b91b11063f9404fe1bbd4ba7b";
    };
    deps = {
      "strict-uri-encode-1.1.0" = self.by-version."strict-uri-encode"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."querystring"."0.2.0" =
    self.by-version."querystring"."0.2.0";
  by-version."querystring"."0.2.0" = self.buildNodePackage {
    name = "querystring-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/querystring/-/querystring-0.2.0.tgz";
      name = "querystring-0.2.0.tgz";
      sha1 = "b209849203bb25df820da756e747005878521620";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."querystring-es3"."~0.2.0" =
    self.by-version."querystring-es3"."0.2.1";
  by-version."querystring-es3"."0.2.1" = self.buildNodePackage {
    name = "querystring-es3-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/querystring-es3/-/querystring-es3-0.2.1.tgz";
      name = "querystring-es3-0.2.1.tgz";
      sha1 = "9ec61f79049875707d69414596fd907a4d711e73";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."querystringify"."0.0.x" =
    self.by-version."querystringify"."0.0.3";
  by-version."querystringify"."0.0.3" = self.buildNodePackage {
    name = "querystringify-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/querystringify/-/querystringify-0.0.3.tgz";
      name = "querystringify-0.0.3.tgz";
      sha1 = "0c9d36fbf8c7a4f71eb370857763577a63335be7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."randomatic"."^1.1.3" =
    self.by-version."randomatic"."1.1.5";
  by-version."randomatic"."1.1.5" = self.buildNodePackage {
    name = "randomatic-1.1.5";
    version = "1.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/randomatic/-/randomatic-1.1.5.tgz";
      name = "randomatic-1.1.5.tgz";
      sha1 = "5e9ef5f2d573c67bd2b8124ae90b5156e457840b";
    };
    deps = {
      "is-number-2.1.0" = self.by-version."is-number"."2.1.0";
      "kind-of-3.0.2" = self.by-version."kind-of"."3.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."range-parser"."~1.0.3" =
    self.by-version."range-parser"."1.0.3";
  by-version."range-parser"."1.0.3" = self.buildNodePackage {
    name = "range-parser-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/range-parser/-/range-parser-1.0.3.tgz";
      name = "range-parser-1.0.3.tgz";
      sha1 = "6872823535c692e2c2a0103826afd82c2e0ff175";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."raw-body"."~2.1.5" =
    self.by-version."raw-body"."2.1.5";
  by-version."raw-body"."2.1.5" = self.buildNodePackage {
    name = "raw-body-2.1.5";
    version = "2.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/raw-body/-/raw-body-2.1.5.tgz";
      name = "raw-body-2.1.5.tgz";
      sha1 = "8be8f09ddefd0d72ad99d883ab7f0cc350420956";
    };
    deps = {
      "bytes-2.2.0" = self.by-version."bytes"."2.2.0";
      "iconv-lite-0.4.13" = self.by-version."iconv-lite"."0.4.13";
      "unpipe-1.0.0" = self.by-version."unpipe"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rc"."~1.1.0" =
    self.by-version."rc"."1.1.6";
  by-version."rc"."1.1.6" = self.buildNodePackage {
    name = "rc-1.1.6";
    version = "1.1.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rc/-/rc-1.1.6.tgz";
      name = "rc-1.1.6.tgz";
      sha1 = "43651b76b6ae53b5c802f1151fa3fc3b059969c9";
    };
    deps = {
      "deep-extend-0.4.1" = self.by-version."deep-extend"."0.4.1";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "strip-json-comments-1.0.4" = self.by-version."strip-json-comments"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react".">=0.11.0 || ^0.14.0-rc" =
    self.by-version."react"."0.14.6";
  by-version."react"."0.14.6" = self.buildNodePackage {
    name = "react-0.14.6";
    version = "0.14.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react/-/react-0.14.6.tgz";
      name = "react-0.14.6.tgz";
      sha1 = "2a57c2cf8747b483759ad8de0fa47fb0c5cf5c6a";
    };
    deps = {
      "envify-3.4.0" = self.by-version."envify"."3.4.0";
      "fbjs-0.6.1" = self.by-version."fbjs"."0.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react"."^0.14.0" =
    self.by-version."react"."0.14.6";
  by-spec."react"."^0.14.6" =
    self.by-version."react"."0.14.6";
  "react" = self.by-version."react"."0.14.6";
  by-spec."react-dom"."^0.14.0" =
    self.by-version."react-dom"."0.14.6";
  by-version."react-dom"."0.14.6" = self.buildNodePackage {
    name = "react-dom-0.14.6";
    version = "0.14.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-dom/-/react-dom-0.14.6.tgz";
      name = "react-dom-0.14.6.tgz";
      sha1 = "46d4e3243884f277e89ce8759131e8a16ac23e65";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react"."0.14.6"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-dom"."^0.14.6" =
    self.by-version."react-dom"."0.14.6";
  "react-dom" = self.by-version."react-dom"."0.14.6";
  by-spec."react-hot-api"."^0.4.5" =
    self.by-version."react-hot-api"."0.4.7";
  by-version."react-hot-api"."0.4.7" = self.buildNodePackage {
    name = "react-hot-api-0.4.7";
    version = "0.4.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-hot-api/-/react-hot-api-0.4.7.tgz";
      name = "react-hot-api-0.4.7.tgz";
      sha1 = "a7e22a56d252e11abd9366b61264cf4492c58171";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react"."0.14.6"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-hot-loader"."^1.3.0" =
    self.by-version."react-hot-loader"."1.3.0";
  by-version."react-hot-loader"."1.3.0" = self.buildNodePackage {
    name = "react-hot-loader-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-hot-loader/-/react-hot-loader-1.3.0.tgz";
      name = "react-hot-loader-1.3.0.tgz";
      sha1 = "7701658d02108b5bbc407e200dde591cb7a6ed69";
    };
    deps = {
      "react-hot-api-0.4.7" = self.by-version."react-hot-api"."0.4.7";
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
      "react-0.14.6" = self.by-version."react"."0.14.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "react-hot-loader" = self.by-version."react-hot-loader"."1.3.0";
  by-spec."react-lazy-cache"."^3.0.1" =
    self.by-version."react-lazy-cache"."3.0.1";
  by-version."react-lazy-cache"."3.0.1" = self.buildNodePackage {
    name = "react-lazy-cache-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-lazy-cache/-/react-lazy-cache-3.0.1.tgz";
      name = "react-lazy-cache-3.0.1.tgz";
      sha1 = "0dc64d38df1767ef77678c5c94190064cb11b0cd";
    };
    deps = {
      "deep-equal-1.0.1" = self.by-version."deep-equal"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-leaflet"."^0.10.0" =
    self.by-version."react-leaflet"."0.10.0";
  by-version."react-leaflet"."0.10.0" = self.buildNodePackage {
    name = "react-leaflet-0.10.0";
    version = "0.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-leaflet/-/react-leaflet-0.10.0.tgz";
      name = "react-leaflet-0.10.0.tgz";
      sha1 = "018c75026f8366ac348ea6fbb520c47b40eace3e";
    };
    deps = {
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."leaflet"."0.7.7"
      self.by-version."react"."0.14.6"
      self.by-version."react-dom"."0.14.6"];
    os = [ ];
    cpu = [ ];
  };
  "react-leaflet" = self.by-version."react-leaflet"."0.10.0";
  by-spec."react-pure-render"."^1.0.2" =
    self.by-version."react-pure-render"."1.0.2";
  by-version."react-pure-render"."1.0.2" = self.buildNodePackage {
    name = "react-pure-render-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-pure-render/-/react-pure-render-1.0.2.tgz";
      name = "react-pure-render-1.0.2.tgz";
      sha1 = "9d8a928c7f2c37513c2d064e57b3e3c356e9fabb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "react-pure-render" = self.by-version."react-pure-render"."1.0.2";
  by-spec."react-redux"."^3.0.0 || ^4.0.0" =
    self.by-version."react-redux"."4.0.6";
  by-version."react-redux"."4.0.6" = self.buildNodePackage {
    name = "react-redux-4.0.6";
    version = "4.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-redux/-/react-redux-4.0.6.tgz";
      name = "react-redux-4.0.6.tgz";
      sha1 = "083ce9eb632cf73a5eb9cb28df77147a640e6245";
    };
    deps = {
      "hoist-non-react-statics-1.0.3" = self.by-version."hoist-non-react-statics"."1.0.3";
      "invariant-2.2.0" = self.by-version."invariant"."2.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react"."0.14.6"
      self.by-version."redux"."3.0.6"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-redux"."^4.0.6" =
    self.by-version."react-redux"."4.0.6";
  "react-redux" = self.by-version."react-redux"."4.0.6";
  by-spec."read-pkg"."^1.0.0" =
    self.by-version."read-pkg"."1.1.0";
  by-version."read-pkg"."1.1.0" = self.buildNodePackage {
    name = "read-pkg-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/read-pkg/-/read-pkg-1.1.0.tgz";
      name = "read-pkg-1.1.0.tgz";
      sha1 = "f5ffaa5ecd29cb31c0474bca7d756b6bb29e3f28";
    };
    deps = {
      "load-json-file-1.1.0" = self.by-version."load-json-file"."1.1.0";
      "normalize-package-data-2.3.5" = self.by-version."normalize-package-data"."2.3.5";
      "path-type-1.1.0" = self.by-version."path-type"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."read-pkg-up"."^1.0.1" =
    self.by-version."read-pkg-up"."1.0.1";
  by-version."read-pkg-up"."1.0.1" = self.buildNodePackage {
    name = "read-pkg-up-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/read-pkg-up/-/read-pkg-up-1.0.1.tgz";
      name = "read-pkg-up-1.0.1.tgz";
      sha1 = "9d63c13276c065918d57f002a57f40a1b643fb02";
    };
    deps = {
      "find-up-1.1.0" = self.by-version."find-up"."1.1.0";
      "read-pkg-1.1.0" = self.by-version."read-pkg"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."1.0" =
    self.by-version."readable-stream"."1.0.33";
  by-version."readable-stream"."1.0.33" = self.buildNodePackage {
    name = "readable-stream-1.0.33";
    version = "1.0.33";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.0.33.tgz";
      name = "readable-stream-1.0.33.tgz";
      sha1 = "3a360dd66c1b1d7fd4705389860eda1d0f61126c";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."1.0.27-1" =
    self.by-version."readable-stream"."1.0.27-1";
  by-version."readable-stream"."1.0.27-1" = self.buildNodePackage {
    name = "readable-stream-1.0.27-1";
    version = "1.0.27-1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.0.27-1.tgz";
      name = "readable-stream-1.0.27-1.tgz";
      sha1 = "6b67983c20357cefd07f0165001a16d710d91078";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^1.0.27-1" =
    self.by-version."readable-stream"."1.1.13";
  by-version."readable-stream"."1.1.13" = self.buildNodePackage {
    name = "readable-stream-1.1.13";
    version = "1.1.13";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.1.13.tgz";
      name = "readable-stream-1.1.13.tgz";
      sha1 = "f6eef764f514c89e2b9e23146a75ba106756d23e";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^1.1.13" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^2.0.0 || ^1.1.13" =
    self.by-version."readable-stream"."2.0.5";
  by-version."readable-stream"."2.0.5" = self.buildNodePackage {
    name = "readable-stream-2.0.5";
    version = "2.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-2.0.5.tgz";
      name = "readable-stream-2.0.5.tgz";
      sha1 = "a2426f8dcd4551c77a33f96edf2886a23c829669";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "process-nextick-args-1.0.6" = self.by-version."process-nextick-args"."1.0.6";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "util-deprecate-1.0.2" = self.by-version."util-deprecate"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^2.0.1" =
    self.by-version."readable-stream"."2.0.5";
  by-spec."readable-stream"."^2.0.2" =
    self.by-version."readable-stream"."2.0.5";
  by-spec."readable-stream"."~1.0.2" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.26" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~2.0.0" =
    self.by-version."readable-stream"."2.0.5";
  by-spec."readable-stream"."~2.0.4" =
    self.by-version."readable-stream"."2.0.5";
  by-spec."readable-stream"."~2.0.5" =
    self.by-version."readable-stream"."2.0.5";
  by-spec."readdirp"."^2.0.0" =
    self.by-version."readdirp"."2.0.0";
  by-version."readdirp"."2.0.0" = self.buildNodePackage {
    name = "readdirp-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readdirp/-/readdirp-2.0.0.tgz";
      name = "readdirp-2.0.0.tgz";
      sha1 = "cc09ba5d12d8feb864bc75f6e2ebc137060cbd82";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "readable-stream-2.0.5" = self.by-version."readable-stream"."2.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."redent"."^1.0.0" =
    self.by-version."redent"."1.0.0";
  by-version."redent"."1.0.0" = self.buildNodePackage {
    name = "redent-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redent/-/redent-1.0.0.tgz";
      name = "redent-1.0.0.tgz";
      sha1 = "cf916ab1fd5f1f16dfb20822dd6ec7f730c2afde";
    };
    deps = {
      "indent-string-2.1.0" = self.by-version."indent-string"."2.1.0";
      "strip-indent-1.0.1" = self.by-version."strip-indent"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."reduce-component"."1.0.1" =
    self.by-version."reduce-component"."1.0.1";
  by-version."reduce-component"."1.0.1" = self.buildNodePackage {
    name = "reduce-component-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/reduce-component/-/reduce-component-1.0.1.tgz";
      name = "reduce-component-1.0.1.tgz";
      sha1 = "e0c93542c574521bea13df0f9488ed82ab77c5da";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."reduce-css-calc"."^1.2.0" =
    self.by-version."reduce-css-calc"."1.2.0";
  by-version."reduce-css-calc"."1.2.0" = self.buildNodePackage {
    name = "reduce-css-calc-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/reduce-css-calc/-/reduce-css-calc-1.2.0.tgz";
      name = "reduce-css-calc-1.2.0.tgz";
      sha1 = "e191e362e93da4c0f0f992dea12932a2e10db191";
    };
    deps = {
      "balanced-match-0.1.0" = self.by-version."balanced-match"."0.1.0";
      "reduce-function-call-1.0.1" = self.by-version."reduce-function-call"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."reduce-function-call"."^1.0.1" =
    self.by-version."reduce-function-call"."1.0.1";
  by-version."reduce-function-call"."1.0.1" = self.buildNodePackage {
    name = "reduce-function-call-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/reduce-function-call/-/reduce-function-call-1.0.1.tgz";
      name = "reduce-function-call-1.0.1.tgz";
      sha1 = "fa02e126e695824263cab91d3a5b0fdc1dd27a9a";
    };
    deps = {
      "balanced-match-0.1.0" = self.by-version."balanced-match"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."redux"."^2.0.0 || ^3.0.0" =
    self.by-version."redux"."3.0.6";
  by-version."redux"."3.0.6" = self.buildNodePackage {
    name = "redux-3.0.6";
    version = "3.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redux/-/redux-3.0.6.tgz";
      name = "redux-3.0.6.tgz";
      sha1 = "f02db603a8996776f68ef38f571c25705c9ba325";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."redux"."^3.0.0" =
    self.by-version."redux"."3.0.6";
  by-spec."redux"."^3.0.6" =
    self.by-version."redux"."3.0.6";
  "redux" = self.by-version."redux"."3.0.6";
  by-spec."redux-form"."^4.1.5" =
    self.by-version."redux-form"."4.1.5";
  by-version."redux-form"."4.1.5" = self.buildNodePackage {
    name = "redux-form-4.1.5";
    version = "4.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redux-form/-/redux-form-4.1.5.tgz";
      name = "redux-form-4.1.5.tgz";
      sha1 = "d5855fc32ce1a242ac18f9852138f0fb224b8d96";
    };
    deps = {
      "deep-equal-1.0.1" = self.by-version."deep-equal"."1.0.1";
      "hoist-non-react-statics-1.0.3" = self.by-version."hoist-non-react-statics"."1.0.3";
      "is-promise-2.1.0" = self.by-version."is-promise"."2.1.0";
      "react-lazy-cache-3.0.1" = self.by-version."react-lazy-cache"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react-redux"."4.0.6"
      self.by-version."redux"."3.0.6"];
    os = [ ];
    cpu = [ ];
  };
  "redux-form" = self.by-version."redux-form"."4.1.5";
  by-spec."redux-logger"."^2.4.0" =
    self.by-version."redux-logger"."2.4.0";
  by-version."redux-logger"."2.4.0" = self.buildNodePackage {
    name = "redux-logger-2.4.0";
    version = "2.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redux-logger/-/redux-logger-2.4.0.tgz";
      name = "redux-logger-2.4.0.tgz";
      sha1 = "2586fcfc85cd0376a1494f23576d9d7f7d4fb3bd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "redux-logger" = self.by-version."redux-logger"."2.4.0";
  by-spec."redux-thunk"."^1.0.3" =
    self.by-version."redux-thunk"."1.0.3";
  by-version."redux-thunk"."1.0.3" = self.buildNodePackage {
    name = "redux-thunk-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redux-thunk/-/redux-thunk-1.0.3.tgz";
      name = "redux-thunk-1.0.3.tgz";
      sha1 = "778aa0099eea0595031ab6b39165f6670d8d26bd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "redux-thunk" = self.by-version."redux-thunk"."1.0.3";
  by-spec."regex-cache"."^0.4.2" =
    self.by-version."regex-cache"."0.4.2";
  by-version."regex-cache"."0.4.2" = self.buildNodePackage {
    name = "regex-cache-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/regex-cache/-/regex-cache-0.4.2.tgz";
      name = "regex-cache-0.4.2.tgz";
      sha1 = "6e4f89c266bc03c33fd129c062184687f4663487";
    };
    deps = {
      "is-equal-shallow-0.1.3" = self.by-version."is-equal-shallow"."0.1.3";
      "is-primitive-2.0.0" = self.by-version."is-primitive"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."relateurl"."0.2.x" =
    self.by-version."relateurl"."0.2.6";
  by-version."relateurl"."0.2.6" = self.buildNodePackage {
    name = "relateurl-0.2.6";
    version = "0.2.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/relateurl/-/relateurl-0.2.6.tgz";
      name = "relateurl-0.2.6.tgz";
      sha1 = "9fc22635971091c5ea5133c736e3468e79e2aaf9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."renderkid"."~2.0.0" =
    self.by-version."renderkid"."2.0.0";
  by-version."renderkid"."2.0.0" = self.buildNodePackage {
    name = "renderkid-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/renderkid/-/renderkid-2.0.0.tgz";
      name = "renderkid-2.0.0.tgz";
      sha1 = "1859753e7a5adbf35443aba0d4e4579e78abee85";
    };
    deps = {
      "css-select-1.2.0" = self.by-version."css-select"."1.2.0";
      "dom-converter-0.1.4" = self.by-version."dom-converter"."0.1.4";
      "htmlparser2-3.3.0" = self.by-version."htmlparser2"."3.3.0";
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
      "utila-0.3.3" = self.by-version."utila"."0.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeat-element"."^1.1.2" =
    self.by-version."repeat-element"."1.1.2";
  by-version."repeat-element"."1.1.2" = self.buildNodePackage {
    name = "repeat-element-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeat-element/-/repeat-element-1.1.2.tgz";
      name = "repeat-element-1.1.2.tgz";
      sha1 = "ef089a178d1483baae4d93eb98b4f9e4e11d990a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeat-string"."^0.2.2" =
    self.by-version."repeat-string"."0.2.2";
  by-version."repeat-string"."0.2.2" = self.buildNodePackage {
    name = "repeat-string-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeat-string/-/repeat-string-0.2.2.tgz";
      name = "repeat-string-0.2.2.tgz";
      sha1 = "c7a8d3236068362059a7e4651fc6884e8b1fb4ae";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeat-string"."^1.5.2" =
    self.by-version."repeat-string"."1.5.2";
  by-version."repeat-string"."1.5.2" = self.buildNodePackage {
    name = "repeat-string-1.5.2";
    version = "1.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeat-string/-/repeat-string-1.5.2.tgz";
      name = "repeat-string-1.5.2.tgz";
      sha1 = "21065f70727ad053a0dd5e957ac9e00c7560d90a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeating"."^2.0.0" =
    self.by-version."repeating"."2.0.0";
  by-version."repeating"."2.0.0" = self.buildNodePackage {
    name = "repeating-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeating/-/repeating-2.0.0.tgz";
      name = "repeating-2.0.0.tgz";
      sha1 = "fd27d6d264d18fbebfaa56553dd7b82535a5034e";
    };
    deps = {
      "is-finite-1.0.1" = self.by-version."is-finite"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2" =
    self.by-version."request"."2.67.0";
  by-version."request"."2.67.0" = self.buildNodePackage {
    name = "request-2.67.0";
    version = "2.67.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.67.0.tgz";
      name = "request-2.67.0.tgz";
      sha1 = "8af74780e2bf11ea0ae9aa965c11f11afd272742";
    };
    deps = {
      "bl-1.0.1" = self.by-version."bl"."1.0.1";
      "caseless-0.11.0" = self.by-version."caseless"."0.11.0";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-1.0.0-rc3" = self.by-version."form-data"."1.0.0-rc3";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.1.9" = self.by-version."mime-types"."2.1.9";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
      "qs-5.2.0" = self.by-version."qs"."5.2.0";
      "tunnel-agent-0.4.2" = self.by-version."tunnel-agent"."0.4.2";
      "tough-cookie-2.2.1" = self.by-version."tough-cookie"."2.2.1";
      "http-signature-1.1.0" = self.by-version."http-signature"."1.1.0";
      "oauth-sign-0.8.0" = self.by-version."oauth-sign"."0.8.0";
      "hawk-3.1.3" = self.by-version."hawk"."3.1.3";
      "aws-sign2-0.6.0" = self.by-version."aws-sign2"."0.6.0";
      "stringstream-0.0.5" = self.by-version."stringstream"."0.0.5";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "is-typedarray-1.0.0" = self.by-version."is-typedarray"."1.0.0";
      "har-validator-2.0.6" = self.by-version."har-validator"."2.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2.42.0" =
    self.by-version."request"."2.42.0";
  by-version."request"."2.42.0" = self.buildNodePackage {
    name = "request-2.42.0";
    version = "2.42.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.42.0.tgz";
      name = "request-2.42.0.tgz";
      sha1 = "572bd0148938564040ac7ab148b96423a063304a";
    };
    deps = {
      "bl-0.9.5" = self.by-version."bl"."0.9.5";
      "caseless-0.6.0" = self.by-version."caseless"."0.6.0";
      "forever-agent-0.5.2" = self.by-version."forever-agent"."0.5.2";
      "qs-1.2.2" = self.by-version."qs"."1.2.2";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-1.0.2" = self.by-version."mime-types"."1.0.2";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
      "tunnel-agent-0.4.2" = self.by-version."tunnel-agent"."0.4.2";
    };
    optionalDependencies = {
      "tough-cookie-2.2.1" = self.by-version."tough-cookie"."2.2.1";
      "form-data-0.1.4" = self.by-version."form-data"."0.1.4";
      "http-signature-0.10.1" = self.by-version."http-signature"."0.10.1";
      "oauth-sign-0.4.0" = self.by-version."oauth-sign"."0.4.0";
      "hawk-1.1.1" = self.by-version."hawk"."1.1.1";
      "aws-sign2-0.5.0" = self.by-version."aws-sign2"."0.5.0";
      "stringstream-0.0.5" = self.by-version."stringstream"."0.0.5";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2.x" =
    self.by-version."request"."2.67.0";
  by-spec."request"."^2.51.0" =
    self.by-version."request"."2.67.0";
  by-spec."request"."^2.61.0" =
    self.by-version."request"."2.67.0";
  by-spec."request-progress"."0.3.1" =
    self.by-version."request-progress"."0.3.1";
  by-version."request-progress"."0.3.1" = self.buildNodePackage {
    name = "request-progress-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request-progress/-/request-progress-0.3.1.tgz";
      name = "request-progress-0.3.1.tgz";
      sha1 = "0721c105d8a96ac6b2ce8b2c89ae2d5ecfcf6b3a";
    };
    deps = {
      "throttleit-0.0.2" = self.by-version."throttleit"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."requires-port"."1.0.x" =
    self.by-version."requires-port"."1.0.0";
  by-version."requires-port"."1.0.0" = self.buildNodePackage {
    name = "requires-port-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/requires-port/-/requires-port-1.0.0.tgz";
      name = "requires-port-1.0.0.tgz";
      sha1 = "925d2601d39ac485e091cf0da5c6e694dc3dcaff";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."requires-port"."1.x.x" =
    self.by-version."requires-port"."1.0.0";
  by-spec."resolve"."^0.6.3" =
    self.by-version."resolve"."0.6.3";
  by-version."resolve"."0.6.3" = self.buildNodePackage {
    name = "resolve-0.6.3";
    version = "0.6.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/resolve/-/resolve-0.6.3.tgz";
      name = "resolve-0.6.3.tgz";
      sha1 = "dd957982e7e736debdf53b58a4dd91754575dd46";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."right-align"."^0.1.1" =
    self.by-version."right-align"."0.1.3";
  by-version."right-align"."0.1.3" = self.buildNodePackage {
    name = "right-align-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/right-align/-/right-align-0.1.3.tgz";
      name = "right-align-0.1.3.tgz";
      sha1 = "61339b722fe6a3515689210d24e14c96148613ef";
    };
    deps = {
      "align-text-0.1.3" = self.by-version."align-text"."0.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."2" =
    self.by-version."rimraf"."2.5.1";
  by-version."rimraf"."2.5.1" = self.buildNodePackage {
    name = "rimraf-2.5.1";
    version = "2.5.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.5.1.tgz";
      name = "rimraf-2.5.1.tgz";
      sha1 = "52e1e946f3f9b9b0d5d8988ba3191aaf2a2dbd43";
    };
    deps = {
      "glob-6.0.4" = self.by-version."glob"."6.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."^2.2.8" =
    self.by-version."rimraf"."2.5.1";
  by-spec."rimraf"."^2.3.3" =
    self.by-version."rimraf"."2.5.1";
  by-spec."rimraf"."~2.4.4" =
    self.by-version."rimraf"."2.4.5";
  by-version."rimraf"."2.4.5" = self.buildNodePackage {
    name = "rimraf-2.4.5";
    version = "2.4.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.4.5.tgz";
      name = "rimraf-2.4.5.tgz";
      sha1 = "ee710ce5d93a8fdb856fb5ea8ff0e2d75934b2da";
    };
    deps = {
      "glob-6.0.4" = self.by-version."glob"."6.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."~2.5.0" =
    self.by-version."rimraf"."2.5.1";
  by-spec."ripemd160"."0.2.0" =
    self.by-version."ripemd160"."0.2.0";
  by-version."ripemd160"."0.2.0" = self.buildNodePackage {
    name = "ripemd160-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ripemd160/-/ripemd160-0.2.0.tgz";
      name = "ripemd160-0.2.0.tgz";
      sha1 = "2bf198bde167cacfa51c0a928e84b68bbe171fce";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sass-graph"."^2.0.1" =
    self.by-version."sass-graph"."2.0.1";
  by-version."sass-graph"."2.0.1" = self.buildNodePackage {
    name = "sass-graph-2.0.1";
    version = "2.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/sass-graph/-/sass-graph-2.0.1.tgz";
      name = "sass-graph-2.0.1.tgz";
      sha1 = "5cee7ce09f1feff0dee47391fadb99fc41aeb094";
    };
    deps = {
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "yargs-3.32.0" = self.by-version."yargs"."3.32.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sass-loader"."^3.1.2" =
    self.by-version."sass-loader"."3.1.2";
  by-version."sass-loader"."3.1.2" = self.buildNodePackage {
    name = "sass-loader-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sass-loader/-/sass-loader-3.1.2.tgz";
      name = "sass-loader-3.1.2.tgz";
      sha1 = "0ab5094a4c1e28948b4d56f2398f135797359f96";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."node-sass"."3.4.2"
      self.by-version."webpack"."1.12.12"];
    os = [ ];
    cpu = [ ];
  };
  "sass-loader" = self.by-version."sass-loader"."3.1.2";
  by-spec."sax"."0.5.x" =
    self.by-version."sax"."0.5.8";
  by-version."sax"."0.5.8" = self.buildNodePackage {
    name = "sax-0.5.8";
    version = "0.5.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sax/-/sax-0.5.8.tgz";
      name = "sax-0.5.8.tgz";
      sha1 = "d472db228eb331c2506b0e8c15524adb939d12c1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sax"."~1.1.4" =
    self.by-version."sax"."1.1.4";
  by-version."sax"."1.1.4" = self.buildNodePackage {
    name = "sax-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sax/-/sax-1.1.4.tgz";
      name = "sax-1.1.4.tgz";
      sha1 = "74b6d33c9ae1e001510f179a91168588f1aedaa9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."2 || 3 || 4" =
    self.by-version."semver"."4.3.6";
  by-version."semver"."4.3.6" = self.buildNodePackage {
    name = "semver-4.3.6";
    version = "4.3.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-4.3.6.tgz";
      name = "semver-4.3.6.tgz";
      sha1 = "300bc6e0e86374f7ba61068b5b1ecd57fc6532da";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."2 || 3 || 4 || 5" =
    self.by-version."semver"."5.1.0";
  by-version."semver"."5.1.0" = self.buildNodePackage {
    name = "semver-5.1.0";
    version = "5.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-5.1.0.tgz";
      name = "semver-5.1.0.tgz";
      sha1 = "85f2cf8550465c4df000cf7d86f6b054106ab9e5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."2.x || 3.x || 4 || 5" =
    self.by-version."semver"."5.1.0";
  by-spec."semver"."~4.3.3" =
    self.by-version."semver"."4.3.6";
  by-spec."semver"."~5.1.0" =
    self.by-version."semver"."5.1.0";
  by-spec."send"."0.13.1" =
    self.by-version."send"."0.13.1";
  by-version."send"."0.13.1" = self.buildNodePackage {
    name = "send-0.13.1";
    version = "0.13.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/send/-/send-0.13.1.tgz";
      name = "send-0.13.1.tgz";
      sha1 = "a30d5f4c82c8a9bae9ad00a1d9b1bdbe6f199ed7";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "destroy-1.0.4" = self.by-version."destroy"."1.0.4";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "range-parser-1.0.3" = self.by-version."range-parser"."1.0.3";
      "statuses-1.2.1" = self.by-version."statuses"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sentence-case"."^1.1.1" =
    self.by-version."sentence-case"."1.1.3";
  by-version."sentence-case"."1.1.3" = self.buildNodePackage {
    name = "sentence-case-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sentence-case/-/sentence-case-1.1.3.tgz";
      name = "sentence-case-1.1.3.tgz";
      sha1 = "8034aafc2145772d3abe1509aa42c9e1042dc139";
    };
    deps = {
      "lower-case-1.1.3" = self.by-version."lower-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sentence-case"."^1.1.2" =
    self.by-version."sentence-case"."1.1.3";
  by-spec."serve-index"."^1.7.2" =
    self.by-version."serve-index"."1.7.3";
  by-version."serve-index"."1.7.3" = self.buildNodePackage {
    name = "serve-index-1.7.3";
    version = "1.7.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-index/-/serve-index-1.7.3.tgz";
      name = "serve-index-1.7.3.tgz";
      sha1 = "7a057fc6ee28dc63f64566e5fa57b111a86aecd2";
    };
    deps = {
      "accepts-1.2.13" = self.by-version."accepts"."1.2.13";
      "batch-0.5.3" = self.by-version."batch"."0.5.3";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-types-2.1.9" = self.by-version."mime-types"."2.1.9";
      "parseurl-1.3.1" = self.by-version."parseurl"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."serve-static"."~1.10.2" =
    self.by-version."serve-static"."1.10.2";
  by-version."serve-static"."1.10.2" = self.buildNodePackage {
    name = "serve-static-1.10.2";
    version = "1.10.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-static/-/serve-static-1.10.2.tgz";
      name = "serve-static-1.10.2.tgz";
      sha1 = "feb800d0e722124dd0b00333160c16e9caa8bcb3";
    };
    deps = {
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "parseurl-1.3.1" = self.by-version."parseurl"."1.3.1";
      "send-0.13.1" = self.by-version."send"."0.13.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sha.js"."2.2.6" =
    self.by-version."sha.js"."2.2.6";
  by-version."sha.js"."2.2.6" = self.buildNodePackage {
    name = "sha.js-2.2.6";
    version = "2.2.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/sha.js/-/sha.js-2.2.6.tgz";
      name = "sha.js-2.2.6.tgz";
      sha1 = "17ddeddc5f722fb66501658895461977867315ba";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sigmund"."~1.0.0" =
    self.by-version."sigmund"."1.0.1";
  by-version."sigmund"."1.0.1" = self.buildNodePackage {
    name = "sigmund-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sigmund/-/sigmund-1.0.1.tgz";
      name = "sigmund-1.0.1.tgz";
      sha1 = "3ff21f198cad2175f9f3b781853fd94d0d19b590";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."signal-exit"."^2.1.2" =
    self.by-version."signal-exit"."2.1.2";
  by-version."signal-exit"."2.1.2" = self.buildNodePackage {
    name = "signal-exit-2.1.2";
    version = "2.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/signal-exit/-/signal-exit-2.1.2.tgz";
      name = "signal-exit-2.1.2.tgz";
      sha1 = "375879b1f92ebc3b334480d038dc546a6d558564";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."snake-case"."^1.1.0" =
    self.by-version."snake-case"."1.1.2";
  by-version."snake-case"."1.1.2" = self.buildNodePackage {
    name = "snake-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/snake-case/-/snake-case-1.1.2.tgz";
      name = "snake-case-1.1.2.tgz";
      sha1 = "0c2f25e305158d9a18d3d977066187fef8a5a66a";
    };
    deps = {
      "sentence-case-1.1.3" = self.by-version."sentence-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sntp"."0.2.x" =
    self.by-version."sntp"."0.2.4";
  by-version."sntp"."0.2.4" = self.buildNodePackage {
    name = "sntp-0.2.4";
    version = "0.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sntp/-/sntp-0.2.4.tgz";
      name = "sntp-0.2.4.tgz";
      sha1 = "fb885f18b0f3aad189f824862536bceeec750900";
    };
    deps = {
      "hoek-0.9.1" = self.by-version."hoek"."0.9.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sntp"."1.x.x" =
    self.by-version."sntp"."1.0.9";
  by-version."sntp"."1.0.9" = self.buildNodePackage {
    name = "sntp-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sntp/-/sntp-1.0.9.tgz";
      name = "sntp-1.0.9.tgz";
      sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io"."^1.4.0" =
    self.by-version."socket.io"."1.4.4";
  by-version."socket.io"."1.4.4" = self.buildNodePackage {
    name = "socket.io-1.4.4";
    version = "1.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io/-/socket.io-1.4.4.tgz";
      name = "socket.io-1.4.4.tgz";
      sha1 = "24b3e19ca15ee21cb7d9203d831f9b65a9f14bbd";
    };
    deps = {
      "engine.io-1.6.7" = self.by-version."engine.io"."1.6.7";
      "socket.io-parser-2.2.6" = self.by-version."socket.io-parser"."2.2.6";
      "socket.io-client-1.4.4" = self.by-version."socket.io-client"."1.4.4";
      "socket.io-adapter-0.4.0" = self.by-version."socket.io-adapter"."0.4.0";
      "has-binary-0.1.7" = self.by-version."has-binary"."0.1.7";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-adapter"."0.4.0" =
    self.by-version."socket.io-adapter"."0.4.0";
  by-version."socket.io-adapter"."0.4.0" = self.buildNodePackage {
    name = "socket.io-adapter-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-adapter/-/socket.io-adapter-0.4.0.tgz";
      name = "socket.io-adapter-0.4.0.tgz";
      sha1 = "fb9f82ab1aa65290bf72c3657955b930a991a24f";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "socket.io-parser-2.2.2" = self.by-version."socket.io-parser"."2.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-client"."1.4.4" =
    self.by-version."socket.io-client"."1.4.4";
  by-version."socket.io-client"."1.4.4" = self.buildNodePackage {
    name = "socket.io-client-1.4.4";
    version = "1.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-client/-/socket.io-client-1.4.4.tgz";
      name = "socket.io-client-1.4.4.tgz";
      sha1 = "ff0979bb9975826d5882d04a2c98aa75fa7f8c0d";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "engine.io-client-1.6.7" = self.by-version."engine.io-client"."1.6.7";
      "component-bind-1.0.0" = self.by-version."component-bind"."1.0.0";
      "component-emitter-1.2.0" = self.by-version."component-emitter"."1.2.0";
      "object-component-0.0.3" = self.by-version."object-component"."0.0.3";
      "socket.io-parser-2.2.5" = self.by-version."socket.io-parser"."2.2.5";
      "has-binary-0.1.7" = self.by-version."has-binary"."0.1.7";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
      "parseuri-0.0.4" = self.by-version."parseuri"."0.0.4";
      "to-array-0.1.3" = self.by-version."to-array"."0.1.3";
      "backo2-1.0.2" = self.by-version."backo2"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-parser"."2.2.2" =
    self.by-version."socket.io-parser"."2.2.2";
  by-version."socket.io-parser"."2.2.2" = self.buildNodePackage {
    name = "socket.io-parser-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-parser/-/socket.io-parser-2.2.2.tgz";
      name = "socket.io-parser-2.2.2.tgz";
      sha1 = "3d7af6b64497e956b7d9fe775f999716027f9417";
    };
    deps = {
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "json3-3.2.6" = self.by-version."json3"."3.2.6";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "benchmark-1.0.0" = self.by-version."benchmark"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-parser"."2.2.5" =
    self.by-version."socket.io-parser"."2.2.5";
  by-version."socket.io-parser"."2.2.5" = self.buildNodePackage {
    name = "socket.io-parser-2.2.5";
    version = "2.2.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-parser/-/socket.io-parser-2.2.5.tgz";
      name = "socket.io-parser-2.2.5.tgz";
      sha1 = "8d945b6da2158bafaf04f4e9c77c573b44cde52c";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "json3-3.3.2" = self.by-version."json3"."3.3.2";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "benchmark-1.0.0" = self.by-version."benchmark"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-parser"."2.2.6" =
    self.by-version."socket.io-parser"."2.2.6";
  by-version."socket.io-parser"."2.2.6" = self.buildNodePackage {
    name = "socket.io-parser-2.2.6";
    version = "2.2.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-parser/-/socket.io-parser-2.2.6.tgz";
      name = "socket.io-parser-2.2.6.tgz";
      sha1 = "38dfd61df50dcf8ab1d9e2091322bf902ba28b99";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "json3-3.3.2" = self.by-version."json3"."3.3.2";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "benchmark-1.0.0" = self.by-version."benchmark"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sockjs"."^0.3.15" =
    self.by-version."sockjs"."0.3.15";
  by-version."sockjs"."0.3.15" = self.buildNodePackage {
    name = "sockjs-0.3.15";
    version = "0.3.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sockjs/-/sockjs-0.3.15.tgz";
      name = "sockjs-0.3.15.tgz";
      sha1 = "e19b577e59e0fbdb21a0ae4f46203ca24cad8db8";
    };
    deps = {
      "faye-websocket-0.9.4" = self.by-version."faye-websocket"."0.9.4";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sockjs-client"."^1.0.3" =
    self.by-version."sockjs-client"."1.0.3";
  by-version."sockjs-client"."1.0.3" = self.buildNodePackage {
    name = "sockjs-client-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sockjs-client/-/sockjs-client-1.0.3.tgz";
      name = "sockjs-client-1.0.3.tgz";
      sha1 = "b0d8280998460eb2564c5d79d7e3d7cfd8a353ad";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "eventsource-0.1.6" = self.by-version."eventsource"."0.1.6";
      "faye-websocket-0.7.3" = self.by-version."faye-websocket"."0.7.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "json3-3.3.2" = self.by-version."json3"."3.3.2";
      "url-parse-1.0.5" = self.by-version."url-parse"."1.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sort-keys"."^1.0.0" =
    self.by-version."sort-keys"."1.1.1";
  by-version."sort-keys"."1.1.1" = self.buildNodePackage {
    name = "sort-keys-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sort-keys/-/sort-keys-1.1.1.tgz";
      name = "sort-keys-1.1.1.tgz";
      sha1 = "a791c26071df66c356bf5dcad9cfb57a7b2f826e";
    };
    deps = {
      "is-plain-obj-1.1.0" = self.by-version."is-plain-obj"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-list-map"."^0.1.4" =
    self.by-version."source-list-map"."0.1.5";
  by-version."source-list-map"."0.1.5" = self.buildNodePackage {
    name = "source-list-map-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-list-map/-/source-list-map-0.1.5.tgz";
      name = "source-list-map-0.1.5.tgz";
      sha1 = "ddf32f5173faeca3010561dd7e9a682c027f459e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-list-map"."~0.1.0" =
    self.by-version."source-list-map"."0.1.5";
  by-spec."source-map"."0.1.31" =
    self.by-version."source-map"."0.1.31";
  by-version."source-map"."0.1.31" = self.buildNodePackage {
    name = "source-map-0.1.31";
    version = "0.1.31";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.1.31.tgz";
      name = "source-map-0.1.31.tgz";
      sha1 = "9f704d0d69d9e138a81badf6ebb4fde33d151c61";
    };
    deps = {
      "amdefine-1.0.0" = self.by-version."amdefine"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."0.1.x" =
    self.by-version."source-map"."0.1.43";
  by-version."source-map"."0.1.43" = self.buildNodePackage {
    name = "source-map-0.1.43";
    version = "0.1.43";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.1.43.tgz";
      name = "source-map-0.1.43.tgz";
      sha1 = "c24bc146ca517c1471f5dacbe2571b2b7f9e3346";
    };
    deps = {
      "amdefine-1.0.0" = self.by-version."amdefine"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."0.4.x" =
    self.by-version."source-map"."0.4.4";
  by-version."source-map"."0.4.4" = self.buildNodePackage {
    name = "source-map-0.4.4";
    version = "0.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.4.4.tgz";
      name = "source-map-0.4.4.tgz";
      sha1 = "eba4f5da9c0dc999de68032d8b4f76173652036b";
    };
    deps = {
      "amdefine-1.0.0" = self.by-version."amdefine"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."^0.1.41" =
    self.by-version."source-map"."0.1.43";
  by-spec."source-map"."^0.4.2" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."^0.4.4" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."^0.5.1" =
    self.by-version."source-map"."0.5.3";
  by-version."source-map"."0.5.3" = self.buildNodePackage {
    name = "source-map-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.5.3.tgz";
      name = "source-map-0.5.3.tgz";
      sha1 = "82674b85a71b0be76c3e7416d15e9f5252eb3be0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."^0.5.3" =
    self.by-version."source-map"."0.5.3";
  by-spec."source-map"."~0.4.1" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."~0.5.1" =
    self.by-version."source-map"."0.5.3";
  by-spec."source-sans-pro"."^2.0.10" =
    self.by-version."source-sans-pro"."2.0.10";
  by-version."source-sans-pro"."2.0.10" = self.buildNodePackage {
    name = "source-sans-pro-2.0.10";
    version = "2.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-sans-pro/-/source-sans-pro-2.0.10.tgz";
      name = "source-sans-pro-2.0.10.tgz";
      sha1 = "c1ca859cf164a088944c5e83745085e87cd533a9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "source-sans-pro" = self.by-version."source-sans-pro"."2.0.10";
  by-spec."spawn-sync"."^1.0.15" =
    self.by-version."spawn-sync"."1.0.15";
  by-version."spawn-sync"."1.0.15" = self.buildNodePackage {
    name = "spawn-sync-1.0.15";
    version = "1.0.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/spawn-sync/-/spawn-sync-1.0.15.tgz";
      name = "spawn-sync-1.0.15.tgz";
      sha1 = "b00799557eb7fb0c8376c29d44e8a1ea67e57476";
    };
    deps = {
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "os-shim-0.1.3" = self.by-version."os-shim"."0.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-correct"."~1.0.0" =
    self.by-version."spdx-correct"."1.0.2";
  by-version."spdx-correct"."1.0.2" = self.buildNodePackage {
    name = "spdx-correct-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/spdx-correct/-/spdx-correct-1.0.2.tgz";
      name = "spdx-correct-1.0.2.tgz";
      sha1 = "4b3073d933ff51f3912f03ac5519498a4150db40";
    };
    deps = {
      "spdx-license-ids-1.2.0" = self.by-version."spdx-license-ids"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-exceptions"."^1.0.4" =
    self.by-version."spdx-exceptions"."1.0.4";
  by-version."spdx-exceptions"."1.0.4" = self.buildNodePackage {
    name = "spdx-exceptions-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/spdx-exceptions/-/spdx-exceptions-1.0.4.tgz";
      name = "spdx-exceptions-1.0.4.tgz";
      sha1 = "220b84239119ae9045a892db81a83f4ce16f80fd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-expression-parse"."~1.0.0" =
    self.by-version."spdx-expression-parse"."1.0.2";
  by-version."spdx-expression-parse"."1.0.2" = self.buildNodePackage {
    name = "spdx-expression-parse-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/spdx-expression-parse/-/spdx-expression-parse-1.0.2.tgz";
      name = "spdx-expression-parse-1.0.2.tgz";
      sha1 = "d52b14b5e9670771440af225bcb563122ac452f6";
    };
    deps = {
      "spdx-exceptions-1.0.4" = self.by-version."spdx-exceptions"."1.0.4";
      "spdx-license-ids-1.2.0" = self.by-version."spdx-license-ids"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-license-ids"."^1.0.0" =
    self.by-version."spdx-license-ids"."1.2.0";
  by-version."spdx-license-ids"."1.2.0" = self.buildNodePackage {
    name = "spdx-license-ids-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/spdx-license-ids/-/spdx-license-ids-1.2.0.tgz";
      name = "spdx-license-ids-1.2.0.tgz";
      sha1 = "b549dd0f63dcb745a17e2ea3a07402e0e332d1e2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-license-ids"."^1.0.2" =
    self.by-version."spdx-license-ids"."1.2.0";
  by-spec."sprintf-js"."~1.0.2" =
    self.by-version."sprintf-js"."1.0.3";
  by-version."sprintf-js"."1.0.3" = self.buildNodePackage {
    name = "sprintf-js-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sprintf-js/-/sprintf-js-1.0.3.tgz";
      name = "sprintf-js-1.0.3.tgz";
      sha1 = "04e6926f662895354f3dd015203633b857297e2c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sshpk"."^1.7.0" =
    self.by-version."sshpk"."1.7.3";
  by-version."sshpk"."1.7.3" = self.buildNodePackage {
    name = "sshpk-1.7.3";
    version = "1.7.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/sshpk/-/sshpk-1.7.3.tgz";
      name = "sshpk-1.7.3.tgz";
      sha1 = "caa8ef95e30765d856698b7025f9f211ab65962f";
    };
    deps = {
      "asn1-0.2.3" = self.by-version."asn1"."0.2.3";
      "assert-plus-0.2.0" = self.by-version."assert-plus"."0.2.0";
      "dashdash-1.12.2" = self.by-version."dashdash"."1.12.2";
    };
    optionalDependencies = {
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
      "tweetnacl-0.13.3" = self.by-version."tweetnacl"."0.13.3";
      "jodid25519-1.0.2" = self.by-version."jodid25519"."1.0.2";
      "ecc-jsbn-0.1.1" = self.by-version."ecc-jsbn"."0.1.1";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses"."1" =
    self.by-version."statuses"."1.2.1";
  by-version."statuses"."1.2.1" = self.buildNodePackage {
    name = "statuses-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/statuses/-/statuses-1.2.1.tgz";
      name = "statuses-1.2.1.tgz";
      sha1 = "dded45cc18256d51ed40aec142489d5c61026d28";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses"."~1.2.1" =
    self.by-version."statuses"."1.2.1";
  by-spec."stream-browserify"."^1.0.0" =
    self.by-version."stream-browserify"."1.0.0";
  by-version."stream-browserify"."1.0.0" = self.buildNodePackage {
    name = "stream-browserify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-browserify/-/stream-browserify-1.0.0.tgz";
      name = "stream-browserify-1.0.0.tgz";
      sha1 = "bf9b4abfb42b274d751479e44e0ff2656b6f1193";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-cache"."~0.0.1" =
    self.by-version."stream-cache"."0.0.2";
  by-version."stream-cache"."0.0.2" = self.buildNodePackage {
    name = "stream-cache-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-cache/-/stream-cache-0.0.2.tgz";
      name = "stream-cache-0.0.2.tgz";
      sha1 = "1ac5ad6832428ca55667dbdee395dad4e6db118f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strict-uri-encode"."^1.0.0" =
    self.by-version."strict-uri-encode"."1.1.0";
  by-version."strict-uri-encode"."1.1.0" = self.buildNodePackage {
    name = "strict-uri-encode-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/strict-uri-encode/-/strict-uri-encode-1.1.0.tgz";
      name = "strict-uri-encode-1.1.0.tgz";
      sha1 = "279b225df1d582b1f54e65addd4352e18faa0713";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string-width"."^1.0.1" =
    self.by-version."string-width"."1.0.1";
  by-version."string-width"."1.0.1" = self.buildNodePackage {
    name = "string-width-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string-width/-/string-width-1.0.1.tgz";
      name = "string-width-1.0.1.tgz";
      sha1 = "c92129b6f1d7f52acf9af424a26e3864a05ceb0a";
    };
    deps = {
      "code-point-at-1.0.0" = self.by-version."code-point-at"."1.0.0";
      "is-fullwidth-code-point-1.0.0" = self.by-version."is-fullwidth-code-point"."1.0.0";
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string_decoder"."~0.10.25" =
    self.by-version."string_decoder"."0.10.31";
  by-version."string_decoder"."0.10.31" = self.buildNodePackage {
    name = "string_decoder-0.10.31";
    version = "0.10.31";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
      name = "string_decoder-0.10.31.tgz";
      sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string_decoder"."~0.10.x" =
    self.by-version."string_decoder"."0.10.31";
  by-spec."stringstream"."~0.0.4" =
    self.by-version."stringstream"."0.0.5";
  by-version."stringstream"."0.0.5" = self.buildNodePackage {
    name = "stringstream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringstream/-/stringstream-0.0.5.tgz";
      name = "stringstream-0.0.5.tgz";
      sha1 = "4e484cd4de5a0bbbee18e46307710a8a81621878";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-ansi"."^3.0.0" =
    self.by-version."strip-ansi"."3.0.0";
  by-version."strip-ansi"."3.0.0" = self.buildNodePackage {
    name = "strip-ansi-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.0.tgz";
      name = "strip-ansi-3.0.0.tgz";
      sha1 = "7510b665567ca914ccb5d7e072763ac968be3724";
    };
    deps = {
      "ansi-regex-2.0.0" = self.by-version."ansi-regex"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-bom"."^2.0.0" =
    self.by-version."strip-bom"."2.0.0";
  by-version."strip-bom"."2.0.0" = self.buildNodePackage {
    name = "strip-bom-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-bom/-/strip-bom-2.0.0.tgz";
      name = "strip-bom-2.0.0.tgz";
      sha1 = "6219a85616520491f35788bdbf1447a99c7e6b0e";
    };
    deps = {
      "is-utf8-0.2.1" = self.by-version."is-utf8"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-indent"."^1.0.1" =
    self.by-version."strip-indent"."1.0.1";
  by-version."strip-indent"."1.0.1" = self.buildNodePackage {
    name = "strip-indent-1.0.1";
    version = "1.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-indent/-/strip-indent-1.0.1.tgz";
      name = "strip-indent-1.0.1.tgz";
      sha1 = "0c7962a6adefa7bbd4ac366460a638552ae1a0a2";
    };
    deps = {
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-json-comments"."^1.0.2" =
    self.by-version."strip-json-comments"."1.0.4";
  by-version."strip-json-comments"."1.0.4" = self.buildNodePackage {
    name = "strip-json-comments-1.0.4";
    version = "1.0.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-json-comments/-/strip-json-comments-1.0.4.tgz";
      name = "strip-json-comments-1.0.4.tgz";
      sha1 = "1e15fbcac97d3ee99bf2d73b4c656b082bbafb91";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-json-comments"."~1.0.4" =
    self.by-version."strip-json-comments"."1.0.4";
  by-spec."style-loader"."^0.13.0" =
    self.by-version."style-loader"."0.13.0";
  by-version."style-loader"."0.13.0" = self.buildNodePackage {
    name = "style-loader-0.13.0";
    version = "0.13.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/style-loader/-/style-loader-0.13.0.tgz";
      name = "style-loader-0.13.0.tgz";
      sha1 = "abac11a20450f3ddea222b44c0c6342a8862db47";
    };
    deps = {
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "style-loader" = self.by-version."style-loader"."0.13.0";
  by-spec."stylus"."0.49.x" =
    self.by-version."stylus"."0.49.3";
  by-version."stylus"."0.49.3" = self.buildNodePackage {
    name = "stylus-0.49.3";
    version = "0.49.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/stylus/-/stylus-0.49.3.tgz";
      name = "stylus-0.49.3.tgz";
      sha1 = "1fbdabe479ed460872c71a6252a67f95040ba511";
    };
    deps = {
      "css-parse-1.7.0" = self.by-version."css-parse"."1.7.0";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "sax-0.5.8" = self.by-version."sax"."0.5.8";
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stylus"."^0.52.4" =
    self.by-version."stylus"."0.52.4";
  by-version."stylus"."0.52.4" = self.buildNodePackage {
    name = "stylus-0.52.4";
    version = "0.52.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/stylus/-/stylus-0.52.4.tgz";
      name = "stylus-0.52.4.tgz";
      sha1 = "6551b5f0bfdcf29ee7f0fe0a59b7eb6ff26d2539";
    };
    deps = {
      "css-parse-1.7.0" = self.by-version."css-parse"."1.7.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "sax-0.5.8" = self.by-version."sax"."0.5.8";
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stylus"."^0.53.0" =
    self.by-version."stylus"."0.53.0";
  by-version."stylus"."0.53.0" = self.buildNodePackage {
    name = "stylus-0.53.0";
    version = "0.53.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/stylus/-/stylus-0.53.0.tgz";
      name = "stylus-0.53.0.tgz";
      sha1 = "6b51e7665097f8dd4a6965e14ceea5e4b9fd724a";
    };
    deps = {
      "css-parse-1.7.0" = self.by-version."css-parse"."1.7.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "sax-0.5.8" = self.by-version."sax"."0.5.8";
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "stylus" = self.by-version."stylus"."0.53.0";
  by-spec."stylus-loader"."^1.5.0" =
    self.by-version."stylus-loader"."1.5.0";
  by-version."stylus-loader"."1.5.0" = self.buildNodePackage {
    name = "stylus-loader-1.5.0";
    version = "1.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stylus-loader/-/stylus-loader-1.5.0.tgz";
      name = "stylus-loader-1.5.0.tgz";
      sha1 = "e732f908a0e2a3c593898db512def9629cf1f3ff";
    };
    deps = {
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
      "stylus-0.52.4" = self.by-version."stylus"."0.52.4";
      "when-3.6.4" = self.by-version."when"."3.6.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "stylus-loader" = self.by-version."stylus-loader"."1.5.0";
  by-spec."superagent"."^1.7.1" =
    self.by-version."superagent"."1.7.1";
  by-version."superagent"."1.7.1" = self.buildNodePackage {
    name = "superagent-1.7.1";
    version = "1.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/superagent/-/superagent-1.7.1.tgz";
      name = "superagent-1.7.1.tgz";
      sha1 = "bc2ed6629055e6f18557ceaa2cb2a07d9e16d327";
    };
    deps = {
      "qs-2.3.3" = self.by-version."qs"."2.3.3";
      "formidable-1.0.17" = self.by-version."formidable"."1.0.17";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "component-emitter-1.2.0" = self.by-version."component-emitter"."1.2.0";
      "methods-1.1.2" = self.by-version."methods"."1.1.2";
      "cookiejar-2.0.6" = self.by-version."cookiejar"."2.0.6";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "reduce-component-1.0.1" = self.by-version."reduce-component"."1.0.1";
      "extend-1.2.1" = self.by-version."extend"."1.2.1";
      "form-data-0.2.0" = self.by-version."form-data"."0.2.0";
      "readable-stream-1.0.27-1" = self.by-version."readable-stream"."1.0.27-1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "superagent" = self.by-version."superagent"."1.7.1";
  by-spec."superagent-prefix"."0.0.2" =
    self.by-version."superagent-prefix"."0.0.2";
  by-version."superagent-prefix"."0.0.2" = self.buildNodePackage {
    name = "superagent-prefix-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/superagent-prefix/-/superagent-prefix-0.0.2.tgz";
      name = "superagent-prefix-0.0.2.tgz";
      sha1 = "b15bbb1353f889b00d25af10b4f11b350d203b06";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "superagent-prefix" = self.by-version."superagent-prefix"."0.0.2";
  by-spec."supports-color"."1.2.0" =
    self.by-version."supports-color"."1.2.0";
  by-version."supports-color"."1.2.0" = self.buildNodePackage {
    name = "supports-color-1.2.0";
    version = "1.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-1.2.0.tgz";
      name = "supports-color-1.2.0.tgz";
      sha1 = "ff1ed1e61169d06b3cf2d588e188b18d8847e17e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^2.0.0" =
    self.by-version."supports-color"."2.0.0";
  by-version."supports-color"."2.0.0" = self.buildNodePackage {
    name = "supports-color-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz";
      name = "supports-color-2.0.0.tgz";
      sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^3.1.0" =
    self.by-version."supports-color"."3.1.2";
  by-version."supports-color"."3.1.2" = self.buildNodePackage {
    name = "supports-color-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-3.1.2.tgz";
      name = "supports-color-3.1.2.tgz";
      sha1 = "72a262894d9d408b956ca05ff37b2ed8a6e2a2d5";
    };
    deps = {
      "has-flag-1.0.0" = self.by-version."has-flag"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^3.1.1" =
    self.by-version."supports-color"."3.1.2";
  by-spec."supports-color"."^3.1.2" =
    self.by-version."supports-color"."3.1.2";
  by-spec."svgo"."^0.6.1" =
    self.by-version."svgo"."0.6.1";
  by-version."svgo"."0.6.1" = self.buildNodePackage {
    name = "svgo-0.6.1";
    version = "0.6.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/svgo/-/svgo-0.6.1.tgz";
      name = "svgo-0.6.1.tgz";
      sha1 = "b9dd8d450660ca5f88b22271fbdc8b2a966637a9";
    };
    deps = {
      "sax-1.1.4" = self.by-version."sax"."1.1.4";
      "coa-1.0.1" = self.by-version."coa"."1.0.1";
      "js-yaml-3.4.6" = self.by-version."js-yaml"."3.4.6";
      "colors-1.1.2" = self.by-version."colors"."1.1.2";
      "whet.extend-0.9.9" = self.by-version."whet.extend"."0.9.9";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "csso-1.4.4" = self.by-version."csso"."1.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."swap-case"."^1.1.0" =
    self.by-version."swap-case"."1.1.2";
  by-version."swap-case"."1.1.2" = self.buildNodePackage {
    name = "swap-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/swap-case/-/swap-case-1.1.2.tgz";
      name = "swap-case-1.1.2.tgz";
      sha1 = "c39203a4587385fad3c850a0bd1bcafa081974e3";
    };
    deps = {
      "lower-case-1.1.3" = self.by-version."lower-case"."1.1.3";
      "upper-case-1.1.3" = self.by-version."upper-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tapable"."^0.1.8" =
    self.by-version."tapable"."0.1.10";
  by-version."tapable"."0.1.10" = self.buildNodePackage {
    name = "tapable-0.1.10";
    version = "0.1.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tapable/-/tapable-0.1.10.tgz";
      name = "tapable-0.1.10.tgz";
      sha1 = "29c35707c2b70e50d07482b5d202e8ed446dafd4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tapable"."~0.1.8" =
    self.by-version."tapable"."0.1.10";
  by-spec."tar"."^2.0.0" =
    self.by-version."tar"."2.2.1";
  by-version."tar"."2.2.1" = self.buildNodePackage {
    name = "tar-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar/-/tar-2.2.1.tgz";
      name = "tar-2.2.1.tgz";
      sha1 = "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1";
    };
    deps = {
      "block-stream-0.0.8" = self.by-version."block-stream"."0.0.8";
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar"."~2.2.0" =
    self.by-version."tar"."2.2.1";
  by-spec."tar"."~2.2.1" =
    self.by-version."tar"."2.2.1";
  by-spec."tar-pack"."~3.1.0" =
    self.by-version."tar-pack"."3.1.2";
  by-version."tar-pack"."3.1.2" = self.buildNodePackage {
    name = "tar-pack-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar-pack/-/tar-pack-3.1.2.tgz";
      name = "tar-pack-3.1.2.tgz";
      sha1 = "15fc57c379238bd350ef7b182a2e2baf826fe048";
    };
    deps = {
      "uid-number-0.0.3" = self.by-version."uid-number"."0.0.3";
      "once-1.1.1" = self.by-version."once"."1.1.1";
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "rimraf-2.4.5" = self.by-version."rimraf"."2.4.5";
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "fstream-ignore-1.0.3" = self.by-version."fstream-ignore"."1.0.3";
      "readable-stream-2.0.5" = self.by-version."readable-stream"."2.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."throttleit"."~0.0.2" =
    self.by-version."throttleit"."0.0.2";
  by-version."throttleit"."0.0.2" = self.buildNodePackage {
    name = "throttleit-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/throttleit/-/throttleit-0.0.2.tgz";
      name = "throttleit-0.0.2.tgz";
      sha1 = "cfedf88e60c00dd9697b61fdd2a8343a9b680eaf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through"."~2.3.4" =
    self.by-version."through"."2.3.8";
  by-version."through"."2.3.8" = self.buildNodePackage {
    name = "through-2.3.8";
    version = "2.3.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through/-/through-2.3.8.tgz";
      name = "through-2.3.8.tgz";
      sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."timers-browserify"."^1.0.1" =
    self.by-version."timers-browserify"."1.4.2";
  by-version."timers-browserify"."1.4.2" = self.buildNodePackage {
    name = "timers-browserify-1.4.2";
    version = "1.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/timers-browserify/-/timers-browserify-1.4.2.tgz";
      name = "timers-browserify-1.4.2.tgz";
      sha1 = "c9c58b575be8407375cb5e2462dacee74359f41d";
    };
    deps = {
      "process-0.11.2" = self.by-version."process"."0.11.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."title-case"."^1.1.0" =
    self.by-version."title-case"."1.1.2";
  by-version."title-case"."1.1.2" = self.buildNodePackage {
    name = "title-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/title-case/-/title-case-1.1.2.tgz";
      name = "title-case-1.1.2.tgz";
      sha1 = "fae4a6ae546bfa22d083a0eea910a40d12ed4f5a";
    };
    deps = {
      "sentence-case-1.1.3" = self.by-version."sentence-case"."1.1.3";
      "upper-case-1.1.3" = self.by-version."upper-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."to-array"."0.1.3" =
    self.by-version."to-array"."0.1.3";
  by-version."to-array"."0.1.3" = self.buildNodePackage {
    name = "to-array-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/to-array/-/to-array-0.1.3.tgz";
      name = "to-array-0.1.3.tgz";
      sha1 = "d45dadc6363417f60f28474fea50ecddbb4f4991";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tough-cookie".">=0.12.0" =
    self.by-version."tough-cookie"."2.2.1";
  by-version."tough-cookie"."2.2.1" = self.buildNodePackage {
    name = "tough-cookie-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tough-cookie/-/tough-cookie-2.2.1.tgz";
      name = "tough-cookie-2.2.1.tgz";
      sha1 = "3b0516b799e70e8164436a1446e7e5877fda118e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tough-cookie"."~2.2.0" =
    self.by-version."tough-cookie"."2.2.1";
  by-spec."trim-newlines"."^1.0.0" =
    self.by-version."trim-newlines"."1.0.0";
  by-version."trim-newlines"."1.0.0" = self.buildNodePackage {
    name = "trim-newlines-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/trim-newlines/-/trim-newlines-1.0.0.tgz";
      name = "trim-newlines-1.0.0.tgz";
      sha1 = "5887966bb582a4503a41eb524f7d35011815a613";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tty-browserify"."0.0.0" =
    self.by-version."tty-browserify"."0.0.0";
  by-version."tty-browserify"."0.0.0" = self.buildNodePackage {
    name = "tty-browserify-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tty-browserify/-/tty-browserify-0.0.0.tgz";
      name = "tty-browserify-0.0.0.tgz";
      sha1 = "a157ba402da24e9bf957f9aa69d524eed42901a6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tunnel-agent"."~0.4.0" =
    self.by-version."tunnel-agent"."0.4.2";
  by-version."tunnel-agent"."0.4.2" = self.buildNodePackage {
    name = "tunnel-agent-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.4.2.tgz";
      name = "tunnel-agent-0.4.2.tgz";
      sha1 = "1104e3f36ac87125c287270067d582d18133bfee";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tunnel-agent"."~0.4.1" =
    self.by-version."tunnel-agent"."0.4.2";
  by-spec."tweetnacl".">=0.13.0 <1.0.0" =
    self.by-version."tweetnacl"."0.13.3";
  by-version."tweetnacl"."0.13.3" = self.buildNodePackage {
    name = "tweetnacl-0.13.3";
    version = "0.13.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tweetnacl/-/tweetnacl-0.13.3.tgz";
      name = "tweetnacl-0.13.3.tgz";
      sha1 = "d628b56f3bcc3d5ae74ba9d4c1a704def5ab4b56";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-detect"."0.1.1" =
    self.by-version."type-detect"."0.1.1";
  by-version."type-detect"."0.1.1" = self.buildNodePackage {
    name = "type-detect-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/type-detect/-/type-detect-0.1.1.tgz";
      name = "type-detect-0.1.1.tgz";
      sha1 = "0ba5ec2a885640e470ea4e8505971900dac58822";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-detect"."^1.0.0" =
    self.by-version."type-detect"."1.0.0";
  by-version."type-detect"."1.0.0" = self.buildNodePackage {
    name = "type-detect-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/type-detect/-/type-detect-1.0.0.tgz";
      name = "type-detect-1.0.0.tgz";
      sha1 = "762217cc06db258ec48908a1298e8b95121e8ea2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-is"."~1.6.10" =
    self.by-version."type-is"."1.6.10";
  by-version."type-is"."1.6.10" = self.buildNodePackage {
    name = "type-is-1.6.10";
    version = "1.6.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/type-is/-/type-is-1.6.10.tgz";
      name = "type-is-1.6.10.tgz";
      sha1 = "d27e995b20d8c2a543f3420573f690a3929fd75a";
    };
    deps = {
      "media-typer-0.3.0" = self.by-version."media-typer"."0.3.0";
      "mime-types-2.1.9" = self.by-version."mime-types"."2.1.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-is"."~1.6.6" =
    self.by-version."type-is"."1.6.10";
  by-spec."typedarray"."~0.0.5" =
    self.by-version."typedarray"."0.0.6";
  by-version."typedarray"."0.0.6" = self.buildNodePackage {
    name = "typedarray-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/typedarray/-/typedarray-0.0.6.tgz";
      name = "typedarray-0.0.6.tgz";
      sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ua-parser-js"."^0.7.9" =
    self.by-version."ua-parser-js"."0.7.10";
  by-version."ua-parser-js"."0.7.10" = self.buildNodePackage {
    name = "ua-parser-js-0.7.10";
    version = "0.7.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ua-parser-js/-/ua-parser-js-0.7.10.tgz";
      name = "ua-parser-js-0.7.10.tgz";
      sha1 = "917559ddcce07cbc09ece7d80495e4c268f4ef9f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-js"."2.6.x" =
    self.by-version."uglify-js"."2.6.1";
  by-version."uglify-js"."2.6.1" = self.buildNodePackage {
    name = "uglify-js-2.6.1";
    version = "2.6.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-js/-/uglify-js-2.6.1.tgz";
      name = "uglify-js-2.6.1.tgz";
      sha1 = "edbbe1888ba3525ded3a7bf836b30b3405d3161b";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "source-map-0.5.3" = self.by-version."source-map"."0.5.3";
      "uglify-to-browserify-1.0.2" = self.by-version."uglify-to-browserify"."1.0.2";
      "yargs-3.10.0" = self.by-version."yargs"."3.10.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-js"."~2.6.0" =
    self.by-version."uglify-js"."2.6.1";
  by-spec."uglify-to-browserify"."~1.0.0" =
    self.by-version."uglify-to-browserify"."1.0.2";
  by-version."uglify-to-browserify"."1.0.2" = self.buildNodePackage {
    name = "uglify-to-browserify-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-to-browserify/-/uglify-to-browserify-1.0.2.tgz";
      name = "uglify-to-browserify-1.0.2.tgz";
      sha1 = "6e0924d6bda6b5afe349e39a6d632850a0f882b7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uid-number"."0.0.3" =
    self.by-version."uid-number"."0.0.3";
  by-version."uid-number"."0.0.3" = self.buildNodePackage {
    name = "uid-number-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uid-number/-/uid-number-0.0.3.tgz";
      name = "uid-number-0.0.3.tgz";
      sha1 = "cefb0fa138d8d8098da71a40a0d04a8327d6e1cc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uid-number"."0.0.5" =
    self.by-version."uid-number"."0.0.5";
  by-version."uid-number"."0.0.5" = self.buildNodePackage {
    name = "uid-number-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uid-number/-/uid-number-0.0.5.tgz";
      name = "uid-number-0.0.5.tgz";
      sha1 = "5a3db23ef5dbd55b81fce0ec9a2ac6fccdebb81e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ultron"."1.0.x" =
    self.by-version."ultron"."1.0.2";
  by-version."ultron"."1.0.2" = self.buildNodePackage {
    name = "ultron-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ultron/-/ultron-1.0.2.tgz";
      name = "ultron-1.0.2.tgz";
      sha1 = "ace116ab557cd197386a4e88f4685378c8b2e4fa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."underscore"."1.8.2" =
    self.by-version."underscore"."1.8.2";
  by-version."underscore"."1.8.2" = self.buildNodePackage {
    name = "underscore-1.8.2";
    version = "1.8.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore/-/underscore-1.8.2.tgz";
      name = "underscore-1.8.2.tgz";
      sha1 = "64df2eb590899de950782f3735190ba42ebf311d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uniq"."^1.0.1" =
    self.by-version."uniq"."1.0.1";
  by-version."uniq"."1.0.1" = self.buildNodePackage {
    name = "uniq-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uniq/-/uniq-1.0.1.tgz";
      name = "uniq-1.0.1.tgz";
      sha1 = "b31c5ae8254844a3a8281541ce2b04b865a734ff";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uniqid"."^1.0.0" =
    self.by-version."uniqid"."1.0.0";
  by-version."uniqid"."1.0.0" = self.buildNodePackage {
    name = "uniqid-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uniqid/-/uniqid-1.0.0.tgz";
      name = "uniqid-1.0.0.tgz";
      sha1 = "2582524e07404844a42de94fbe2bf549e1b74555";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uniqs"."^2.0.0" =
    self.by-version."uniqs"."2.0.0";
  by-version."uniqs"."2.0.0" = self.buildNodePackage {
    name = "uniqs-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uniqs/-/uniqs-2.0.0.tgz";
      name = "uniqs-2.0.0.tgz";
      sha1 = "ffede4b36b25290696e6e165d4a59edb998e6b02";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."unpipe"."1.0.0" =
    self.by-version."unpipe"."1.0.0";
  by-version."unpipe"."1.0.0" = self.buildNodePackage {
    name = "unpipe-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
      name = "unpipe-1.0.0.tgz";
      sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."unpipe"."~1.0.0" =
    self.by-version."unpipe"."1.0.0";
  by-spec."updeep"."^0.12.0" =
    self.by-version."updeep"."0.12.0";
  by-version."updeep"."0.12.0" = self.buildNodePackage {
    name = "updeep-0.12.0";
    version = "0.12.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/updeep/-/updeep-0.12.0.tgz";
      name = "updeep-0.12.0.tgz";
      sha1 = "451b85ee6975d8b50ca4254ca4afc032a85aeee3";
    };
    deps = {
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "updeep" = self.by-version."updeep"."0.12.0";
  by-spec."upper-case"."^1.0.3" =
    self.by-version."upper-case"."1.1.3";
  by-version."upper-case"."1.1.3" = self.buildNodePackage {
    name = "upper-case-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/upper-case/-/upper-case-1.1.3.tgz";
      name = "upper-case-1.1.3.tgz";
      sha1 = "f6b4501c2ec4cdd26ba78be7222961de77621598";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."upper-case"."^1.1.0" =
    self.by-version."upper-case"."1.1.3";
  by-spec."upper-case"."^1.1.1" =
    self.by-version."upper-case"."1.1.3";
  by-spec."upper-case-first"."^1.1.0" =
    self.by-version."upper-case-first"."1.1.2";
  by-version."upper-case-first"."1.1.2" = self.buildNodePackage {
    name = "upper-case-first-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/upper-case-first/-/upper-case-first-1.1.2.tgz";
      name = "upper-case-first-1.1.2.tgz";
      sha1 = "5d79bedcff14419518fd2edb0a0507c9b6859115";
    };
    deps = {
      "upper-case-1.1.3" = self.by-version."upper-case"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."url"."~0.10.1" =
    self.by-version."url"."0.10.3";
  by-version."url"."0.10.3" = self.buildNodePackage {
    name = "url-0.10.3";
    version = "0.10.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/url/-/url-0.10.3.tgz";
      name = "url-0.10.3.tgz";
      sha1 = "021e4d9c7705f21bbf37d03ceb58767402774c64";
    };
    deps = {
      "punycode-1.3.2" = self.by-version."punycode"."1.3.2";
      "querystring-0.2.0" = self.by-version."querystring"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."url-loader"."^0.5.7" =
    self.by-version."url-loader"."0.5.7";
  by-version."url-loader"."0.5.7" = self.buildNodePackage {
    name = "url-loader-0.5.7";
    version = "0.5.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/url-loader/-/url-loader-0.5.7.tgz";
      name = "url-loader-0.5.7.tgz";
      sha1 = "67e8779759f8000da74994906680c943a9b0925d";
    };
    deps = {
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."file-loader"."0.8.5"];
    os = [ ];
    cpu = [ ];
  };
  "url-loader" = self.by-version."url-loader"."0.5.7";
  by-spec."url-parse"."1.0.x" =
    self.by-version."url-parse"."1.0.5";
  by-version."url-parse"."1.0.5" = self.buildNodePackage {
    name = "url-parse-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/url-parse/-/url-parse-1.0.5.tgz";
      name = "url-parse-1.0.5.tgz";
      sha1 = "0854860422afdcfefeb6c965c662d4800169927b";
    };
    deps = {
      "querystringify-0.0.3" = self.by-version."querystringify"."0.0.3";
      "requires-port-1.0.0" = self.by-version."requires-port"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."url-parse"."^1.0.1" =
    self.by-version."url-parse"."1.0.5";
  by-spec."useragent"."^2.1.6" =
    self.by-version."useragent"."2.1.8";
  by-version."useragent"."2.1.8" = self.buildNodePackage {
    name = "useragent-2.1.8";
    version = "2.1.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/useragent/-/useragent-2.1.8.tgz";
      name = "useragent-2.1.8.tgz";
      sha1 = "7a09a53770e039136e0d61fb77e65e2bf1920093";
    };
    deps = {
      "lru-cache-2.2.4" = self.by-version."lru-cache"."2.2.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."utf8"."2.1.0" =
    self.by-version."utf8"."2.1.0";
  by-version."utf8"."2.1.0" = self.buildNodePackage {
    name = "utf8-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utf8/-/utf8-2.1.0.tgz";
      name = "utf8-2.1.0.tgz";
      sha1 = "0cfec5c8052d44a23e3aaa908104e8075f95dfd5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."util"."0.10.3" =
    self.by-version."util"."0.10.3";
  by-version."util"."0.10.3" = self.buildNodePackage {
    name = "util-0.10.3";
    version = "0.10.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/util/-/util-0.10.3.tgz";
      name = "util-0.10.3.tgz";
      sha1 = "7afb1afe50805246489e3db7fe0ed379336ac0f9";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."util"."~0.10.3" =
    self.by-version."util"."0.10.3";
  by-spec."util-deprecate"."~1.0.1" =
    self.by-version."util-deprecate"."1.0.2";
  by-version."util-deprecate"."1.0.2" = self.buildNodePackage {
    name = "util-deprecate-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
      name = "util-deprecate-1.0.2.tgz";
      sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."utila"."~0.3" =
    self.by-version."utila"."0.3.3";
  by-version."utila"."0.3.3" = self.buildNodePackage {
    name = "utila-0.3.3";
    version = "0.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utila/-/utila-0.3.3.tgz";
      name = "utila-0.3.3.tgz";
      sha1 = "d7e8e7d7e309107092b05f8d9688824d633a4226";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."utila"."~0.4" =
    self.by-version."utila"."0.4.0";
  by-version."utila"."0.4.0" = self.buildNodePackage {
    name = "utila-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utila/-/utila-0.4.0.tgz";
      name = "utila-0.4.0.tgz";
      sha1 = "8a16a05d445657a3aea5eecc5b12a4fa5379772c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."utils-merge"."1.0.0" =
    self.by-version."utils-merge"."1.0.0";
  by-version."utils-merge"."1.0.0" = self.buildNodePackage {
    name = "utils-merge-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utils-merge/-/utils-merge-1.0.0.tgz";
      name = "utils-merge-1.0.0.tgz";
      sha1 = "0294fb922bb9375153541c4f7096231f287c8af8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."validate-npm-package-license"."^3.0.1" =
    self.by-version."validate-npm-package-license"."3.0.1";
  by-version."validate-npm-package-license"."3.0.1" = self.buildNodePackage {
    name = "validate-npm-package-license-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/validate-npm-package-license/-/validate-npm-package-license-3.0.1.tgz";
      name = "validate-npm-package-license-3.0.1.tgz";
      sha1 = "2804babe712ad3379459acfbe24746ab2c303fbc";
    };
    deps = {
      "spdx-correct-1.0.2" = self.by-version."spdx-correct"."1.0.2";
      "spdx-expression-parse-1.0.2" = self.by-version."spdx-expression-parse"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vary"."~1.0.1" =
    self.by-version."vary"."1.0.1";
  by-version."vary"."1.0.1" = self.buildNodePackage {
    name = "vary-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vary/-/vary-1.0.1.tgz";
      name = "vary-1.0.1.tgz";
      sha1 = "99e4981566a286118dfb2b817357df7993376d10";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vary"."~1.1.0" =
    self.by-version."vary"."1.1.0";
  by-version."vary"."1.1.0" = self.buildNodePackage {
    name = "vary-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vary/-/vary-1.1.0.tgz";
      name = "vary-1.1.0.tgz";
      sha1 = "e1e5affbbd16ae768dd2674394b9ad3022653140";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."verror"."1.3.6" =
    self.by-version."verror"."1.3.6";
  by-version."verror"."1.3.6" = self.buildNodePackage {
    name = "verror-1.3.6";
    version = "1.3.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/verror/-/verror-1.3.6.tgz";
      name = "verror-1.3.6.tgz";
      sha1 = "cff5df12946d297d2baaefaa2689e25be01c005c";
    };
    deps = {
      "extsprintf-1.0.2" = self.by-version."extsprintf"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vm-browserify"."0.0.4" =
    self.by-version."vm-browserify"."0.0.4";
  by-version."vm-browserify"."0.0.4" = self.buildNodePackage {
    name = "vm-browserify-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vm-browserify/-/vm-browserify-0.0.4.tgz";
      name = "vm-browserify-0.0.4.tgz";
      sha1 = "5d7ea45bbef9e4a6ff65f95438e0a87c357d5a73";
    };
    deps = {
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."vm-leaflet-icons"."^0.0.5" =
    self.by-version."vm-leaflet-icons"."0.0.5";
  by-version."vm-leaflet-icons"."0.0.5" = self.buildNodePackage {
    name = "vm-leaflet-icons-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vm-leaflet-icons/-/vm-leaflet-icons-0.0.5.tgz";
      name = "vm-leaflet-icons-0.0.5.tgz";
      sha1 = "43e05e827be9c31da1fdf5b1cd28a50d51a5f4f3";
    };
    deps = {
      "leaflet-0.7.7" = self.by-version."leaflet"."0.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "vm-leaflet-icons" = self.by-version."vm-leaflet-icons"."0.0.5";
  by-spec."void-elements"."^2.0.0" =
    self.by-version."void-elements"."2.0.1";
  by-version."void-elements"."2.0.1" = self.buildNodePackage {
    name = "void-elements-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/void-elements/-/void-elements-2.0.1.tgz";
      name = "void-elements-2.0.1.tgz";
      sha1 = "c066afb582bb1cb4128d60ea92392e94d5e9dbec";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."watchpack"."^0.2.1" =
    self.by-version."watchpack"."0.2.9";
  by-version."watchpack"."0.2.9" = self.buildNodePackage {
    name = "watchpack-0.2.9";
    version = "0.2.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/watchpack/-/watchpack-0.2.9.tgz";
      name = "watchpack-0.2.9.tgz";
      sha1 = "62eaa4ab5e5ba35fdfc018275626e3c0f5e3fb0b";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "chokidar-1.4.2" = self.by-version."chokidar"."1.4.2";
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack".">=1.0.0 <3" =
    self.by-version."webpack"."1.12.12";
  by-version."webpack"."1.12.12" = self.buildNodePackage {
    name = "webpack-1.12.12";
    version = "1.12.12";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack/-/webpack-1.12.12.tgz";
      name = "webpack-1.12.12.tgz";
      sha1 = "06e7a379a1a6411eac6f1006d94b1b269e917a3b";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "enhanced-resolve-0.9.1" = self.by-version."enhanced-resolve"."0.9.1";
      "esprima-2.7.1" = self.by-version."esprima"."2.7.1";
      "interpret-0.6.6" = self.by-version."interpret"."0.6.6";
      "loader-utils-0.2.12" = self.by-version."loader-utils"."0.2.12";
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "node-libs-browser-0.5.3" = self.by-version."node-libs-browser"."0.5.3";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "tapable-0.1.10" = self.by-version."tapable"."0.1.10";
      "uglify-js-2.6.1" = self.by-version."uglify-js"."2.6.1";
      "watchpack-0.2.9" = self.by-version."watchpack"."0.2.9";
      "webpack-core-0.6.8" = self.by-version."webpack-core"."0.6.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack".">=1.3.0 <3" =
    self.by-version."webpack"."1.12.12";
  by-spec."webpack"."^1.12.12" =
    self.by-version."webpack"."1.12.12";
  "webpack" = self.by-version."webpack"."1.12.12";
  by-spec."webpack"."^1.12.6" =
    self.by-version."webpack"."1.12.12";
  by-spec."webpack"."^1.4.0" =
    self.by-version."webpack"."1.12.12";
  by-spec."webpack-core"."~0.6.0" =
    self.by-version."webpack-core"."0.6.8";
  by-version."webpack-core"."0.6.8" = self.buildNodePackage {
    name = "webpack-core-0.6.8";
    version = "0.6.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack-core/-/webpack-core-0.6.8.tgz";
      name = "webpack-core-0.6.8.tgz";
      sha1 = "edf9135de00a6a3c26dd0f14b208af0aa4af8d0a";
    };
    deps = {
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
      "source-list-map-0.1.5" = self.by-version."source-list-map"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack-dev-middleware"."^1.0.11" =
    self.by-version."webpack-dev-middleware"."1.5.1";
  by-version."webpack-dev-middleware"."1.5.1" = self.buildNodePackage {
    name = "webpack-dev-middleware-1.5.1";
    version = "1.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack-dev-middleware/-/webpack-dev-middleware-1.5.1.tgz";
      name = "webpack-dev-middleware-1.5.1.tgz";
      sha1 = "c46e075467881211e3fca34af1cdadf47163c89a";
    };
    deps = {
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."webpack"."1.12.12"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack-dev-middleware"."^1.4.0" =
    self.by-version."webpack-dev-middleware"."1.5.1";
  by-spec."webpack-dev-server"."^1.14.1" =
    self.by-version."webpack-dev-server"."1.14.1";
  by-version."webpack-dev-server"."1.14.1" = self.buildNodePackage {
    name = "webpack-dev-server-1.14.1";
    version = "1.14.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack-dev-server/-/webpack-dev-server-1.14.1.tgz";
      name = "webpack-dev-server-1.14.1.tgz";
      sha1 = "e51de228071258b0db6d55e0f5fee55eec6755de";
    };
    deps = {
      "compression-1.6.1" = self.by-version."compression"."1.6.1";
      "connect-history-api-fallback-1.1.0" = self.by-version."connect-history-api-fallback"."1.1.0";
      "express-4.13.4" = self.by-version."express"."4.13.4";
      "http-proxy-1.12.1" = self.by-version."http-proxy"."1.12.1";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "serve-index-1.7.3" = self.by-version."serve-index"."1.7.3";
      "sockjs-0.3.15" = self.by-version."sockjs"."0.3.15";
      "sockjs-client-1.0.3" = self.by-version."sockjs-client"."1.0.3";
      "stream-cache-0.0.2" = self.by-version."stream-cache"."0.0.2";
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "webpack-dev-middleware-1.5.1" = self.by-version."webpack-dev-middleware"."1.5.1";
      "webpack-1.12.12" = self.by-version."webpack"."1.12.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "webpack-dev-server" = self.by-version."webpack-dev-server"."1.14.1";
  by-spec."websocket-driver".">=0.3.6" =
    self.by-version."websocket-driver"."0.6.4";
  by-version."websocket-driver"."0.6.4" = self.buildNodePackage {
    name = "websocket-driver-0.6.4";
    version = "0.6.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/websocket-driver/-/websocket-driver-0.6.4.tgz";
      name = "websocket-driver-0.6.4.tgz";
      sha1 = "65b84d02113480d3fc05e63e809322042bdc940b";
    };
    deps = {
      "websocket-extensions-0.1.1" = self.by-version."websocket-extensions"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."websocket-driver".">=0.5.1" =
    self.by-version."websocket-driver"."0.6.4";
  by-spec."websocket-extensions".">=0.1.1" =
    self.by-version."websocket-extensions"."0.1.1";
  by-version."websocket-extensions"."0.1.1" = self.buildNodePackage {
    name = "websocket-extensions-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/websocket-extensions/-/websocket-extensions-0.1.1.tgz";
      name = "websocket-extensions-0.1.1.tgz";
      sha1 = "76899499c184b6ef754377c2dbb0cd6cb55d29e7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."whatwg-fetch"."^0.9.0" =
    self.by-version."whatwg-fetch"."0.9.0";
  by-version."whatwg-fetch"."0.9.0" = self.buildNodePackage {
    name = "whatwg-fetch-0.9.0";
    version = "0.9.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/whatwg-fetch/-/whatwg-fetch-0.9.0.tgz";
      name = "whatwg-fetch-0.9.0.tgz";
      sha1 = "0e3684c6cb9995b43efc9df03e4c365d95fd9cc0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."when"."~3.6.x" =
    self.by-version."when"."3.6.4";
  by-version."when"."3.6.4" = self.buildNodePackage {
    name = "when-3.6.4";
    version = "3.6.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/when/-/when-3.6.4.tgz";
      name = "when-3.6.4.tgz";
      sha1 = "473b517ec159e2b85005497a13983f095412e34e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."whet.extend"."~0.9.9" =
    self.by-version."whet.extend"."0.9.9";
  by-version."whet.extend"."0.9.9" = self.buildNodePackage {
    name = "whet.extend-0.9.9";
    version = "0.9.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/whet.extend/-/whet.extend-0.9.9.tgz";
      name = "whet.extend-0.9.9.tgz";
      sha1 = "f877d5bf648c97e5aa542fadc16d6a259b9c11a1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."which"."1" =
    self.by-version."which"."1.2.2";
  by-version."which"."1.2.2" = self.buildNodePackage {
    name = "which-1.2.2";
    version = "1.2.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/which/-/which-1.2.2.tgz";
      name = "which-1.2.2.tgz";
      sha1 = "6cf661c374b6016ad71f035993d5bc85e003aec7";
    };
    deps = {
      "is-absolute-0.1.7" = self.by-version."is-absolute"."0.1.7";
      "isexe-1.0.1" = self.by-version."isexe"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."which"."^1.2.0" =
    self.by-version."which"."1.2.2";
  by-spec."which"."~1.0.5" =
    self.by-version."which"."1.0.9";
  by-version."which"."1.0.9" = self.buildNodePackage {
    name = "which-1.0.9";
    version = "1.0.9";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/which/-/which-1.0.9.tgz";
      name = "which-1.0.9.tgz";
      sha1 = "460c1da0f810103d0321a9b633af9e575e64486f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."window-size"."0.1.0" =
    self.by-version."window-size"."0.1.0";
  by-version."window-size"."0.1.0" = self.buildNodePackage {
    name = "window-size-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/window-size/-/window-size-0.1.0.tgz";
      name = "window-size-0.1.0.tgz";
      sha1 = "5438cd2ea93b202efa3a19fe8887aee7c94f9c9d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."window-size"."^0.1.4" =
    self.by-version."window-size"."0.1.4";
  by-version."window-size"."0.1.4" = self.buildNodePackage {
    name = "window-size-0.1.4";
    version = "0.1.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/window-size/-/window-size-0.1.4.tgz";
      name = "window-size-0.1.4.tgz";
      sha1 = "f8e1aa1ee5a53ec5bf151ffa09742a6ad7697876";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wordwrap"."0.0.2" =
    self.by-version."wordwrap"."0.0.2";
  by-version."wordwrap"."0.0.2" = self.buildNodePackage {
    name = "wordwrap-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wordwrap/-/wordwrap-0.0.2.tgz";
      name = "wordwrap-0.0.2.tgz";
      sha1 = "b79669bb42ecb409f83d583cad52ca17eaa1643f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wordwrap"."~0.0.2" =
    self.by-version."wordwrap"."0.0.3";
  by-version."wordwrap"."0.0.3" = self.buildNodePackage {
    name = "wordwrap-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wordwrap/-/wordwrap-0.0.3.tgz";
      name = "wordwrap-0.0.3.tgz";
      sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wrap-ansi"."^1.0.0" =
    self.by-version."wrap-ansi"."1.0.0";
  by-version."wrap-ansi"."1.0.0" = self.buildNodePackage {
    name = "wrap-ansi-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wrap-ansi/-/wrap-ansi-1.0.0.tgz";
      name = "wrap-ansi-1.0.0.tgz";
      sha1 = "f573bb9ee23cf43891f3362f5f359a1dfa38fc34";
    };
    deps = {
      "string-width-1.0.1" = self.by-version."string-width"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wrappy"."1" =
    self.by-version."wrappy"."1.0.1";
  by-version."wrappy"."1.0.1" = self.buildNodePackage {
    name = "wrappy-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wrappy/-/wrappy-1.0.1.tgz";
      name = "wrappy-1.0.1.tgz";
      sha1 = "1e65969965ccbc2db4548c6b84a6f2c5aedd4739";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ws"."1.0.1" =
    self.by-version."ws"."1.0.1";
  by-version."ws"."1.0.1" = self.buildNodePackage {
    name = "ws-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ws/-/ws-1.0.1.tgz";
      name = "ws-1.0.1.tgz";
      sha1 = "7d0b2a2e58cddd819039c29c9de65045e1b310e9";
    };
    deps = {
      "options-0.0.6" = self.by-version."options"."0.0.6";
      "ultron-1.0.2" = self.by-version."ultron"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xmlhttprequest-ssl"."1.5.1" =
    self.by-version."xmlhttprequest-ssl"."1.5.1";
  by-version."xmlhttprequest-ssl"."1.5.1" = self.buildNodePackage {
    name = "xmlhttprequest-ssl-1.5.1";
    version = "1.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xmlhttprequest-ssl/-/xmlhttprequest-ssl-1.5.1.tgz";
      name = "xmlhttprequest-ssl-1.5.1.tgz";
      sha1 = "3b7741fea4a86675976e908d296d4445961faa67";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xtend"."^4.0.0" =
    self.by-version."xtend"."4.0.1";
  by-version."xtend"."4.0.1" = self.buildNodePackage {
    name = "xtend-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xtend/-/xtend-4.0.1.tgz";
      name = "xtend-4.0.1.tgz";
      sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."y18n"."^3.2.0" =
    self.by-version."y18n"."3.2.0";
  by-version."y18n"."3.2.0" = self.buildNodePackage {
    name = "y18n-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/y18n/-/y18n-3.2.0.tgz";
      name = "y18n-3.2.0.tgz";
      sha1 = "3bec64c93b730d924a6148c765757932433e34c8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yallist"."^2.0.0" =
    self.by-version."yallist"."2.0.0";
  by-version."yallist"."2.0.0" = self.buildNodePackage {
    name = "yallist-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/yallist/-/yallist-2.0.0.tgz";
      name = "yallist-2.0.0.tgz";
      sha1 = "306c543835f09ee1a4cb23b7bce9ab341c91cdd4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yargs"."^3.32.0" =
    self.by-version."yargs"."3.32.0";
  by-version."yargs"."3.32.0" = self.buildNodePackage {
    name = "yargs-3.32.0";
    version = "3.32.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/yargs/-/yargs-3.32.0.tgz";
      name = "yargs-3.32.0.tgz";
      sha1 = "03088e9ebf9e756b69751611d2a5ef591482c995";
    };
    deps = {
      "camelcase-2.1.0" = self.by-version."camelcase"."2.1.0";
      "cliui-3.1.0" = self.by-version."cliui"."3.1.0";
      "decamelize-1.1.2" = self.by-version."decamelize"."1.1.2";
      "os-locale-1.4.0" = self.by-version."os-locale"."1.4.0";
      "string-width-1.0.1" = self.by-version."string-width"."1.0.1";
      "window-size-0.1.4" = self.by-version."window-size"."0.1.4";
      "y18n-3.2.0" = self.by-version."y18n"."3.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "yargs" = self.by-version."yargs"."3.32.0";
  by-spec."yargs"."^3.8.0" =
    self.by-version."yargs"."3.32.0";
  by-spec."yargs"."~3.10.0" =
    self.by-version."yargs"."3.10.0";
  by-version."yargs"."3.10.0" = self.buildNodePackage {
    name = "yargs-3.10.0";
    version = "3.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/yargs/-/yargs-3.10.0.tgz";
      name = "yargs-3.10.0.tgz";
      sha1 = "f7ee7bd857dd7c1d2d38c0e74efbd681d1431fd1";
    };
    deps = {
      "camelcase-1.2.1" = self.by-version."camelcase"."1.2.1";
      "cliui-2.1.0" = self.by-version."cliui"."2.1.0";
      "decamelize-1.1.2" = self.by-version."decamelize"."1.1.2";
      "window-size-0.1.0" = self.by-version."window-size"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yeast"."0.1.2" =
    self.by-version."yeast"."0.1.2";
  by-version."yeast"."0.1.2" = self.buildNodePackage {
    name = "yeast-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/yeast/-/yeast-0.1.2.tgz";
      name = "yeast-0.1.2.tgz";
      sha1 = "008e06d8094320c372dbc2f8ed76a0ca6c8ac419";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
}
