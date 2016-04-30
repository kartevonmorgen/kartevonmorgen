{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."Base64"."~0.2.0" =
    self.by-version."Base64"."0.2.1";
  by-version."Base64"."0.2.1" = self.buildNodePackage {
    name = "Base64-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/Base64/-/Base64-0.2.1.tgz";
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
      url = "https://registry.npmjs.org/abbrev/-/abbrev-1.0.7.tgz";
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
      url = "https://registry.npmjs.org/accepts/-/accepts-1.1.4.tgz";
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
      url = "https://registry.npmjs.org/accepts/-/accepts-1.2.13.tgz";
      name = "accepts-1.2.13.tgz";
      sha1 = "e5f1f3928c6d95fd96558c36ec3d9d0de4a6ecea";
    };
    deps = {
      "mime-types-2.1.10" = self.by-version."mime-types"."2.1.10";
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
    self.by-version."accepts"."1.3.2";
  by-version."accepts"."1.3.2" = self.buildNodePackage {
    name = "accepts-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/accepts/-/accepts-1.3.2.tgz";
      name = "accepts-1.3.2.tgz";
      sha1 = "9bfd7ddc497fdc1dad73a97b3f7cdc133929fac1";
    };
    deps = {
      "mime-types-2.1.10" = self.by-version."mime-types"."2.1.10";
      "negotiator-0.6.0" = self.by-version."negotiator"."0.6.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."acorn"."^3.0.0" =
    self.by-version."acorn"."3.1.0";
  by-version."acorn"."3.1.0" = self.buildNodePackage {
    name = "acorn-3.1.0";
    version = "3.1.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/acorn/-/acorn-3.1.0.tgz";
      name = "acorn-3.1.0.tgz";
      sha1 = "e79a281c23983ccc079471a849866067e7f0c693";
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
      url = "https://registry.npmjs.org/after/-/after-0.8.1.tgz";
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
  by-spec."align-text"."^0.1.1" =
    self.by-version."align-text"."0.1.4";
  by-version."align-text"."0.1.4" = self.buildNodePackage {
    name = "align-text-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/align-text/-/align-text-0.1.4.tgz";
      name = "align-text-0.1.4.tgz";
      sha1 = "0cd90a561093f35d0a99256c22b7069433fad117";
    };
    deps = {
      "kind-of-3.0.2" = self.by-version."kind-of"."3.0.2";
      "longest-1.0.1" = self.by-version."longest"."1.0.1";
      "repeat-string-1.5.4" = self.by-version."repeat-string"."1.5.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."align-text"."^0.1.3" =
    self.by-version."align-text"."0.1.4";
  by-spec."alphanum-sort"."^1.0.1" =
    self.by-version."alphanum-sort"."1.0.2";
  by-version."alphanum-sort"."1.0.2" = self.buildNodePackage {
    name = "alphanum-sort-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/alphanum-sort/-/alphanum-sort-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/amdefine/-/amdefine-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/ansi/-/ansi-0.3.1.tgz";
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
  by-spec."ansi"."~0.3.1" =
    self.by-version."ansi"."0.3.1";
  by-spec."ansi-html"."0.0.5" =
    self.by-version."ansi-html"."0.0.5";
  by-version."ansi-html"."0.0.5" = self.buildNodePackage {
    name = "ansi-html-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ansi-html/-/ansi-html-0.0.5.tgz";
      name = "ansi-html-0.0.5.tgz";
      sha1 = "0dcaa5a081206866bc240a3b773a184ea3b88b64";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^2.0.0" =
    self.by-version."ansi-regex"."2.0.0";
  by-version."ansi-regex"."2.0.0" = self.buildNodePackage {
    name = "ansi-regex-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-2.0.0.tgz";
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
    self.by-version."ansi-styles"."2.2.1";
  by-version."ansi-styles"."2.2.1" = self.buildNodePackage {
    name = "ansi-styles-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-2.2.1.tgz";
      name = "ansi-styles-2.2.1.tgz";
      sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-styles"."^2.2.1" =
    self.by-version."ansi-styles"."2.2.1";
  by-spec."anymatch"."^1.3.0" =
    self.by-version."anymatch"."1.3.0";
  by-version."anymatch"."1.3.0" = self.buildNodePackage {
    name = "anymatch-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/anymatch/-/anymatch-1.3.0.tgz";
      name = "anymatch-1.3.0.tgz";
      sha1 = "a3e52fa39168c825ff57b0248126ce5a8ff95507";
    };
    deps = {
      "arrify-1.0.1" = self.by-version."arrify"."1.0.1";
      "micromatch-2.3.8" = self.by-version."micromatch"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."are-we-there-yet"."~1.1.2" =
    self.by-version."are-we-there-yet"."1.1.2";
  by-version."are-we-there-yet"."1.1.2" = self.buildNodePackage {
    name = "are-we-there-yet-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-1.1.2.tgz";
      name = "are-we-there-yet-1.1.2.tgz";
      sha1 = "80e470e95a084794fe1899262c5667c6e88de1b3";
    };
    deps = {
      "delegates-1.0.0" = self.by-version."delegates"."1.0.0";
      "readable-stream-2.1.2" = self.by-version."readable-stream"."2.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."argparse"."^1.0.7" =
    self.by-version."argparse"."1.0.7";
  by-version."argparse"."1.0.7" = self.buildNodePackage {
    name = "argparse-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/argparse/-/argparse-1.0.7.tgz";
      name = "argparse-1.0.7.tgz";
      sha1 = "c289506480557810f14a8bc62d7a06f63ed7f951";
    };
    deps = {
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
      url = "https://registry.npmjs.org/arr-diff/-/arr-diff-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/arr-flatten/-/arr-flatten-1.0.1.tgz";
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
  by-spec."array-find-index"."^1.0.0" =
    self.by-version."array-find-index"."1.0.1";
  by-version."array-find-index"."1.0.1" = self.buildNodePackage {
    name = "array-find-index-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/array-find-index/-/array-find-index-1.0.1.tgz";
      name = "array-find-index-1.0.1.tgz";
      sha1 = "0bc25ddac941ec8a496ae258fd4ac188003ef3af";
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
      url = "https://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz";
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
      url = "https://registry.npmjs.org/array-index/-/array-index-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/array-slice/-/array-slice-0.2.3.tgz";
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
      url = "https://registry.npmjs.org/array-unique/-/array-unique-0.2.1.tgz";
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
      url = "https://registry.npmjs.org/arraybuffer.slice/-/arraybuffer.slice-0.0.6.tgz";
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
      url = "https://registry.npmjs.org/arrify/-/arrify-1.0.1.tgz";
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
  by-spec."asap"."~2.0.3" =
    self.by-version."asap"."2.0.3";
  by-version."asap"."2.0.3" = self.buildNodePackage {
    name = "asap-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/asap/-/asap-2.0.3.tgz";
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
  by-spec."asn1"."~0.2.3" =
    self.by-version."asn1"."0.2.3";
  by-version."asn1"."0.2.3" = self.buildNodePackage {
    name = "asn1-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/asn1/-/asn1-0.2.3.tgz";
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
  by-spec."asn1.js"."^4.0.0" =
    self.by-version."asn1.js"."4.6.0";
  by-version."asn1.js"."4.6.0" = self.buildNodePackage {
    name = "asn1.js-4.6.0";
    version = "4.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/asn1.js/-/asn1.js-4.6.0.tgz";
      name = "asn1.js-4.6.0.tgz";
      sha1 = "dcf612443e28a4432ed950dab1ff99aafb332bbf";
    };
    deps = {
      "bn.js-4.11.3" = self.by-version."bn.js"."4.11.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimalistic-assert-1.0.0" = self.by-version."minimalistic-assert"."1.0.0";
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
      url = "https://registry.npmjs.org/assert/-/assert-1.3.0.tgz";
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
  by-spec."assert-plus"."^0.2.0" =
    self.by-version."assert-plus"."0.2.0";
  by-version."assert-plus"."0.2.0" = self.buildNodePackage {
    name = "assert-plus-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assert-plus/-/assert-plus-0.2.0.tgz";
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
  by-spec."assert-plus"."^1.0.0" =
    self.by-version."assert-plus"."1.0.0";
  by-version."assert-plus"."1.0.0" = self.buildNodePackage {
    name = "assert-plus-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assert-plus/-/assert-plus-1.0.0.tgz";
      name = "assert-plus-1.0.0.tgz";
      sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assertion-error"."^1.0.1" =
    self.by-version."assertion-error"."1.0.1";
  by-version."assertion-error"."1.0.1" = self.buildNodePackage {
    name = "assertion-error-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assertion-error/-/assertion-error-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/async/-/async-0.9.2.tgz";
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
      url = "https://registry.npmjs.org/async/-/async-1.5.2.tgz";
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
  by-spec."async"."^1.5.2" =
    self.by-version."async"."1.5.2";
  by-spec."async"."~0.2.6" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = self.buildNodePackage {
    name = "async-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/async/-/async-0.2.10.tgz";
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
  by-spec."async"."~0.9.0" =
    self.by-version."async"."0.9.2";
  by-spec."async-each"."^1.0.0" =
    self.by-version."async-each"."1.0.0";
  by-version."async-each"."1.0.0" = self.buildNodePackage {
    name = "async-each-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/async-each/-/async-each-1.0.0.tgz";
      name = "async-each-1.0.0.tgz";
      sha1 = "b5319226c29d99277df63c8aee04093aa5f1d39f";
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
      url = "https://registry.npmjs.org/async-foreach/-/async-foreach-0.1.3.tgz";
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
  by-spec."autoprefixer"."^6.3.1" =
    self.by-version."autoprefixer"."6.3.6";
  by-version."autoprefixer"."6.3.6" = self.buildNodePackage {
    name = "autoprefixer-6.3.6";
    version = "6.3.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/autoprefixer/-/autoprefixer-6.3.6.tgz";
      name = "autoprefixer-6.3.6.tgz";
      sha1 = "de772e1fcda08dce0e992cecf79252d5f008e367";
    };
    deps = {
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
      "normalize-range-0.1.2" = self.by-version."normalize-range"."0.1.2";
      "num2fraction-1.2.2" = self.by-version."num2fraction"."1.2.2";
      "browserslist-1.3.1" = self.by-version."browserslist"."1.3.1";
      "caniuse-db-1.0.30000460" = self.by-version."caniuse-db"."1.0.30000460";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
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
      url = "https://registry.npmjs.org/aws-sign2/-/aws-sign2-0.6.0.tgz";
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
  by-spec."aws4"."^1.2.1" =
    self.by-version."aws4"."1.3.2";
  by-version."aws4"."1.3.2" = self.buildNodePackage {
    name = "aws4-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/aws4/-/aws4-1.3.2.tgz";
      name = "aws4-1.3.2.tgz";
      sha1 = "d39e0bee412ced0e8ed94a23e314f313a95b9fd1";
    };
    deps = {
      "lru-cache-4.0.1" = self.by-version."lru-cache"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel"."^6.5.2" =
    self.by-version."babel"."6.5.2";
  by-version."babel"."6.5.2" = self.buildNodePackage {
    name = "babel-6.5.2";
    version = "6.5.2";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel/-/babel-6.5.2.tgz";
      name = "babel-6.5.2.tgz";
      sha1 = "59140607438270920047ff56f02b2d8630c2d129";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel" = self.by-version."babel"."6.5.2";
  by-spec."babel-code-frame"."^6.7.5" =
    self.by-version."babel-code-frame"."6.7.7";
  by-version."babel-code-frame"."6.7.7" = self.buildNodePackage {
    name = "babel-code-frame-6.7.7";
    version = "6.7.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-code-frame/-/babel-code-frame-6.7.7.tgz";
      name = "babel-code-frame-6.7.7.tgz";
      sha1 = "e014f2fcab3882eb21c705c54c55b76c7ce9e681";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "esutils-2.0.2" = self.by-version."esutils"."2.0.2";
      "js-tokens-1.0.3" = self.by-version."js-tokens"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-code-frame"."^6.7.7" =
    self.by-version."babel-code-frame"."6.7.7";
  by-spec."babel-core"."^6.0.0" =
    self.by-version."babel-core"."6.7.7";
  by-version."babel-core"."6.7.7" = self.buildNodePackage {
    name = "babel-core-6.7.7";
    version = "6.7.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-core/-/babel-core-6.7.7.tgz";
      name = "babel-core-6.7.7.tgz";
      sha1 = "74fbdf963a825ed74e136ab100cc9f07e3c3e4e2";
    };
    deps = {
      "babel-code-frame-6.7.7" = self.by-version."babel-code-frame"."6.7.7";
      "babel-generator-6.7.7" = self.by-version."babel-generator"."6.7.7";
      "babel-helpers-6.6.0" = self.by-version."babel-helpers"."6.6.0";
      "babel-messages-6.7.2" = self.by-version."babel-messages"."6.7.2";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-register-6.7.2" = self.by-version."babel-register"."6.7.2";
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babylon-6.7.0" = self.by-version."babylon"."6.7.0";
      "convert-source-map-1.2.0" = self.by-version."convert-source-map"."1.2.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "json5-0.4.0" = self.by-version."json5"."0.4.0";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "path-exists-1.0.0" = self.by-version."path-exists"."1.0.0";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "private-0.1.6" = self.by-version."private"."0.1.6";
      "shebang-regex-1.0.0" = self.by-version."shebang-regex"."1.0.0";
      "slash-1.0.0" = self.by-version."slash"."1.0.0";
      "source-map-0.5.5" = self.by-version."source-map"."0.5.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-core"."^6.6.5" =
    self.by-version."babel-core"."6.7.7";
  by-spec."babel-core"."^6.7.2" =
    self.by-version."babel-core"."6.7.7";
  by-spec."babel-core"."^6.7.6" =
    self.by-version."babel-core"."6.7.7";
  "babel-core" = self.by-version."babel-core"."6.7.7";
  by-spec."babel-generator"."^6.7.7" =
    self.by-version."babel-generator"."6.7.7";
  by-version."babel-generator"."6.7.7" = self.buildNodePackage {
    name = "babel-generator-6.7.7";
    version = "6.7.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-generator/-/babel-generator-6.7.7.tgz";
      name = "babel-generator-6.7.7.tgz";
      sha1 = "63942a8920cdb9afb37c86089671522ffdd85796";
    };
    deps = {
      "babel-messages-6.7.2" = self.by-version."babel-messages"."6.7.2";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "detect-indent-3.0.1" = self.by-version."detect-indent"."3.0.1";
      "is-integer-1.0.6" = self.by-version."is-integer"."1.0.6";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "repeating-1.1.3" = self.by-version."repeating"."1.1.3";
      "source-map-0.5.5" = self.by-version."source-map"."0.5.5";
      "trim-right-1.0.1" = self.by-version."trim-right"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-bindify-decorators"."^6.6.5" =
    self.by-version."babel-helper-bindify-decorators"."6.6.5";
  by-version."babel-helper-bindify-decorators"."6.6.5" = self.buildNodePackage {
    name = "babel-helper-bindify-decorators-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-bindify-decorators/-/babel-helper-bindify-decorators-6.6.5.tgz";
      name = "babel-helper-bindify-decorators-6.6.5.tgz";
      sha1 = "afb6e0e170bbc5a3f3a1b58de2c81d43e81ce365";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-builder-binary-assignment-operator-visitor"."^6.3.13" =
    self.by-version."babel-helper-builder-binary-assignment-operator-visitor"."6.6.5";
  by-version."babel-helper-builder-binary-assignment-operator-visitor"."6.6.5" = self.buildNodePackage {
    name = "babel-helper-builder-binary-assignment-operator-visitor-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-builder-binary-assignment-operator-visitor/-/babel-helper-builder-binary-assignment-operator-visitor-6.6.5.tgz";
      name = "babel-helper-builder-binary-assignment-operator-visitor-6.6.5.tgz";
      sha1 = "e7023d750cbe454749513c77eb6d5ea28b428c0f";
    };
    deps = {
      "babel-helper-explode-assignable-expression-6.6.5" = self.by-version."babel-helper-explode-assignable-expression"."6.6.5";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-builder-react-jsx"."^6.7.5" =
    self.by-version."babel-helper-builder-react-jsx"."6.7.5";
  by-version."babel-helper-builder-react-jsx"."6.7.5" = self.buildNodePackage {
    name = "babel-helper-builder-react-jsx-6.7.5";
    version = "6.7.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-builder-react-jsx/-/babel-helper-builder-react-jsx-6.7.5.tgz";
      name = "babel-helper-builder-react-jsx-6.7.5.tgz";
      sha1 = "ca2ad325e810ba3ce03a58010a0972cefec77c06";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "esutils-2.0.2" = self.by-version."esutils"."2.0.2";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-call-delegate"."^6.6.5" =
    self.by-version."babel-helper-call-delegate"."6.6.5";
  by-version."babel-helper-call-delegate"."6.6.5" = self.buildNodePackage {
    name = "babel-helper-call-delegate-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-call-delegate/-/babel-helper-call-delegate-6.6.5.tgz";
      name = "babel-helper-call-delegate-6.6.5.tgz";
      sha1 = "d7c8ce67d8e1d28ef172301b16680c36c45f6e63";
    };
    deps = {
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-helper-hoist-variables-6.6.5" = self.by-version."babel-helper-hoist-variables"."6.6.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-define-map"."^6.6.5" =
    self.by-version."babel-helper-define-map"."6.6.5";
  by-version."babel-helper-define-map"."6.6.5" = self.buildNodePackage {
    name = "babel-helper-define-map-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-define-map/-/babel-helper-define-map-6.6.5.tgz";
      name = "babel-helper-define-map-6.6.5.tgz";
      sha1 = "1615cf12b07ce5f545958f21f9a21ab36fcb5985";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-helper-function-name-6.6.0" = self.by-version."babel-helper-function-name"."6.6.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-explode-assignable-expression"."^6.6.5" =
    self.by-version."babel-helper-explode-assignable-expression"."6.6.5";
  by-version."babel-helper-explode-assignable-expression"."6.6.5" = self.buildNodePackage {
    name = "babel-helper-explode-assignable-expression-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-explode-assignable-expression/-/babel-helper-explode-assignable-expression-6.6.5.tgz";
      name = "babel-helper-explode-assignable-expression-6.6.5.tgz";
      sha1 = "bf84547f5fbd4429120162ef4ab6b781fbfd51a0";
    };
    deps = {
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-explode-class"."^6.6.5" =
    self.by-version."babel-helper-explode-class"."6.6.5";
  by-version."babel-helper-explode-class"."6.6.5" = self.buildNodePackage {
    name = "babel-helper-explode-class-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-explode-class/-/babel-helper-explode-class-6.6.5.tgz";
      name = "babel-helper-explode-class-6.6.5.tgz";
      sha1 = "c201bf2b1fff72668f9c9665e7549cd98bce1dab";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-helper-bindify-decorators-6.6.5" = self.by-version."babel-helper-bindify-decorators"."6.6.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-function-name"."^6.4.0" =
    self.by-version."babel-helper-function-name"."6.6.0";
  by-version."babel-helper-function-name"."6.6.0" = self.buildNodePackage {
    name = "babel-helper-function-name-6.6.0";
    version = "6.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-function-name/-/babel-helper-function-name-6.6.0.tgz";
      name = "babel-helper-function-name-6.6.0.tgz";
      sha1 = "1c2866b3cd089f71bbe5fac0bf2932002065bbbb";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-helper-get-function-arity-6.6.5" = self.by-version."babel-helper-get-function-arity"."6.6.5";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-function-name"."^6.6.0" =
    self.by-version."babel-helper-function-name"."6.6.0";
  by-spec."babel-helper-get-function-arity"."^6.3.13" =
    self.by-version."babel-helper-get-function-arity"."6.6.5";
  by-version."babel-helper-get-function-arity"."6.6.5" = self.buildNodePackage {
    name = "babel-helper-get-function-arity-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-get-function-arity/-/babel-helper-get-function-arity-6.6.5.tgz";
      name = "babel-helper-get-function-arity-6.6.5.tgz";
      sha1 = "702d54b2e06201c643c044611056da5258f78ab5";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-get-function-arity"."^6.6.5" =
    self.by-version."babel-helper-get-function-arity"."6.6.5";
  by-spec."babel-helper-hoist-variables"."^6.6.5" =
    self.by-version."babel-helper-hoist-variables"."6.6.5";
  by-version."babel-helper-hoist-variables"."6.6.5" = self.buildNodePackage {
    name = "babel-helper-hoist-variables-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-hoist-variables/-/babel-helper-hoist-variables-6.6.5.tgz";
      name = "babel-helper-hoist-variables-6.6.5.tgz";
      sha1 = "c48f619536d51d5c990dd2193b0b204e8ff2bba5";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-optimise-call-expression"."^6.6.0" =
    self.by-version."babel-helper-optimise-call-expression"."6.6.0";
  by-version."babel-helper-optimise-call-expression"."6.6.0" = self.buildNodePackage {
    name = "babel-helper-optimise-call-expression-6.6.0";
    version = "6.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-optimise-call-expression/-/babel-helper-optimise-call-expression-6.6.0.tgz";
      name = "babel-helper-optimise-call-expression-6.6.0.tgz";
      sha1 = "cd0f755178aa02dc930d68eb4c760b476bc4b98f";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-regex"."^6.3.13" =
    self.by-version."babel-helper-regex"."6.6.5";
  by-version."babel-helper-regex"."6.6.5" = self.buildNodePackage {
    name = "babel-helper-regex-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-regex/-/babel-helper-regex-6.6.5.tgz";
      name = "babel-helper-regex-6.6.5.tgz";
      sha1 = "44b36f2f15948da9a60741dfab6a52061ed143e9";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-remap-async-to-generator"."^6.7.0" =
    self.by-version."babel-helper-remap-async-to-generator"."6.7.0";
  by-version."babel-helper-remap-async-to-generator"."6.7.0" = self.buildNodePackage {
    name = "babel-helper-remap-async-to-generator-6.7.0";
    version = "6.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-remap-async-to-generator/-/babel-helper-remap-async-to-generator-6.7.0.tgz";
      name = "babel-helper-remap-async-to-generator-6.7.0.tgz";
      sha1 = "b5cdbf058170bac710df314a6133097ec3c9629d";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-helper-function-name-6.6.0" = self.by-version."babel-helper-function-name"."6.6.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-replace-supers"."^6.6.5" =
    self.by-version."babel-helper-replace-supers"."6.7.0";
  by-version."babel-helper-replace-supers"."6.7.0" = self.buildNodePackage {
    name = "babel-helper-replace-supers-6.7.0";
    version = "6.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-replace-supers/-/babel-helper-replace-supers-6.7.0.tgz";
      name = "babel-helper-replace-supers-6.7.0.tgz";
      sha1 = "517426656a4199ddc87c8c09ebbf70c58fb1a07b";
    };
    deps = {
      "babel-helper-optimise-call-expression-6.6.0" = self.by-version."babel-helper-optimise-call-expression"."6.6.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-messages-6.7.2" = self.by-version."babel-messages"."6.7.2";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helpers"."^6.6.0" =
    self.by-version."babel-helpers"."6.6.0";
  by-version."babel-helpers"."6.6.0" = self.buildNodePackage {
    name = "babel-helpers-6.6.0";
    version = "6.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helpers/-/babel-helpers-6.6.0.tgz";
      name = "babel-helpers-6.6.0.tgz";
      sha1 = "4fb005326569eeec9f5990176b539ea3a424b71c";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-loader"."^6.2.4" =
    self.by-version."babel-loader"."6.2.4";
  by-version."babel-loader"."6.2.4" = self.buildNodePackage {
    name = "babel-loader-6.2.4";
    version = "6.2.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-loader/-/babel-loader-6.2.4.tgz";
      name = "babel-loader-6.2.4.tgz";
      sha1 = "aa70aff8ddc223a5952e839a43a6c3a4c8bfa1e9";
    };
    deps = {
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."babel-core"."6.7.7"
      self.by-version."webpack"."2.1.0-beta.6"];
    os = [ ];
    cpu = [ ];
  };
  "babel-loader" = self.by-version."babel-loader"."6.2.4";
  by-spec."babel-messages"."^6.6.5" =
    self.by-version."babel-messages"."6.7.2";
  by-version."babel-messages"."6.7.2" = self.buildNodePackage {
    name = "babel-messages-6.7.2";
    version = "6.7.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-messages/-/babel-messages-6.7.2.tgz";
      name = "babel-messages-6.7.2.tgz";
      sha1 = "d46dbfc69da4c27e0e145c17441fc617cf76af71";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-messages"."^6.7.2" =
    self.by-version."babel-messages"."6.7.2";
  by-spec."babel-plugin-check-es2015-constants"."^6.3.13" =
    self.by-version."babel-plugin-check-es2015-constants"."6.7.2";
  by-version."babel-plugin-check-es2015-constants"."6.7.2" = self.buildNodePackage {
    name = "babel-plugin-check-es2015-constants-6.7.2";
    version = "6.7.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-check-es2015-constants/-/babel-plugin-check-es2015-constants-6.7.2.tgz";
      name = "babel-plugin-check-es2015-constants-6.7.2.tgz";
      sha1 = "c991c266ee3ce690dc573feb65c06ea6768e5f48";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-react-transform"."^2.0.2" =
    self.by-version."babel-plugin-react-transform"."2.0.2";
  by-version."babel-plugin-react-transform"."2.0.2" = self.buildNodePackage {
    name = "babel-plugin-react-transform-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-react-transform/-/babel-plugin-react-transform-2.0.2.tgz";
      name = "babel-plugin-react-transform-2.0.2.tgz";
      sha1 = "515bbfa996893981142d90b1f9b1635de2995109";
    };
    deps = {
      "lodash-4.11.1" = self.by-version."lodash"."4.11.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-async-functions"."^6.3.13" =
    self.by-version."babel-plugin-syntax-async-functions"."6.5.0";
  by-version."babel-plugin-syntax-async-functions"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-async-functions-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-async-functions/-/babel-plugin-syntax-async-functions-6.5.0.tgz";
      name = "babel-plugin-syntax-async-functions-6.5.0.tgz";
      sha1 = "90a5ce81d450f3cba176db5f7412a5c5d80727c0";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-class-constructor-call"."^6.3.13" =
    self.by-version."babel-plugin-syntax-class-constructor-call"."6.5.0";
  by-version."babel-plugin-syntax-class-constructor-call"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-class-constructor-call-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-class-constructor-call/-/babel-plugin-syntax-class-constructor-call-6.5.0.tgz";
      name = "babel-plugin-syntax-class-constructor-call-6.5.0.tgz";
      sha1 = "d3551cbb398d2c0194703205128c3737d64a9c25";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-class-properties"."^6.3.13" =
    self.by-version."babel-plugin-syntax-class-properties"."6.5.0";
  by-version."babel-plugin-syntax-class-properties"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-class-properties-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-class-properties/-/babel-plugin-syntax-class-properties-6.5.0.tgz";
      name = "babel-plugin-syntax-class-properties-6.5.0.tgz";
      sha1 = "5747dba868852251fffd8230fcc1d41f93922393";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-decorators"."^6.1.18" =
    self.by-version."babel-plugin-syntax-decorators"."6.5.0";
  by-version."babel-plugin-syntax-decorators"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-decorators-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-decorators/-/babel-plugin-syntax-decorators-6.5.0.tgz";
      name = "babel-plugin-syntax-decorators-6.5.0.tgz";
      sha1 = "867ff6425e28b9f2ca11d5c5cf4bfa0e791af16a";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-decorators"."^6.3.13" =
    self.by-version."babel-plugin-syntax-decorators"."6.5.0";
  by-spec."babel-plugin-syntax-do-expressions"."^6.3.13" =
    self.by-version."babel-plugin-syntax-do-expressions"."6.5.0";
  by-version."babel-plugin-syntax-do-expressions"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-do-expressions-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-do-expressions/-/babel-plugin-syntax-do-expressions-6.5.0.tgz";
      name = "babel-plugin-syntax-do-expressions-6.5.0.tgz";
      sha1 = "09e431ea60139a720b4d84ada7049fff8a24cb58";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-exponentiation-operator"."^6.3.13" =
    self.by-version."babel-plugin-syntax-exponentiation-operator"."6.5.0";
  by-version."babel-plugin-syntax-exponentiation-operator"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-exponentiation-operator-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-exponentiation-operator/-/babel-plugin-syntax-exponentiation-operator-6.5.0.tgz";
      name = "babel-plugin-syntax-exponentiation-operator-6.5.0.tgz";
      sha1 = "d7bfb479e86bc1c39ee45e6013fb82ddc27326ce";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-export-extensions"."^6.3.13" =
    self.by-version."babel-plugin-syntax-export-extensions"."6.5.0";
  by-version."babel-plugin-syntax-export-extensions"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-export-extensions-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-export-extensions/-/babel-plugin-syntax-export-extensions-6.5.0.tgz";
      name = "babel-plugin-syntax-export-extensions-6.5.0.tgz";
      sha1 = "1220e9a2f53447d86038a396af91a1b9f1f57276";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-flow"."^6.3.13" =
    self.by-version."babel-plugin-syntax-flow"."6.5.0";
  by-version."babel-plugin-syntax-flow"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-flow-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-flow/-/babel-plugin-syntax-flow-6.5.0.tgz";
      name = "babel-plugin-syntax-flow-6.5.0.tgz";
      sha1 = "07dfe735b45fce8905296296a40072afce82b215";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-flow"."^6.5.0" =
    self.by-version."babel-plugin-syntax-flow"."6.5.0";
  by-spec."babel-plugin-syntax-function-bind"."^6.3.13" =
    self.by-version."babel-plugin-syntax-function-bind"."6.5.0";
  by-version."babel-plugin-syntax-function-bind"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-function-bind-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-function-bind/-/babel-plugin-syntax-function-bind-6.5.0.tgz";
      name = "babel-plugin-syntax-function-bind-6.5.0.tgz";
      sha1 = "0cdec9b196ec665bc394fa32b44e02c99d58876a";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-jsx"."^6.3.13" =
    self.by-version."babel-plugin-syntax-jsx"."6.5.0";
  by-version."babel-plugin-syntax-jsx"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-jsx-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-jsx/-/babel-plugin-syntax-jsx-6.5.0.tgz";
      name = "babel-plugin-syntax-jsx-6.5.0.tgz";
      sha1 = "fa708c5761d13ec39128a4ba24abfe8be6ad8170";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-object-rest-spread"."^6.3.13" =
    self.by-version."babel-plugin-syntax-object-rest-spread"."6.5.0";
  by-version."babel-plugin-syntax-object-rest-spread"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-object-rest-spread-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-object-rest-spread/-/babel-plugin-syntax-object-rest-spread-6.5.0.tgz";
      name = "babel-plugin-syntax-object-rest-spread-6.5.0.tgz";
      sha1 = "f39dcf999927571fc8ff2c0309329feab3577beb";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-trailing-function-commas"."^6.3.13" =
    self.by-version."babel-plugin-syntax-trailing-function-commas"."6.5.0";
  by-version."babel-plugin-syntax-trailing-function-commas"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-trailing-function-commas-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-trailing-function-commas/-/babel-plugin-syntax-trailing-function-commas-6.5.0.tgz";
      name = "babel-plugin-syntax-trailing-function-commas-6.5.0.tgz";
      sha1 = "44b9d4c9f65881d88811dbb6f68a33c2e5a3da62";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-async-to-generator"."^6.3.13" =
    self.by-version."babel-plugin-transform-async-to-generator"."6.7.4";
  by-version."babel-plugin-transform-async-to-generator"."6.7.4" = self.buildNodePackage {
    name = "babel-plugin-transform-async-to-generator-6.7.4";
    version = "6.7.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-async-to-generator/-/babel-plugin-transform-async-to-generator-6.7.4.tgz";
      name = "babel-plugin-transform-async-to-generator-6.7.4.tgz";
      sha1 = "aec7c7ae45fadc9a916ecdef7879785dbd45f9ae";
    };
    deps = {
      "babel-helper-remap-async-to-generator-6.7.0" = self.by-version."babel-helper-remap-async-to-generator"."6.7.0";
      "babel-plugin-syntax-async-functions-6.5.0" = self.by-version."babel-plugin-syntax-async-functions"."6.5.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-class-constructor-call"."^6.3.13" =
    self.by-version."babel-plugin-transform-class-constructor-call"."6.6.5";
  by-version."babel-plugin-transform-class-constructor-call"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-class-constructor-call-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-class-constructor-call/-/babel-plugin-transform-class-constructor-call-6.6.5.tgz";
      name = "babel-plugin-transform-class-constructor-call-6.6.5.tgz";
      sha1 = "50331bcdb1d33e37a39a6426db1de03e9f78a066";
    };
    deps = {
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
      "babel-plugin-syntax-class-constructor-call-6.5.0" = self.by-version."babel-plugin-syntax-class-constructor-call"."6.5.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-class-properties"."^6.3.13" =
    self.by-version."babel-plugin-transform-class-properties"."6.6.0";
  by-version."babel-plugin-transform-class-properties"."6.6.0" = self.buildNodePackage {
    name = "babel-plugin-transform-class-properties-6.6.0";
    version = "6.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-class-properties/-/babel-plugin-transform-class-properties-6.6.0.tgz";
      name = "babel-plugin-transform-class-properties-6.6.0.tgz";
      sha1 = "42341b72eb636fc9acd5837077b8dba190fb4271";
    };
    deps = {
      "babel-plugin-syntax-class-properties-6.5.0" = self.by-version."babel-plugin-syntax-class-properties"."6.5.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-decorators"."^6.3.13" =
    self.by-version."babel-plugin-transform-decorators"."6.6.5";
  by-version."babel-plugin-transform-decorators"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-decorators-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-decorators/-/babel-plugin-transform-decorators-6.6.5.tgz";
      name = "babel-plugin-transform-decorators-6.6.5.tgz";
      sha1 = "ab267da258a4ecab61da8d80cde9d1a5aed075ab";
    };
    deps = {
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-helper-define-map-6.6.5" = self.by-version."babel-helper-define-map"."6.6.5";
      "babel-plugin-syntax-decorators-6.5.0" = self.by-version."babel-plugin-syntax-decorators"."6.5.0";
      "babel-helper-explode-class-6.6.5" = self.by-version."babel-helper-explode-class"."6.6.5";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-decorators-legacy"."^1.3.4" =
    self.by-version."babel-plugin-transform-decorators-legacy"."1.3.4";
  by-version."babel-plugin-transform-decorators-legacy"."1.3.4" = self.buildNodePackage {
    name = "babel-plugin-transform-decorators-legacy-1.3.4";
    version = "1.3.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-decorators-legacy/-/babel-plugin-transform-decorators-legacy-1.3.4.tgz";
      name = "babel-plugin-transform-decorators-legacy-1.3.4.tgz";
      sha1 = "741b58f6c5bce9e6027e0882d9c994f04f366925";
    };
    deps = {
      "babel-plugin-syntax-decorators-6.5.0" = self.by-version."babel-plugin-syntax-decorators"."6.5.0";
      "babel-runtime-6.6.1" = self.by-version."babel-runtime"."6.6.1";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel-plugin-transform-decorators-legacy" = self.by-version."babel-plugin-transform-decorators-legacy"."1.3.4";
  by-spec."babel-plugin-transform-do-expressions"."^6.3.13" =
    self.by-version."babel-plugin-transform-do-expressions"."6.5.0";
  by-version."babel-plugin-transform-do-expressions"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-transform-do-expressions-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-do-expressions/-/babel-plugin-transform-do-expressions-6.5.0.tgz";
      name = "babel-plugin-transform-do-expressions-6.5.0.tgz";
      sha1 = "0b59511f0c0443bce5f987a2bf458b59658b2e06";
    };
    deps = {
      "babel-plugin-syntax-do-expressions-6.5.0" = self.by-version."babel-plugin-syntax-do-expressions"."6.5.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-arrow-functions"."^6.3.13" =
    self.by-version."babel-plugin-transform-es2015-arrow-functions"."6.7.7";
  by-version."babel-plugin-transform-es2015-arrow-functions"."6.7.7" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-arrow-functions-6.7.7";
    version = "6.7.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-arrow-functions/-/babel-plugin-transform-es2015-arrow-functions-6.7.7.tgz";
      name = "babel-plugin-transform-es2015-arrow-functions-6.7.7.tgz";
      sha1 = "66b8f0c4a2f375e2b70ab67f6e4ed057cd492d77";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-block-scoped-functions"."^6.3.13" =
    self.by-version."babel-plugin-transform-es2015-block-scoped-functions"."6.6.5";
  by-version."babel-plugin-transform-es2015-block-scoped-functions"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-block-scoped-functions-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-block-scoped-functions/-/babel-plugin-transform-es2015-block-scoped-functions-6.6.5.tgz";
      name = "babel-plugin-transform-es2015-block-scoped-functions-6.6.5.tgz";
      sha1 = "640d8918a32fb2b5ee4ad205c2b5a248e1083fe6";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-block-scoping"."^6.6.0" =
    self.by-version."babel-plugin-transform-es2015-block-scoping"."6.7.1";
  by-version."babel-plugin-transform-es2015-block-scoping"."6.7.1" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-block-scoping-6.7.1";
    version = "6.7.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-block-scoping/-/babel-plugin-transform-es2015-block-scoping-6.7.1.tgz";
      name = "babel-plugin-transform-es2015-block-scoping-6.7.1.tgz";
      sha1 = "a5786b0671ceb6d48e44e74b45d00fce42922ba6";
    };
    deps = {
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-block-scoping"."^6.6.5" =
    self.by-version."babel-plugin-transform-es2015-block-scoping"."6.7.1";
  by-spec."babel-plugin-transform-es2015-classes"."^6.6.0" =
    self.by-version."babel-plugin-transform-es2015-classes"."6.7.7";
  by-version."babel-plugin-transform-es2015-classes"."6.7.7" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-classes-6.7.7";
    version = "6.7.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-classes/-/babel-plugin-transform-es2015-classes-6.7.7.tgz";
      name = "babel-plugin-transform-es2015-classes-6.7.7.tgz";
      sha1 = "2107a53f8ca4394d2b35e058e1eba415eecf6007";
    };
    deps = {
      "babel-helper-optimise-call-expression-6.6.0" = self.by-version."babel-helper-optimise-call-expression"."6.6.0";
      "babel-helper-function-name-6.6.0" = self.by-version."babel-helper-function-name"."6.6.0";
      "babel-helper-replace-supers-6.7.0" = self.by-version."babel-helper-replace-supers"."6.7.0";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-helper-define-map-6.6.5" = self.by-version."babel-helper-define-map"."6.6.5";
      "babel-messages-6.7.2" = self.by-version."babel-messages"."6.7.2";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-computed-properties"."^6.3.13" =
    self.by-version."babel-plugin-transform-es2015-computed-properties"."6.6.5";
  by-version."babel-plugin-transform-es2015-computed-properties"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-computed-properties-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-computed-properties/-/babel-plugin-transform-es2015-computed-properties-6.6.5.tgz";
      name = "babel-plugin-transform-es2015-computed-properties-6.6.5.tgz";
      sha1 = "cedf487857aa1ae25d5c1795402e78a45fd98a0f";
    };
    deps = {
      "babel-helper-define-map-6.6.5" = self.by-version."babel-helper-define-map"."6.6.5";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-destructuring"."^6.6.0" =
    self.by-version."babel-plugin-transform-es2015-destructuring"."6.6.5";
  by-version."babel-plugin-transform-es2015-destructuring"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-destructuring-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-destructuring/-/babel-plugin-transform-es2015-destructuring-6.6.5.tgz";
      name = "babel-plugin-transform-es2015-destructuring-6.6.5.tgz";
      sha1 = "6ccb14e245f80a015ee219b0143cf1df59ecd223";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-duplicate-keys"."^6.6.0" =
    self.by-version."babel-plugin-transform-es2015-duplicate-keys"."6.6.4";
  by-version."babel-plugin-transform-es2015-duplicate-keys"."6.6.4" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-duplicate-keys-6.6.4";
    version = "6.6.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-duplicate-keys/-/babel-plugin-transform-es2015-duplicate-keys-6.6.4.tgz";
      name = "babel-plugin-transform-es2015-duplicate-keys-6.6.4.tgz";
      sha1 = "90a332b9441633431d871df693f188875cfc5065";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-for-of"."^6.6.0" =
    self.by-version."babel-plugin-transform-es2015-for-of"."6.6.0";
  by-version."babel-plugin-transform-es2015-for-of"."6.6.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-for-of-6.6.0";
    version = "6.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-for-of/-/babel-plugin-transform-es2015-for-of-6.6.0.tgz";
      name = "babel-plugin-transform-es2015-for-of-6.6.0.tgz";
      sha1 = "9b14ed6e95293bcc5b624fdc5fbab39902834758";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-function-name"."^6.3.13" =
    self.by-version."babel-plugin-transform-es2015-function-name"."6.5.0";
  by-version."babel-plugin-transform-es2015-function-name"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-function-name-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-function-name/-/babel-plugin-transform-es2015-function-name-6.5.0.tgz";
      name = "babel-plugin-transform-es2015-function-name-6.5.0.tgz";
      sha1 = "2939dc437acac705e3c9468542b6e4ac05179088";
    };
    deps = {
      "babel-helper-function-name-6.6.0" = self.by-version."babel-helper-function-name"."6.6.0";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-literals"."^6.3.13" =
    self.by-version."babel-plugin-transform-es2015-literals"."6.5.0";
  by-version."babel-plugin-transform-es2015-literals"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-literals-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-literals/-/babel-plugin-transform-es2015-literals-6.5.0.tgz";
      name = "babel-plugin-transform-es2015-literals-6.5.0.tgz";
      sha1 = "5c467a07ebb05db4d42bdb7980a83227368aad00";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-modules-commonjs"."^6.6.0" =
    self.by-version."babel-plugin-transform-es2015-modules-commonjs"."6.7.7";
  by-version."babel-plugin-transform-es2015-modules-commonjs"."6.7.7" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-modules-commonjs-6.7.7";
    version = "6.7.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-modules-commonjs/-/babel-plugin-transform-es2015-modules-commonjs-6.7.7.tgz";
      name = "babel-plugin-transform-es2015-modules-commonjs-6.7.7.tgz";
      sha1 = "fa5ca2016617c4d712123d8cfc15787fcaa83f33";
    };
    deps = {
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
      "babel-plugin-transform-strict-mode-6.6.5" = self.by-version."babel-plugin-transform-strict-mode"."6.6.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-object-super"."^6.3.13" =
    self.by-version."babel-plugin-transform-es2015-object-super"."6.6.5";
  by-version."babel-plugin-transform-es2015-object-super"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-object-super-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-object-super/-/babel-plugin-transform-es2015-object-super-6.6.5.tgz";
      name = "babel-plugin-transform-es2015-object-super-6.6.5.tgz";
      sha1 = "ed29ca5b175d97e8acdadc258bcf40a564e906a4";
    };
    deps = {
      "babel-helper-replace-supers-6.7.0" = self.by-version."babel-helper-replace-supers"."6.7.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-parameters"."^6.6.0" =
    self.by-version."babel-plugin-transform-es2015-parameters"."6.7.0";
  by-version."babel-plugin-transform-es2015-parameters"."6.7.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-parameters-6.7.0";
    version = "6.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-parameters/-/babel-plugin-transform-es2015-parameters-6.7.0.tgz";
      name = "babel-plugin-transform-es2015-parameters-6.7.0.tgz";
      sha1 = "5d993482ea432934d4918de6065fc330b56cbcb7";
    };
    deps = {
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-helper-call-delegate-6.6.5" = self.by-version."babel-helper-call-delegate"."6.6.5";
      "babel-helper-get-function-arity-6.6.5" = self.by-version."babel-helper-get-function-arity"."6.6.5";
      "babel-template-6.7.0" = self.by-version."babel-template"."6.7.0";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-shorthand-properties"."^6.3.13" =
    self.by-version."babel-plugin-transform-es2015-shorthand-properties"."6.5.0";
  by-version."babel-plugin-transform-es2015-shorthand-properties"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-shorthand-properties-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-shorthand-properties/-/babel-plugin-transform-es2015-shorthand-properties-6.5.0.tgz";
      name = "babel-plugin-transform-es2015-shorthand-properties-6.5.0.tgz";
      sha1 = "8d7c8fa332826546c86c94b83faf226ad0182559";
    };
    deps = {
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-spread"."^6.3.13" =
    self.by-version."babel-plugin-transform-es2015-spread"."6.6.5";
  by-version."babel-plugin-transform-es2015-spread"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-spread-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-spread/-/babel-plugin-transform-es2015-spread-6.6.5.tgz";
      name = "babel-plugin-transform-es2015-spread-6.6.5.tgz";
      sha1 = "e1a496c686cc4710f40bc80465841dc1fac80511";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-sticky-regex"."^6.3.13" =
    self.by-version."babel-plugin-transform-es2015-sticky-regex"."6.5.0";
  by-version."babel-plugin-transform-es2015-sticky-regex"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-sticky-regex-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-sticky-regex/-/babel-plugin-transform-es2015-sticky-regex-6.5.0.tgz";
      name = "babel-plugin-transform-es2015-sticky-regex-6.5.0.tgz";
      sha1 = "eb8bb6b474d2c0a4d8855f05fe4f5b197c45b49c";
    };
    deps = {
      "babel-helper-regex-6.6.5" = self.by-version."babel-helper-regex"."6.6.5";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-template-literals"."^6.6.0" =
    self.by-version."babel-plugin-transform-es2015-template-literals"."6.6.5";
  by-version."babel-plugin-transform-es2015-template-literals"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-template-literals-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-template-literals/-/babel-plugin-transform-es2015-template-literals-6.6.5.tgz";
      name = "babel-plugin-transform-es2015-template-literals-6.6.5.tgz";
      sha1 = "f403aa2651e29606cf02884c3ca09bd8d2163c5e";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-typeof-symbol"."^6.6.0" =
    self.by-version."babel-plugin-transform-es2015-typeof-symbol"."6.6.0";
  by-version."babel-plugin-transform-es2015-typeof-symbol"."6.6.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-typeof-symbol-6.6.0";
    version = "6.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-typeof-symbol/-/babel-plugin-transform-es2015-typeof-symbol-6.6.0.tgz";
      name = "babel-plugin-transform-es2015-typeof-symbol-6.6.0.tgz";
      sha1 = "479d66f966047ff1c18af233c3d12d4d0679dd38";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-unicode-regex"."^6.3.13" =
    self.by-version."babel-plugin-transform-es2015-unicode-regex"."6.5.0";
  by-version."babel-plugin-transform-es2015-unicode-regex"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-unicode-regex-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-unicode-regex/-/babel-plugin-transform-es2015-unicode-regex-6.5.0.tgz";
      name = "babel-plugin-transform-es2015-unicode-regex-6.5.0.tgz";
      sha1 = "f53143d2df3db96b830c8162510b36758016ddef";
    };
    deps = {
      "babel-helper-regex-6.6.5" = self.by-version."babel-helper-regex"."6.6.5";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "regexpu-core-1.0.0" = self.by-version."regexpu-core"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-exponentiation-operator"."^6.3.13" =
    self.by-version."babel-plugin-transform-exponentiation-operator"."6.5.0";
  by-version."babel-plugin-transform-exponentiation-operator"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-transform-exponentiation-operator-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-exponentiation-operator/-/babel-plugin-transform-exponentiation-operator-6.5.0.tgz";
      name = "babel-plugin-transform-exponentiation-operator-6.5.0.tgz";
      sha1 = "caf0ccf745d71b1d91a4e082edb83d147a1a6253";
    };
    deps = {
      "babel-plugin-syntax-exponentiation-operator-6.5.0" = self.by-version."babel-plugin-syntax-exponentiation-operator"."6.5.0";
      "babel-helper-builder-binary-assignment-operator-visitor-6.6.5" = self.by-version."babel-helper-builder-binary-assignment-operator-visitor"."6.6.5";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-export-extensions"."^6.3.13" =
    self.by-version."babel-plugin-transform-export-extensions"."6.5.0";
  by-version."babel-plugin-transform-export-extensions"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-transform-export-extensions-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-export-extensions/-/babel-plugin-transform-export-extensions-6.5.0.tgz";
      name = "babel-plugin-transform-export-extensions-6.5.0.tgz";
      sha1 = "328ec483d7e92f232f4fa23208423d45cf1c432a";
    };
    deps = {
      "babel-plugin-syntax-export-extensions-6.5.0" = self.by-version."babel-plugin-syntax-export-extensions"."6.5.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-flow-strip-types"."^6.3.13" =
    self.by-version."babel-plugin-transform-flow-strip-types"."6.7.0";
  by-version."babel-plugin-transform-flow-strip-types"."6.7.0" = self.buildNodePackage {
    name = "babel-plugin-transform-flow-strip-types-6.7.0";
    version = "6.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-flow-strip-types/-/babel-plugin-transform-flow-strip-types-6.7.0.tgz";
      name = "babel-plugin-transform-flow-strip-types-6.7.0.tgz";
      sha1 = "ebbdc8e44320b875bdb3c1c12b2e317f21f49837";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-plugin-syntax-flow-6.5.0" = self.by-version."babel-plugin-syntax-flow"."6.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-function-bind"."^6.3.13" =
    self.by-version."babel-plugin-transform-function-bind"."6.5.2";
  by-version."babel-plugin-transform-function-bind"."6.5.2" = self.buildNodePackage {
    name = "babel-plugin-transform-function-bind-6.5.2";
    version = "6.5.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-function-bind/-/babel-plugin-transform-function-bind-6.5.2.tgz";
      name = "babel-plugin-transform-function-bind-6.5.2.tgz";
      sha1 = "9368c3e36debbee0a25a54555687ff68866d9576";
    };
    deps = {
      "babel-plugin-syntax-function-bind-6.5.0" = self.by-version."babel-plugin-syntax-function-bind"."6.5.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-object-rest-spread"."^6.3.13" =
    self.by-version."babel-plugin-transform-object-rest-spread"."6.6.5";
  by-version."babel-plugin-transform-object-rest-spread"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-object-rest-spread-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-object-rest-spread/-/babel-plugin-transform-object-rest-spread-6.6.5.tgz";
      name = "babel-plugin-transform-object-rest-spread-6.6.5.tgz";
      sha1 = "b93bd9b10950e77d1953e9bbd44980cc49157f1f";
    };
    deps = {
      "babel-plugin-syntax-object-rest-spread-6.5.0" = self.by-version."babel-plugin-syntax-object-rest-spread"."6.5.0";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-react-display-name"."^6.3.13" =
    self.by-version."babel-plugin-transform-react-display-name"."6.5.0";
  by-version."babel-plugin-transform-react-display-name"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-transform-react-display-name-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-react-display-name/-/babel-plugin-transform-react-display-name-6.5.0.tgz";
      name = "babel-plugin-transform-react-display-name-6.5.0.tgz";
      sha1 = "99bf7794e324aaf14983c01375db4f8cdef84bb7";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-react-jsx"."^6.3.13" =
    self.by-version."babel-plugin-transform-react-jsx"."6.7.5";
  by-version."babel-plugin-transform-react-jsx"."6.7.5" = self.buildNodePackage {
    name = "babel-plugin-transform-react-jsx-6.7.5";
    version = "6.7.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-react-jsx/-/babel-plugin-transform-react-jsx-6.7.5.tgz";
      name = "babel-plugin-transform-react-jsx-6.7.5.tgz";
      sha1 = "5667c61a56427af748eaec7dec26b446ee9511ca";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-helper-builder-react-jsx-6.7.5" = self.by-version."babel-helper-builder-react-jsx"."6.7.5";
      "babel-plugin-syntax-jsx-6.5.0" = self.by-version."babel-plugin-syntax-jsx"."6.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-react-jsx-source"."^6.3.13" =
    self.by-version."babel-plugin-transform-react-jsx-source"."6.5.0";
  by-version."babel-plugin-transform-react-jsx-source"."6.5.0" = self.buildNodePackage {
    name = "babel-plugin-transform-react-jsx-source-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-react-jsx-source/-/babel-plugin-transform-react-jsx-source-6.5.0.tgz";
      name = "babel-plugin-transform-react-jsx-source-6.5.0.tgz";
      sha1 = "b6cf9225754a4495a712cd59145cea41f5bbe477";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-plugin-syntax-jsx-6.5.0" = self.by-version."babel-plugin-syntax-jsx"."6.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-regenerator"."^6.6.0" =
    self.by-version."babel-plugin-transform-regenerator"."6.6.5";
  by-version."babel-plugin-transform-regenerator"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-regenerator-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-regenerator/-/babel-plugin-transform-regenerator-6.6.5.tgz";
      name = "babel-plugin-transform-regenerator-6.6.5.tgz";
      sha1 = "079a982bd56e2235e31ee3b17ad54aeba898d4e7";
    };
    deps = {
      "babel-plugin-transform-es2015-block-scoping-6.7.1" = self.by-version."babel-plugin-transform-es2015-block-scoping"."6.7.1";
      "babel-plugin-syntax-async-functions-6.5.0" = self.by-version."babel-plugin-syntax-async-functions"."6.5.0";
      "babel-plugin-transform-es2015-for-of-6.6.0" = self.by-version."babel-plugin-transform-es2015-for-of"."6.6.0";
      "babel-core-6.7.7" = self.by-version."babel-core"."6.7.7";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babylon-6.7.0" = self.by-version."babylon"."6.7.0";
      "private-0.1.6" = self.by-version."private"."0.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-strict-mode"."^6.6.5" =
    self.by-version."babel-plugin-transform-strict-mode"."6.6.5";
  by-version."babel-plugin-transform-strict-mode"."6.6.5" = self.buildNodePackage {
    name = "babel-plugin-transform-strict-mode-6.6.5";
    version = "6.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-strict-mode/-/babel-plugin-transform-strict-mode-6.6.5.tgz";
      name = "babel-plugin-transform-strict-mode-6.6.5.tgz";
      sha1 = "23c5a8b9af75609d1422ef16e13c96dec29a025f";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-preset-es2015"."^6.6.0" =
    self.by-version."babel-preset-es2015"."6.6.0";
  by-version."babel-preset-es2015"."6.6.0" = self.buildNodePackage {
    name = "babel-preset-es2015-6.6.0";
    version = "6.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-es2015/-/babel-preset-es2015-6.6.0.tgz";
      name = "babel-preset-es2015-6.6.0.tgz";
      sha1 = "88b33e58fec94c6ebde58dc65ece5d14e0ec2568";
    };
    deps = {
      "babel-plugin-transform-es2015-template-literals-6.6.5" = self.by-version."babel-plugin-transform-es2015-template-literals"."6.6.5";
      "babel-plugin-transform-es2015-literals-6.5.0" = self.by-version."babel-plugin-transform-es2015-literals"."6.5.0";
      "babel-plugin-transform-es2015-function-name-6.5.0" = self.by-version."babel-plugin-transform-es2015-function-name"."6.5.0";
      "babel-plugin-transform-es2015-arrow-functions-6.7.7" = self.by-version."babel-plugin-transform-es2015-arrow-functions"."6.7.7";
      "babel-plugin-transform-es2015-block-scoped-functions-6.6.5" = self.by-version."babel-plugin-transform-es2015-block-scoped-functions"."6.6.5";
      "babel-plugin-transform-es2015-classes-6.7.7" = self.by-version."babel-plugin-transform-es2015-classes"."6.7.7";
      "babel-plugin-transform-es2015-object-super-6.6.5" = self.by-version."babel-plugin-transform-es2015-object-super"."6.6.5";
      "babel-plugin-transform-es2015-shorthand-properties-6.5.0" = self.by-version."babel-plugin-transform-es2015-shorthand-properties"."6.5.0";
      "babel-plugin-transform-es2015-computed-properties-6.6.5" = self.by-version."babel-plugin-transform-es2015-computed-properties"."6.6.5";
      "babel-plugin-transform-es2015-duplicate-keys-6.6.4" = self.by-version."babel-plugin-transform-es2015-duplicate-keys"."6.6.4";
      "babel-plugin-transform-es2015-for-of-6.6.0" = self.by-version."babel-plugin-transform-es2015-for-of"."6.6.0";
      "babel-plugin-transform-es2015-sticky-regex-6.5.0" = self.by-version."babel-plugin-transform-es2015-sticky-regex"."6.5.0";
      "babel-plugin-transform-es2015-unicode-regex-6.5.0" = self.by-version."babel-plugin-transform-es2015-unicode-regex"."6.5.0";
      "babel-plugin-check-es2015-constants-6.7.2" = self.by-version."babel-plugin-check-es2015-constants"."6.7.2";
      "babel-plugin-transform-es2015-spread-6.6.5" = self.by-version."babel-plugin-transform-es2015-spread"."6.6.5";
      "babel-plugin-transform-es2015-parameters-6.7.0" = self.by-version."babel-plugin-transform-es2015-parameters"."6.7.0";
      "babel-plugin-transform-es2015-destructuring-6.6.5" = self.by-version."babel-plugin-transform-es2015-destructuring"."6.6.5";
      "babel-plugin-transform-es2015-block-scoping-6.7.1" = self.by-version."babel-plugin-transform-es2015-block-scoping"."6.7.1";
      "babel-plugin-transform-es2015-typeof-symbol-6.6.0" = self.by-version."babel-plugin-transform-es2015-typeof-symbol"."6.6.0";
      "babel-plugin-transform-es2015-modules-commonjs-6.7.7" = self.by-version."babel-plugin-transform-es2015-modules-commonjs"."6.7.7";
      "babel-plugin-transform-regenerator-6.6.5" = self.by-version."babel-plugin-transform-regenerator"."6.6.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel-preset-es2015" = self.by-version."babel-preset-es2015"."6.6.0";
  by-spec."babel-preset-react"."^6.5.0" =
    self.by-version."babel-preset-react"."6.5.0";
  by-version."babel-preset-react"."6.5.0" = self.buildNodePackage {
    name = "babel-preset-react-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-react/-/babel-preset-react-6.5.0.tgz";
      name = "babel-preset-react-6.5.0.tgz";
      sha1 = "d3289aa0e308dbd48b7210f9977101f0f96ebe1f";
    };
    deps = {
      "babel-plugin-syntax-flow-6.5.0" = self.by-version."babel-plugin-syntax-flow"."6.5.0";
      "babel-plugin-syntax-jsx-6.5.0" = self.by-version."babel-plugin-syntax-jsx"."6.5.0";
      "babel-plugin-transform-flow-strip-types-6.7.0" = self.by-version."babel-plugin-transform-flow-strip-types"."6.7.0";
      "babel-plugin-transform-react-display-name-6.5.0" = self.by-version."babel-plugin-transform-react-display-name"."6.5.0";
      "babel-plugin-transform-react-jsx-6.7.5" = self.by-version."babel-plugin-transform-react-jsx"."6.7.5";
      "babel-plugin-transform-react-jsx-source-6.5.0" = self.by-version."babel-plugin-transform-react-jsx-source"."6.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel-preset-react" = self.by-version."babel-preset-react"."6.5.0";
  by-spec."babel-preset-react-hmre"."^1.1.1" =
    self.by-version."babel-preset-react-hmre"."1.1.1";
  by-version."babel-preset-react-hmre"."1.1.1" = self.buildNodePackage {
    name = "babel-preset-react-hmre-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-react-hmre/-/babel-preset-react-hmre-1.1.1.tgz";
      name = "babel-preset-react-hmre-1.1.1.tgz";
      sha1 = "d216e60cb5b8d4c873e19ed0f54eaff1437bc492";
    };
    deps = {
      "babel-plugin-react-transform-2.0.2" = self.by-version."babel-plugin-react-transform"."2.0.2";
      "react-transform-catch-errors-1.0.2" = self.by-version."react-transform-catch-errors"."1.0.2";
      "react-transform-hmr-1.0.4" = self.by-version."react-transform-hmr"."1.0.4";
      "redbox-react-1.2.3" = self.by-version."redbox-react"."1.2.3";
      "react-15.0.2" = self.by-version."react"."15.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel-preset-react-hmre" = self.by-version."babel-preset-react-hmre"."1.1.1";
  by-spec."babel-preset-stage-0"."^6.5.0" =
    self.by-version."babel-preset-stage-0"."6.5.0";
  by-version."babel-preset-stage-0"."6.5.0" = self.buildNodePackage {
    name = "babel-preset-stage-0-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-stage-0/-/babel-preset-stage-0-6.5.0.tgz";
      name = "babel-preset-stage-0-6.5.0.tgz";
      sha1 = "8b8479b2077482b8f3dc8f8f5f0c9c79788cde22";
    };
    deps = {
      "babel-plugin-transform-do-expressions-6.5.0" = self.by-version."babel-plugin-transform-do-expressions"."6.5.0";
      "babel-plugin-transform-function-bind-6.5.2" = self.by-version."babel-plugin-transform-function-bind"."6.5.2";
      "babel-preset-stage-1-6.5.0" = self.by-version."babel-preset-stage-1"."6.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel-preset-stage-0" = self.by-version."babel-preset-stage-0"."6.5.0";
  by-spec."babel-preset-stage-1"."^6.3.13" =
    self.by-version."babel-preset-stage-1"."6.5.0";
  by-version."babel-preset-stage-1"."6.5.0" = self.buildNodePackage {
    name = "babel-preset-stage-1-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-stage-1/-/babel-preset-stage-1-6.5.0.tgz";
      name = "babel-preset-stage-1-6.5.0.tgz";
      sha1 = "72bc2de3faf5c6b3c4790abd2bc1dee0ef05da70";
    };
    deps = {
      "babel-plugin-transform-class-constructor-call-6.6.5" = self.by-version."babel-plugin-transform-class-constructor-call"."6.6.5";
      "babel-plugin-transform-class-properties-6.6.0" = self.by-version."babel-plugin-transform-class-properties"."6.6.0";
      "babel-plugin-transform-decorators-6.6.5" = self.by-version."babel-plugin-transform-decorators"."6.6.5";
      "babel-plugin-transform-export-extensions-6.5.0" = self.by-version."babel-plugin-transform-export-extensions"."6.5.0";
      "babel-preset-stage-2-6.5.0" = self.by-version."babel-preset-stage-2"."6.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-preset-stage-2"."^6.3.13" =
    self.by-version."babel-preset-stage-2"."6.5.0";
  by-version."babel-preset-stage-2"."6.5.0" = self.buildNodePackage {
    name = "babel-preset-stage-2-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-stage-2/-/babel-preset-stage-2-6.5.0.tgz";
      name = "babel-preset-stage-2-6.5.0.tgz";
      sha1 = "04c921f7cee176a96699a7185f539898d8c374d7";
    };
    deps = {
      "babel-plugin-syntax-trailing-function-commas-6.5.0" = self.by-version."babel-plugin-syntax-trailing-function-commas"."6.5.0";
      "babel-plugin-transform-object-rest-spread-6.6.5" = self.by-version."babel-plugin-transform-object-rest-spread"."6.6.5";
      "babel-preset-stage-3-6.5.0" = self.by-version."babel-preset-stage-3"."6.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-preset-stage-3"."^6.3.13" =
    self.by-version."babel-preset-stage-3"."6.5.0";
  by-version."babel-preset-stage-3"."6.5.0" = self.buildNodePackage {
    name = "babel-preset-stage-3-6.5.0";
    version = "6.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-stage-3/-/babel-preset-stage-3-6.5.0.tgz";
      name = "babel-preset-stage-3-6.5.0.tgz";
      sha1 = "542dac58684dad1b0bc4aee85ba52851cc6e75cc";
    };
    deps = {
      "babel-plugin-transform-async-to-generator-6.7.4" = self.by-version."babel-plugin-transform-async-to-generator"."6.7.4";
      "babel-plugin-transform-exponentiation-operator-6.5.0" = self.by-version."babel-plugin-transform-exponentiation-operator"."6.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-register"."^6.7.2" =
    self.by-version."babel-register"."6.7.2";
  by-version."babel-register"."6.7.2" = self.buildNodePackage {
    name = "babel-register-6.7.2";
    version = "6.7.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-register/-/babel-register-6.7.2.tgz";
      name = "babel-register-6.7.2.tgz";
      sha1 = "4dec809ba2d4ccadd185efb2c0a3f560e1f6c8a0";
    };
    deps = {
      "babel-core-6.7.7" = self.by-version."babel-core"."6.7.7";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "core-js-2.3.0" = self.by-version."core-js"."2.3.0";
      "home-or-tmp-1.0.0" = self.by-version."home-or-tmp"."1.0.0";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "path-exists-1.0.0" = self.by-version."path-exists"."1.0.0";
      "source-map-support-0.2.10" = self.by-version."source-map-support"."0.2.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-runtime"."^5.0.0" =
    self.by-version."babel-runtime"."5.8.38";
  by-version."babel-runtime"."5.8.38" = self.buildNodePackage {
    name = "babel-runtime-5.8.38";
    version = "5.8.38";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-runtime/-/babel-runtime-5.8.38.tgz";
      name = "babel-runtime-5.8.38.tgz";
      sha1 = "1c0b02eb63312f5f087ff20450827b425c9d4c19";
    };
    deps = {
      "core-js-1.2.6" = self.by-version."core-js"."1.2.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-runtime"."^6.2.0" =
    self.by-version."babel-runtime"."6.6.1";
  by-version."babel-runtime"."6.6.1" = self.buildNodePackage {
    name = "babel-runtime-6.6.1";
    version = "6.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-runtime/-/babel-runtime-6.6.1.tgz";
      name = "babel-runtime-6.6.1.tgz";
      sha1 = "788b94b6f634e25b91bd6c5df72d467457afb000";
    };
    deps = {
      "core-js-2.3.0" = self.by-version."core-js"."2.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-template"."^6.3.0" =
    self.by-version."babel-template"."6.7.0";
  by-version."babel-template"."6.7.0" = self.buildNodePackage {
    name = "babel-template-6.7.0";
    version = "6.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-template/-/babel-template-6.7.0.tgz";
      name = "babel-template-6.7.0.tgz";
      sha1 = "e30f32639aa2bcdaa6a77bc9b92bde5c98144902";
    };
    deps = {
      "babylon-6.7.0" = self.by-version."babylon"."6.7.0";
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-template"."^6.6.0" =
    self.by-version."babel-template"."6.7.0";
  by-spec."babel-template"."^6.6.5" =
    self.by-version."babel-template"."6.7.0";
  by-spec."babel-template"."^6.7.0" =
    self.by-version."babel-template"."6.7.0";
  by-spec."babel-traverse"."^6.6.0" =
    self.by-version."babel-traverse"."6.7.6";
  by-version."babel-traverse"."6.7.6" = self.buildNodePackage {
    name = "babel-traverse-6.7.6";
    version = "6.7.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-traverse/-/babel-traverse-6.7.6.tgz";
      name = "babel-traverse-6.7.6.tgz";
      sha1 = "a14928044040b2a6c80aa595148af0b6378d1c93";
    };
    deps = {
      "babel-code-frame-6.7.7" = self.by-version."babel-code-frame"."6.7.7";
      "babel-messages-6.7.2" = self.by-version."babel-messages"."6.7.2";
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-types-6.7.7" = self.by-version."babel-types"."6.7.7";
      "babylon-6.7.0" = self.by-version."babylon"."6.7.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "globals-8.18.0" = self.by-version."globals"."8.18.0";
      "invariant-2.2.1" = self.by-version."invariant"."2.2.1";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "repeating-1.1.3" = self.by-version."repeating"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-traverse"."^6.6.5" =
    self.by-version."babel-traverse"."6.7.6";
  by-spec."babel-traverse"."^6.7.0" =
    self.by-version."babel-traverse"."6.7.6";
  by-spec."babel-traverse"."^6.7.2" =
    self.by-version."babel-traverse"."6.7.6";
  by-spec."babel-traverse"."^6.7.6" =
    self.by-version."babel-traverse"."6.7.6";
  by-spec."babel-types"."^6.3.13" =
    self.by-version."babel-types"."6.7.7";
  by-version."babel-types"."6.7.7" = self.buildNodePackage {
    name = "babel-types-6.7.7";
    version = "6.7.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-types/-/babel-types-6.7.7.tgz";
      name = "babel-types-6.7.7.tgz";
      sha1 = "88cd1f1cc0ef972d092acc28761de10553912915";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
      "babel-traverse-6.7.6" = self.by-version."babel-traverse"."6.7.6";
      "esutils-2.0.2" = self.by-version."esutils"."2.0.2";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "to-fast-properties-1.0.2" = self.by-version."to-fast-properties"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-types"."^6.4.0" =
    self.by-version."babel-types"."6.7.7";
  by-spec."babel-types"."^6.6.0" =
    self.by-version."babel-types"."6.7.7";
  by-spec."babel-types"."^6.6.4" =
    self.by-version."babel-types"."6.7.7";
  by-spec."babel-types"."^6.6.5" =
    self.by-version."babel-types"."6.7.7";
  by-spec."babel-types"."^6.7.0" =
    self.by-version."babel-types"."6.7.7";
  by-spec."babel-types"."^6.7.2" =
    self.by-version."babel-types"."6.7.7";
  by-spec."babel-types"."^6.7.7" =
    self.by-version."babel-types"."6.7.7";
  by-spec."babylon"."^6.6.5" =
    self.by-version."babylon"."6.7.0";
  by-version."babylon"."6.7.0" = self.buildNodePackage {
    name = "babylon-6.7.0";
    version = "6.7.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/babylon/-/babylon-6.7.0.tgz";
      name = "babylon-6.7.0.tgz";
      sha1 = "a7d69e40c90a58355cbf9b4f9cad7110f3c07cca";
    };
    deps = {
      "babel-runtime-5.8.38" = self.by-version."babel-runtime"."5.8.38";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babylon"."^6.7.0" =
    self.by-version."babylon"."6.7.0";
  by-spec."backo2"."1.0.2" =
    self.by-version."backo2"."1.0.2";
  by-version."backo2"."1.0.2" = self.buildNodePackage {
    name = "backo2-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/backo2/-/backo2-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/balanced-match/-/balanced-match-0.1.0.tgz";
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
      url = "https://registry.npmjs.org/balanced-match/-/balanced-match-0.3.0.tgz";
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
      url = "https://registry.npmjs.org/base62/-/base62-0.1.1.tgz";
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
      url = "https://registry.npmjs.org/base64-arraybuffer/-/base64-arraybuffer-0.1.2.tgz";
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
      url = "https://registry.npmjs.org/base64-js/-/base64-js-0.0.8.tgz";
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
  by-spec."base64-js"."^1.0.2" =
    self.by-version."base64-js"."1.1.2";
  by-version."base64-js"."1.1.2" = self.buildNodePackage {
    name = "base64-js-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/base64-js/-/base64-js-1.1.2.tgz";
      name = "base64-js-1.1.2.tgz";
      sha1 = "d6400cac1c4c660976d90d07a04351d89395f5e8";
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
      url = "https://registry.npmjs.org/base64id/-/base64id-0.1.0.tgz";
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
      url = "https://registry.npmjs.org/batch/-/batch-0.5.3.tgz";
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
      url = "https://registry.npmjs.org/benchmark/-/benchmark-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/better-assert/-/better-assert-1.0.2.tgz";
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
  by-spec."big.js"."^3.1.3" =
    self.by-version."big.js"."3.1.3";
  by-version."big.js"."3.1.3" = self.buildNodePackage {
    name = "big.js-3.1.3";
    version = "3.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/big.js/-/big.js-3.1.3.tgz";
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
      url = "https://registry.npmjs.org/binary-extensions/-/binary-extensions-1.4.0.tgz";
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
  by-spec."bl"."~1.0.0" =
    self.by-version."bl"."1.0.3";
  by-version."bl"."1.0.3" = self.buildNodePackage {
    name = "bl-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bl/-/bl-1.0.3.tgz";
      name = "bl-1.0.3.tgz";
      sha1 = "fc5421a28fd4226036c3b3891a66a25bc64d226e";
    };
    deps = {
      "readable-stream-2.0.6" = self.by-version."readable-stream"."2.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."~1.1.2" =
    self.by-version."bl"."1.1.2";
  by-version."bl"."1.1.2" = self.buildNodePackage {
    name = "bl-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bl/-/bl-1.1.2.tgz";
      name = "bl-1.1.2.tgz";
      sha1 = "fdca871a99713aa00d19e3bbba41c44787a65398";
    };
    deps = {
      "readable-stream-2.0.6" = self.by-version."readable-stream"."2.0.6";
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
      url = "https://registry.npmjs.org/blob/-/blob-0.0.4.tgz";
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
      url = "https://registry.npmjs.org/block-stream/-/block-stream-0.0.8.tgz";
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
      url = "https://registry.npmjs.org/bluebird/-/bluebird-2.10.2.tgz";
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
  by-spec."bluebird"."^3.3.4" =
    self.by-version."bluebird"."3.3.5";
  by-version."bluebird"."3.3.5" = self.buildNodePackage {
    name = "bluebird-3.3.5";
    version = "3.3.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bluebird/-/bluebird-3.3.5.tgz";
      name = "bluebird-3.3.5.tgz";
      sha1 = "5ee747f1c7bd967658b683936430aee753955a34";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bn.js"."^4.0.0" =
    self.by-version."bn.js"."4.11.3";
  by-version."bn.js"."4.11.3" = self.buildNodePackage {
    name = "bn.js-4.11.3";
    version = "4.11.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bn.js/-/bn.js-4.11.3.tgz";
      name = "bn.js-4.11.3.tgz";
      sha1 = "bfd45360d339b173f39b628445d2f5d02cb61dd4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bn.js"."^4.1.0" =
    self.by-version."bn.js"."4.11.3";
  by-spec."bn.js"."^4.1.1" =
    self.by-version."bn.js"."4.11.3";
  by-spec."body-parser"."^1.12.4" =
    self.by-version."body-parser"."1.15.0";
  by-version."body-parser"."1.15.0" = self.buildNodePackage {
    name = "body-parser-1.15.0";
    version = "1.15.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/body-parser/-/body-parser-1.15.0.tgz";
      name = "body-parser-1.15.0.tgz";
      sha1 = "8168abaeaf9e77e300f7b3aef4df4b46e9b21b35";
    };
    deps = {
      "bytes-2.2.0" = self.by-version."bytes"."2.2.0";
      "content-type-1.0.1" = self.by-version."content-type"."1.0.1";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "http-errors-1.4.0" = self.by-version."http-errors"."1.4.0";
      "iconv-lite-0.4.13" = self.by-version."iconv-lite"."0.4.13";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "qs-6.1.0" = self.by-version."qs"."6.1.0";
      "raw-body-2.1.6" = self.by-version."raw-body"."2.1.6";
      "type-is-1.6.12" = self.by-version."type-is"."1.6.12";
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
      url = "https://registry.npmjs.org/boolbase/-/boolbase-1.0.0.tgz";
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
  by-spec."boom"."2.x.x" =
    self.by-version."boom"."2.10.1";
  by-version."boom"."2.10.1" = self.buildNodePackage {
    name = "boom-2.10.1";
    version = "2.10.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/boom/-/boom-2.10.1.tgz";
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
    self.by-version."brace-expansion"."1.1.3";
  by-version."brace-expansion"."1.1.3" = self.buildNodePackage {
    name = "brace-expansion-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.3.tgz";
      name = "brace-expansion-1.1.3.tgz";
      sha1 = "46bff50115d47fc9ab89854abb87d98078a10991";
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
      url = "https://registry.npmjs.org/braces/-/braces-0.1.5.tgz";
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
    self.by-version."braces"."1.8.4";
  by-version."braces"."1.8.4" = self.buildNodePackage {
    name = "braces-1.8.4";
    version = "1.8.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/braces/-/braces-1.8.4.tgz";
      name = "braces-1.8.4.tgz";
      sha1 = "75e2d6456d48b06dbb5205ed63442a3bfc5eefce";
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
  by-spec."brorand"."^1.0.1" =
    self.by-version."brorand"."1.0.5";
  by-version."brorand"."1.0.5" = self.buildNodePackage {
    name = "brorand-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/brorand/-/brorand-1.0.5.tgz";
      name = "brorand-1.0.5.tgz";
      sha1 = "07b54ca30286abd1718a0e2a830803efdc9bfa04";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-aes"."^1.0.0" =
    self.by-version."browserify-aes"."1.0.6";
  by-version."browserify-aes"."1.0.6" = self.buildNodePackage {
    name = "browserify-aes-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserify-aes/-/browserify-aes-1.0.6.tgz";
      name = "browserify-aes-1.0.6.tgz";
      sha1 = "5e7725dbdef1fd5930d4ebab48567ce451c48a0a";
    };
    deps = {
      "buffer-xor-1.0.3" = self.by-version."buffer-xor"."1.0.3";
      "cipher-base-1.0.2" = self.by-version."cipher-base"."1.0.2";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "evp_bytestokey-1.0.0" = self.by-version."evp_bytestokey"."1.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-aes"."^1.0.4" =
    self.by-version."browserify-aes"."1.0.6";
  by-spec."browserify-cipher"."^1.0.0" =
    self.by-version."browserify-cipher"."1.0.0";
  by-version."browserify-cipher"."1.0.0" = self.buildNodePackage {
    name = "browserify-cipher-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserify-cipher/-/browserify-cipher-1.0.0.tgz";
      name = "browserify-cipher-1.0.0.tgz";
      sha1 = "9988244874bf5ed4e28da95666dcd66ac8fc363a";
    };
    deps = {
      "browserify-aes-1.0.6" = self.by-version."browserify-aes"."1.0.6";
      "browserify-des-1.0.0" = self.by-version."browserify-des"."1.0.0";
      "evp_bytestokey-1.0.0" = self.by-version."evp_bytestokey"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-des"."^1.0.0" =
    self.by-version."browserify-des"."1.0.0";
  by-version."browserify-des"."1.0.0" = self.buildNodePackage {
    name = "browserify-des-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserify-des/-/browserify-des-1.0.0.tgz";
      name = "browserify-des-1.0.0.tgz";
      sha1 = "daa277717470922ed2fe18594118a175439721dd";
    };
    deps = {
      "cipher-base-1.0.2" = self.by-version."cipher-base"."1.0.2";
      "des.js-1.0.0" = self.by-version."des.js"."1.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-rsa"."^4.0.0" =
    self.by-version."browserify-rsa"."4.0.1";
  by-version."browserify-rsa"."4.0.1" = self.buildNodePackage {
    name = "browserify-rsa-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserify-rsa/-/browserify-rsa-4.0.1.tgz";
      name = "browserify-rsa-4.0.1.tgz";
      sha1 = "21e0abfaf6f2029cf2fafb133567a701d4135524";
    };
    deps = {
      "bn.js-4.11.3" = self.by-version."bn.js"."4.11.3";
      "randombytes-2.0.3" = self.by-version."randombytes"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-sign"."^4.0.0" =
    self.by-version."browserify-sign"."4.0.0";
  by-version."browserify-sign"."4.0.0" = self.buildNodePackage {
    name = "browserify-sign-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserify-sign/-/browserify-sign-4.0.0.tgz";
      name = "browserify-sign-4.0.0.tgz";
      sha1 = "10773910c3c206d5420a46aad8694f820b85968f";
    };
    deps = {
      "bn.js-4.11.3" = self.by-version."bn.js"."4.11.3";
      "browserify-rsa-4.0.1" = self.by-version."browserify-rsa"."4.0.1";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "create-hmac-1.1.4" = self.by-version."create-hmac"."1.1.4";
      "elliptic-6.2.3" = self.by-version."elliptic"."6.2.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "parse-asn1-5.0.0" = self.by-version."parse-asn1"."5.0.0";
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
      url = "https://registry.npmjs.org/browserify-zlib/-/browserify-zlib-0.1.4.tgz";
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
  by-spec."browserslist"."~1.3.1" =
    self.by-version."browserslist"."1.3.1";
  by-version."browserslist"."1.3.1" = self.buildNodePackage {
    name = "browserslist-1.3.1";
    version = "1.3.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/browserslist/-/browserslist-1.3.1.tgz";
      name = "browserslist-1.3.1.tgz";
      sha1 = "6198006485d3a350732408dca74165b69abfa718";
    };
    deps = {
      "caniuse-db-1.0.30000460" = self.by-version."caniuse-db"."1.0.30000460";
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
      url = "https://registry.npmjs.org/buffer/-/buffer-3.6.0.tgz";
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
  by-spec."buffer"."^4.3.0" =
    self.by-version."buffer"."4.6.0";
  by-version."buffer"."4.6.0" = self.buildNodePackage {
    name = "buffer-4.6.0";
    version = "4.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/buffer/-/buffer-4.6.0.tgz";
      name = "buffer-4.6.0.tgz";
      sha1 = "fe50a7de503ebaad1b568d05967207be4024c348";
    };
    deps = {
      "base64-js-1.1.2" = self.by-version."base64-js"."1.1.2";
      "ieee754-1.1.6" = self.by-version."ieee754"."1.1.6";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer-xor"."^1.0.2" =
    self.by-version."buffer-xor"."1.0.3";
  by-version."buffer-xor"."1.0.3" = self.buildNodePackage {
    name = "buffer-xor-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/buffer-xor/-/buffer-xor-1.0.3.tgz";
      name = "buffer-xor-1.0.3.tgz";
      sha1 = "26e61ed1422fb70dd42e6e36729ed51d855fe8d9";
    };
    deps = {
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
      url = "https://registry.npmjs.org/builtin-modules/-/builtin-modules-1.1.1.tgz";
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
      url = "https://registry.npmjs.org/bytes/-/bytes-2.2.0.tgz";
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
  by-spec."bytes"."2.3.0" =
    self.by-version."bytes"."2.3.0";
  by-version."bytes"."2.3.0" = self.buildNodePackage {
    name = "bytes-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bytes/-/bytes-2.3.0.tgz";
      name = "bytes-2.3.0.tgz";
      sha1 = "d5b680a165b6201739acb611542aabc2d8ceb070";
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
      url = "https://registry.npmjs.org/callsite/-/callsite-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/camel-case/-/camel-case-1.2.2.tgz";
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
      url = "https://registry.npmjs.org/camelcase/-/camelcase-1.2.1.tgz";
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
    self.by-version."camelcase"."2.1.1";
  by-version."camelcase"."2.1.1" = self.buildNodePackage {
    name = "camelcase-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/camelcase/-/camelcase-2.1.1.tgz";
      name = "camelcase-2.1.1.tgz";
      sha1 = "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f";
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
    self.by-version."camelcase"."2.1.1";
  by-spec."camelcase-keys"."^2.0.0" =
    self.by-version."camelcase-keys"."2.1.0";
  by-version."camelcase-keys"."2.1.0" = self.buildNodePackage {
    name = "camelcase-keys-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/camelcase-keys/-/camelcase-keys-2.1.0.tgz";
      name = "camelcase-keys-2.1.0.tgz";
      sha1 = "308beeaffdf28119051efa1d932213c91b8f92e7";
    };
    deps = {
      "camelcase-2.1.1" = self.by-version."camelcase"."2.1.1";
      "map-obj-1.0.1" = self.by-version."map-obj"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caniuse-db"."^1.0.30000444" =
    self.by-version."caniuse-db"."1.0.30000460";
  by-version."caniuse-db"."1.0.30000460" = self.buildNodePackage {
    name = "caniuse-db-1.0.30000460";
    version = "1.0.30000460";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/caniuse-db/-/caniuse-db-1.0.30000460.tgz";
      name = "caniuse-db-1.0.30000460.tgz";
      sha1 = "93830527d848a1912b246204b7063ce1280d06f7";
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
      url = "https://registry.npmjs.org/caseless/-/caseless-0.11.0.tgz";
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
  by-spec."center-align"."^0.1.1" =
    self.by-version."center-align"."0.1.3";
  by-version."center-align"."0.1.3" = self.buildNodePackage {
    name = "center-align-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/center-align/-/center-align-0.1.3.tgz";
      name = "center-align-0.1.3.tgz";
      sha1 = "aa0d32629b6ee972200411cbd4461c907bc2b7ad";
    };
    deps = {
      "align-text-0.1.4" = self.by-version."align-text"."0.1.4";
      "lazy-cache-1.0.4" = self.by-version."lazy-cache"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chai"."*" =
    self.by-version."chai"."3.5.0";
  by-version."chai"."3.5.0" = self.buildNodePackage {
    name = "chai-3.5.0";
    version = "3.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/chai/-/chai-3.5.0.tgz";
      name = "chai-3.5.0.tgz";
      sha1 = "4d02637b067fe958bdbfdd3a40ec56fef7373247";
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
    self.by-version."chai"."3.5.0";
  "chai" = self.by-version."chai"."3.5.0";
  by-spec."chalk"."1.1.1" =
    self.by-version."chalk"."1.1.1";
  by-version."chalk"."1.1.1" = self.buildNodePackage {
    name = "chalk-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/chalk/-/chalk-1.1.1.tgz";
      name = "chalk-1.1.1.tgz";
      sha1 = "509afb67066e7499f7eb3535c77445772ae2d019";
    };
    deps = {
      "ansi-styles-2.2.1" = self.by-version."ansi-styles"."2.2.1";
      "escape-string-regexp-1.0.5" = self.by-version."escape-string-regexp"."1.0.5";
      "has-ansi-2.0.0" = self.by-version."has-ansi"."2.0.0";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
      "supports-color-2.0.0" = self.by-version."supports-color"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^1.1.0" =
    self.by-version."chalk"."1.1.3";
  by-version."chalk"."1.1.3" = self.buildNodePackage {
    name = "chalk-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz";
      name = "chalk-1.1.3.tgz";
      sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
    };
    deps = {
      "ansi-styles-2.2.1" = self.by-version."ansi-styles"."2.2.1";
      "escape-string-regexp-1.0.5" = self.by-version."escape-string-regexp"."1.0.5";
      "has-ansi-2.0.0" = self.by-version."has-ansi"."2.0.0";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
      "supports-color-2.0.0" = self.by-version."supports-color"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^1.1.1" =
    self.by-version."chalk"."1.1.3";
  by-spec."change-case"."2.3.x" =
    self.by-version."change-case"."2.3.1";
  by-version."change-case"."2.3.1" = self.buildNodePackage {
    name = "change-case-2.3.1";
    version = "2.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/change-case/-/change-case-2.3.1.tgz";
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
  by-spec."chokidar"."^1.0.0" =
    self.by-version."chokidar"."1.4.3";
  by-version."chokidar"."1.4.3" = self.buildNodePackage {
    name = "chokidar-1.4.3";
    version = "1.4.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/chokidar/-/chokidar-1.4.3.tgz";
      name = "chokidar-1.4.3.tgz";
      sha1 = "5fe733a4d9acaea51b26454b7e59559163d0dbb2";
    };
    deps = {
      "anymatch-1.3.0" = self.by-version."anymatch"."1.3.0";
      "async-each-1.0.0" = self.by-version."async-each"."1.0.0";
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
    self.by-version."chokidar"."1.4.3";
  by-spec."cipher-base"."^1.0.0" =
    self.by-version."cipher-base"."1.0.2";
  by-version."cipher-base"."1.0.2" = self.buildNodePackage {
    name = "cipher-base-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cipher-base/-/cipher-base-1.0.2.tgz";
      name = "cipher-base-1.0.2.tgz";
      sha1 = "54ac1d1ebdf6a1bcd3559e6f369d72697f2cab8f";
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
  by-spec."cipher-base"."^1.0.1" =
    self.by-version."cipher-base"."1.0.2";
  by-spec."clap"."^1.0.9" =
    self.by-version."clap"."1.1.0";
  by-version."clap"."1.1.0" = self.buildNodePackage {
    name = "clap-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/clap/-/clap-1.1.0.tgz";
      name = "clap-1.1.0.tgz";
      sha1 = "52a7bdc843667c035e4aba9c0878118343e66299";
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
  by-spec."classnames"."^2.2.1" =
    self.by-version."classnames"."2.2.4";
  by-version."classnames"."2.2.4" = self.buildNodePackage {
    name = "classnames-2.2.4";
    version = "2.2.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/classnames/-/classnames-2.2.4.tgz";
      name = "classnames-2.2.4.tgz";
      sha1 = "c1151a07a5b7057aadd7196ef1b1a9864d853589";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."clean-css"."3.4.x" =
    self.by-version."clean-css"."3.4.12";
  by-version."clean-css"."3.4.12" = self.buildNodePackage {
    name = "clean-css-3.4.12";
    version = "3.4.12";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/clean-css/-/clean-css-3.4.12.tgz";
      name = "clean-css-3.4.12.tgz";
      sha1 = "0472a1628c980fb01fea3aaeab2b6d367db277c2";
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
  by-spec."cliui"."^2.1.0" =
    self.by-version."cliui"."2.1.0";
  by-version."cliui"."2.1.0" = self.buildNodePackage {
    name = "cliui-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cliui/-/cliui-2.1.0.tgz";
      name = "cliui-2.1.0.tgz";
      sha1 = "4b475760ff80264c762c3a1719032e91c7fea0d1";
    };
    deps = {
      "center-align-0.1.3" = self.by-version."center-align"."0.1.3";
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
    self.by-version."cliui"."3.2.0";
  by-version."cliui"."3.2.0" = self.buildNodePackage {
    name = "cliui-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cliui/-/cliui-3.2.0.tgz";
      name = "cliui-3.2.0.tgz";
      sha1 = "120601537a916d29940f934da3b48d585a39213d";
    };
    deps = {
      "string-width-1.0.1" = self.by-version."string-width"."1.0.1";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
      "wrap-ansi-2.0.0" = self.by-version."wrap-ansi"."2.0.0";
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
      url = "https://registry.npmjs.org/clone/-/clone-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/coa/-/coa-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/code-point-at/-/code-point-at-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/coffee-loader/-/coffee-loader-0.7.2.tgz";
      name = "coffee-loader-0.7.2.tgz";
      sha1 = "4d3699af8a806312db3207385a842f497c1bd6fd";
    };
    deps = {
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
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
      url = "https://registry.npmjs.org/coffee-script/-/coffee-script-1.10.0.tgz";
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
  by-spec."coffee-script"."~1.10.0" =
    self.by-version."coffee-script"."1.10.0";
  by-spec."coffeelint"."^1.14.2" =
    self.by-version."coffeelint"."1.15.7";
  by-version."coffeelint"."1.15.7" = self.buildNodePackage {
    name = "coffeelint-1.15.7";
    version = "1.15.7";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/coffeelint/-/coffeelint-1.15.7.tgz";
      name = "coffeelint-1.15.7.tgz";
      sha1 = "f66982a94055d735376c5cf5f1cbb9e2814334e9";
    };
    deps = {
      "coffee-script-1.10.0" = self.by-version."coffee-script"."1.10.0";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "ignore-3.1.2" = self.by-version."ignore"."3.1.2";
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
  "coffeelint" = self.by-version."coffeelint"."1.15.7";
  by-spec."color"."^0.11.0" =
    self.by-version."color"."0.11.1";
  by-version."color"."0.11.1" = self.buildNodePackage {
    name = "color-0.11.1";
    version = "0.11.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/color/-/color-0.11.1.tgz";
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
      url = "https://registry.npmjs.org/color-convert/-/color-convert-0.5.3.tgz";
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
      url = "https://registry.npmjs.org/color-name/-/color-name-1.1.1.tgz";
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
      url = "https://registry.npmjs.org/color-string/-/color-string-0.3.0.tgz";
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
    self.by-version."colormin"."1.1.0";
  by-version."colormin"."1.1.0" = self.buildNodePackage {
    name = "colormin-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/colormin/-/colormin-1.1.0.tgz";
      name = "colormin-1.1.0.tgz";
      sha1 = "ad828fcc38d3bf21a75ebd136ea254347389ceac";
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
      url = "https://registry.npmjs.org/colors/-/colors-1.1.2.tgz";
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
      url = "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.5.tgz";
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
  by-spec."combined-stream"."~1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-spec."commander"."0.6.1" =
    self.by-version."commander"."0.6.1";
  by-version."commander"."0.6.1" = self.buildNodePackage {
    name = "commander-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/commander/-/commander-0.6.1.tgz";
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
      url = "https://registry.npmjs.org/commander/-/commander-2.3.0.tgz";
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
      url = "https://registry.npmjs.org/commander/-/commander-2.8.1.tgz";
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
  by-spec."commander"."2.9.x" =
    self.by-version."commander"."2.9.0";
  by-version."commander"."2.9.0" = self.buildNodePackage {
    name = "commander-2.9.0";
    version = "2.9.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/commander/-/commander-2.9.0.tgz";
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
  by-spec."commander"."^2.9.0" =
    self.by-version."commander"."2.9.0";
  by-spec."component-bind"."1.0.0" =
    self.by-version."component-bind"."1.0.0";
  by-version."component-bind"."1.0.0" = self.buildNodePackage {
    name = "component-bind-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/component-bind/-/component-bind-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/component-emitter/-/component-emitter-1.1.2.tgz";
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
      url = "https://registry.npmjs.org/component-emitter/-/component-emitter-1.2.0.tgz";
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
    self.by-version."component-emitter"."1.2.1";
  by-version."component-emitter"."1.2.1" = self.buildNodePackage {
    name = "component-emitter-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/component-emitter/-/component-emitter-1.2.1.tgz";
      name = "component-emitter-1.2.1.tgz";
      sha1 = "137918d6d78283f7df7a6b7c5a63e140e69425e6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."component-inherit"."0.0.3" =
    self.by-version."component-inherit"."0.0.3";
  by-version."component-inherit"."0.0.3" = self.buildNodePackage {
    name = "component-inherit-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/component-inherit/-/component-inherit-0.0.3.tgz";
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
      url = "https://registry.npmjs.org/compressible/-/compressible-2.0.7.tgz";
      name = "compressible-2.0.7.tgz";
      sha1 = "2058c52722fd3f1538a4f22ab14d0635904d19ae";
    };
    deps = {
      "mime-db-1.22.0" = self.by-version."mime-db"."1.22.0";
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
      url = "https://registry.npmjs.org/compression/-/compression-1.6.1.tgz";
      name = "compression-1.6.1.tgz";
      sha1 = "1bf4f96fd72019a3fd11513b4fc4dcd3bd16db55";
    };
    deps = {
      "accepts-1.3.2" = self.by-version."accepts"."1.3.2";
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
      url = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
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
  by-spec."concat-stream"."1.5.0" =
    self.by-version."concat-stream"."1.5.0";
  by-version."concat-stream"."1.5.0" = self.buildNodePackage {
    name = "concat-stream-1.5.0";
    version = "1.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/concat-stream/-/concat-stream-1.5.0.tgz";
      name = "concat-stream-1.5.0.tgz";
      sha1 = "53f7d43c51c5e43f81c8fdd03321c631be68d611";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "typedarray-0.0.6" = self.by-version."typedarray"."0.0.6";
      "readable-stream-2.0.6" = self.by-version."readable-stream"."2.0.6";
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
      url = "https://registry.npmjs.org/concat-stream/-/concat-stream-1.5.1.tgz";
      name = "concat-stream-1.5.1.tgz";
      sha1 = "f3b80acf9e1f48e3875c0688b41b6c31602eea1c";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "typedarray-0.0.6" = self.by-version."typedarray"."0.0.6";
      "readable-stream-2.0.6" = self.by-version."readable-stream"."2.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."config-chain"."~1.1.8" =
    self.by-version."config-chain"."1.1.10";
  by-version."config-chain"."1.1.10" = self.buildNodePackage {
    name = "config-chain-1.1.10";
    version = "1.1.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/config-chain/-/config-chain-1.1.10.tgz";
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
      url = "https://registry.npmjs.org/connect/-/connect-3.4.1.tgz";
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
      url = "https://registry.npmjs.org/connect-history-api-fallback/-/connect-history-api-fallback-1.1.0.tgz";
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
      url = "https://registry.npmjs.org/console-browserify/-/console-browserify-1.1.0.tgz";
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
      url = "https://registry.npmjs.org/constant-case/-/constant-case-1.1.2.tgz";
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
      url = "https://registry.npmjs.org/constants-browserify/-/constants-browserify-0.0.1.tgz";
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
  by-spec."constants-browserify"."^1.0.0" =
    self.by-version."constants-browserify"."1.0.0";
  by-version."constants-browserify"."1.0.0" = self.buildNodePackage {
    name = "constants-browserify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/constants-browserify/-/constants-browserify-1.0.0.tgz";
      name = "constants-browserify-1.0.0.tgz";
      sha1 = "c20b96d8c617748aaf1c16021760cd27fcb8cb75";
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
      url = "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.1.tgz";
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
      url = "https://registry.npmjs.org/content-type/-/content-type-1.0.1.tgz";
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
  by-spec."convert-source-map"."^1.1.0" =
    self.by-version."convert-source-map"."1.2.0";
  by-version."convert-source-map"."1.2.0" = self.buildNodePackage {
    name = "convert-source-map-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/convert-source-map/-/convert-source-map-1.2.0.tgz";
      name = "convert-source-map-1.2.0.tgz";
      sha1 = "44c08c2506f10fb3ca6fd888d5a3444cf8d6a669";
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
      url = "https://registry.npmjs.org/cookie/-/cookie-0.1.5.tgz";
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
      url = "https://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz";
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
      url = "https://registry.npmjs.org/cookiejar/-/cookiejar-2.0.6.tgz";
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
      url = "https://registry.npmjs.org/core-js/-/core-js-1.2.6.tgz";
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
  by-spec."core-js"."^2.1.0" =
    self.by-version."core-js"."2.3.0";
  by-version."core-js"."2.3.0" = self.buildNodePackage {
    name = "core-js-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/core-js/-/core-js-2.3.0.tgz";
      name = "core-js-2.3.0.tgz";
      sha1 = "fab83fbb0b2d8dc85fa636c4b9d34c75420c6d65";
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
      url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
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
  by-spec."create-ecdh"."^4.0.0" =
    self.by-version."create-ecdh"."4.0.0";
  by-version."create-ecdh"."4.0.0" = self.buildNodePackage {
    name = "create-ecdh-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/create-ecdh/-/create-ecdh-4.0.0.tgz";
      name = "create-ecdh-4.0.0.tgz";
      sha1 = "888c723596cdf7612f6498233eebd7a35301737d";
    };
    deps = {
      "bn.js-4.11.3" = self.by-version."bn.js"."4.11.3";
      "elliptic-6.2.3" = self.by-version."elliptic"."6.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."create-hash"."^1.1.0" =
    self.by-version."create-hash"."1.1.2";
  by-version."create-hash"."1.1.2" = self.buildNodePackage {
    name = "create-hash-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/create-hash/-/create-hash-1.1.2.tgz";
      name = "create-hash-1.1.2.tgz";
      sha1 = "51210062d7bb7479f6c65bb41a92208b1d61abad";
    };
    deps = {
      "cipher-base-1.0.2" = self.by-version."cipher-base"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "ripemd160-1.0.1" = self.by-version."ripemd160"."1.0.1";
      "sha.js-2.4.5" = self.by-version."sha.js"."2.4.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."create-hash"."^1.1.1" =
    self.by-version."create-hash"."1.1.2";
  by-spec."create-hmac"."^1.1.0" =
    self.by-version."create-hmac"."1.1.4";
  by-version."create-hmac"."1.1.4" = self.buildNodePackage {
    name = "create-hmac-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/create-hmac/-/create-hmac-1.1.4.tgz";
      name = "create-hmac-1.1.4.tgz";
      sha1 = "d3fb4ba253eb8b3f56e39ea2fbcb8af747bd3170";
    };
    deps = {
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."create-hmac"."^1.1.2" =
    self.by-version."create-hmac"."1.1.4";
  by-spec."cross-spawn-async"."^2.1.9" =
    self.by-version."cross-spawn-async"."2.2.2";
  by-version."cross-spawn-async"."2.2.2" = self.buildNodePackage {
    name = "cross-spawn-async-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cross-spawn-async/-/cross-spawn-async-2.2.2.tgz";
      name = "cross-spawn-async-2.2.2.tgz";
      sha1 = "90dea9b6920f03b2f7bc7499615001aee6f2317e";
    };
    deps = {
      "lru-cache-4.0.1" = self.by-version."lru-cache"."4.0.1";
      "which-1.2.4" = self.by-version."which"."1.2.4";
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
      url = "https://registry.npmjs.org/cryptiles/-/cryptiles-2.0.5.tgz";
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
  by-spec."crypto-browserify"."^3.11.0" =
    self.by-version."crypto-browserify"."3.11.0";
  by-version."crypto-browserify"."3.11.0" = self.buildNodePackage {
    name = "crypto-browserify-3.11.0";
    version = "3.11.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/crypto-browserify/-/crypto-browserify-3.11.0.tgz";
      name = "crypto-browserify-3.11.0.tgz";
      sha1 = "3652a0906ab9b2a7e0c3ce66a408e957a2485522";
    };
    deps = {
      "browserify-cipher-1.0.0" = self.by-version."browserify-cipher"."1.0.0";
      "browserify-sign-4.0.0" = self.by-version."browserify-sign"."4.0.0";
      "create-ecdh-4.0.0" = self.by-version."create-ecdh"."4.0.0";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "create-hmac-1.1.4" = self.by-version."create-hmac"."1.1.4";
      "diffie-hellman-5.0.2" = self.by-version."diffie-hellman"."5.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "pbkdf2-3.0.4" = self.by-version."pbkdf2"."3.0.4";
      "public-encrypt-4.0.0" = self.by-version."public-encrypt"."4.0.0";
      "randombytes-2.0.3" = self.by-version."randombytes"."2.0.3";
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
      url = "https://registry.npmjs.org/crypto-browserify/-/crypto-browserify-3.2.8.tgz";
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
      url = "https://registry.npmjs.org/css-color-names/-/css-color-names-0.0.3.tgz";
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
      url = "https://registry.npmjs.org/css-loader/-/css-loader-0.23.1.tgz";
      name = "css-loader-0.23.1.tgz";
      sha1 = "9fa23f2b5c0965235910ad5ecef3b8a36390fe50";
    };
    deps = {
      "css-selector-tokenizer-0.5.4" = self.by-version."css-selector-tokenizer"."0.5.4";
      "cssnano-3.5.2" = self.by-version."cssnano"."3.5.2";
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "lodash.camelcase-3.0.1" = self.by-version."lodash.camelcase"."3.0.1";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-modules-extract-imports-1.0.0" = self.by-version."postcss-modules-extract-imports"."1.0.0";
      "postcss-modules-local-by-default-1.0.1" = self.by-version."postcss-modules-local-by-default"."1.0.1";
      "postcss-modules-scope-1.0.0" = self.by-version."postcss-modules-scope"."1.0.0";
      "postcss-modules-values-1.1.2" = self.by-version."postcss-modules-values"."1.1.2";
      "source-list-map-0.1.6" = self.by-version."source-list-map"."0.1.6";
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
      url = "https://registry.npmjs.org/css-parse/-/css-parse-1.7.0.tgz";
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
      url = "https://registry.npmjs.org/css-select/-/css-select-1.2.0.tgz";
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
      url = "https://registry.npmjs.org/css-selector-tokenizer/-/css-selector-tokenizer-0.5.4.tgz";
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
      url = "https://registry.npmjs.org/css-what/-/css-what-2.1.0.tgz";
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
      url = "https://registry.npmjs.org/cssesc/-/cssesc-0.1.0.tgz";
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
    self.by-version."cssnano"."3.5.2";
  by-version."cssnano"."3.5.2" = self.buildNodePackage {
    name = "cssnano-3.5.2";
    version = "3.5.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cssnano/-/cssnano-3.5.2.tgz";
      name = "cssnano-3.5.2.tgz";
      sha1 = "91e213a942a38f7867d0f276a3fc8ed9b74bc223";
    };
    deps = {
      "autoprefixer-6.3.6" = self.by-version."autoprefixer"."6.3.6";
      "decamelize-1.2.0" = self.by-version."decamelize"."1.2.0";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "indexes-of-1.0.1" = self.by-version."indexes-of"."1.0.1";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-calc-5.2.1" = self.by-version."postcss-calc"."5.2.1";
      "postcss-colormin-2.2.0" = self.by-version."postcss-colormin"."2.2.0";
      "postcss-convert-values-2.3.4" = self.by-version."postcss-convert-values"."2.3.4";
      "postcss-discard-comments-2.0.4" = self.by-version."postcss-discard-comments"."2.0.4";
      "postcss-discard-duplicates-2.0.1" = self.by-version."postcss-discard-duplicates"."2.0.1";
      "postcss-discard-empty-2.1.0" = self.by-version."postcss-discard-empty"."2.1.0";
      "postcss-discard-unused-2.2.1" = self.by-version."postcss-discard-unused"."2.2.1";
      "postcss-filter-plugins-2.0.0" = self.by-version."postcss-filter-plugins"."2.0.0";
      "postcss-merge-idents-2.1.5" = self.by-version."postcss-merge-idents"."2.1.5";
      "postcss-merge-longhand-2.0.1" = self.by-version."postcss-merge-longhand"."2.0.1";
      "postcss-merge-rules-2.0.8" = self.by-version."postcss-merge-rules"."2.0.8";
      "postcss-minify-font-values-1.0.4" = self.by-version."postcss-minify-font-values"."1.0.4";
      "postcss-minify-gradients-1.0.1" = self.by-version."postcss-minify-gradients"."1.0.1";
      "postcss-minify-params-1.0.4" = self.by-version."postcss-minify-params"."1.0.4";
      "postcss-minify-selectors-2.0.4" = self.by-version."postcss-minify-selectors"."2.0.4";
      "postcss-normalize-charset-1.1.0" = self.by-version."postcss-normalize-charset"."1.1.0";
      "postcss-normalize-url-3.0.7" = self.by-version."postcss-normalize-url"."3.0.7";
      "postcss-ordered-values-2.1.0" = self.by-version."postcss-ordered-values"."2.1.0";
      "postcss-reduce-idents-2.3.0" = self.by-version."postcss-reduce-idents"."2.3.0";
      "postcss-reduce-transforms-1.0.3" = self.by-version."postcss-reduce-transforms"."1.0.3";
      "postcss-svgo-2.1.3" = self.by-version."postcss-svgo"."2.1.3";
      "postcss-unique-selectors-2.0.2" = self.by-version."postcss-unique-selectors"."2.0.2";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
      "postcss-zindex-2.1.1" = self.by-version."postcss-zindex"."2.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."csso"."~2.0.0" =
    self.by-version."csso"."2.0.0";
  by-version."csso"."2.0.0" = self.buildNodePackage {
    name = "csso-2.0.0";
    version = "2.0.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/csso/-/csso-2.0.0.tgz";
      name = "csso-2.0.0.tgz";
      sha1 = "178b43a44621221c27756086f531e02f42900ee8";
    };
    deps = {
      "clap-1.1.0" = self.by-version."clap"."1.1.0";
      "source-map-0.5.5" = self.by-version."source-map"."0.5.5";
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
      url = "https://registry.npmjs.org/custom-event/-/custom-event-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/d/-/d-0.1.1.tgz";
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
  by-spec."dashdash"."^1.12.0" =
    self.by-version."dashdash"."1.13.1";
  by-version."dashdash"."1.13.1" = self.buildNodePackage {
    name = "dashdash-1.13.1";
    version = "1.13.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/dashdash/-/dashdash-1.13.1.tgz";
      name = "dashdash-1.13.1.tgz";
      sha1 = "3530ed38b9026be9af05c83423c9154122e3d47c";
    };
    deps = {
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
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
      url = "https://registry.npmjs.org/date-now/-/date-now-0.1.4.tgz";
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
      url = "https://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
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
      url = "https://registry.npmjs.org/debug/-/debug-0.7.4.tgz";
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
  by-spec."debug"."^2.1.1" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."^2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."~2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."decamelize"."^1.0.0" =
    self.by-version."decamelize"."1.2.0";
  by-version."decamelize"."1.2.0" = self.buildNodePackage {
    name = "decamelize-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/decamelize/-/decamelize-1.2.0.tgz";
      name = "decamelize-1.2.0.tgz";
      sha1 = "f6534d15148269b20352e7bee26f501f9a191290";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."decamelize"."^1.1.1" =
    self.by-version."decamelize"."1.2.0";
  by-spec."decamelize"."^1.1.2" =
    self.by-version."decamelize"."1.2.0";
  by-spec."deep-eql"."^0.1.3" =
    self.by-version."deep-eql"."0.1.3";
  by-version."deep-eql"."0.1.3" = self.buildNodePackage {
    name = "deep-eql-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/deep-eql/-/deep-eql-0.1.3.tgz";
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
      url = "https://registry.npmjs.org/deep-equal/-/deep-equal-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/deep-extend/-/deep-extend-0.4.1.tgz";
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
      url = "https://registry.npmjs.org/defined/-/defined-1.0.0.tgz";
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
  by-spec."delayed-stream"."~1.0.0" =
    self.by-version."delayed-stream"."1.0.0";
  by-version."delayed-stream"."1.0.0" = self.buildNodePackage {
    name = "delayed-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
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
  by-spec."delegates"."^1.0.0" =
    self.by-version."delegates"."1.0.0";
  by-version."delegates"."1.0.0" = self.buildNodePackage {
    name = "delegates-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/delegates/-/delegates-1.0.0.tgz";
      name = "delegates-1.0.0.tgz";
      sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
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
      url = "https://registry.npmjs.org/depd/-/depd-1.1.0.tgz";
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
  by-spec."des.js"."^1.0.0" =
    self.by-version."des.js"."1.0.0";
  by-version."des.js"."1.0.0" = self.buildNodePackage {
    name = "des.js-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/des.js/-/des.js-1.0.0.tgz";
      name = "des.js-1.0.0.tgz";
      sha1 = "c074d2e2aa6a8a9a07dbd61f9a15c2cd83ec8ecc";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimalistic-assert-1.0.0" = self.by-version."minimalistic-assert"."1.0.0";
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
      url = "https://registry.npmjs.org/destroy/-/destroy-1.0.4.tgz";
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
  by-spec."detect-indent"."^3.0.1" =
    self.by-version."detect-indent"."3.0.1";
  by-version."detect-indent"."3.0.1" = self.buildNodePackage {
    name = "detect-indent-3.0.1";
    version = "3.0.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/detect-indent/-/detect-indent-3.0.1.tgz";
      name = "detect-indent-3.0.1.tgz";
      sha1 = "9dc5e5ddbceef8325764b9451b02bc6d54084f75";
    };
    deps = {
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "repeating-1.1.3" = self.by-version."repeating"."1.1.3";
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
      url = "https://registry.npmjs.org/di/-/di-0.0.1.tgz";
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
      url = "https://registry.npmjs.org/diff/-/diff-1.4.0.tgz";
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
  by-spec."diffie-hellman"."^5.0.0" =
    self.by-version."diffie-hellman"."5.0.2";
  by-version."diffie-hellman"."5.0.2" = self.buildNodePackage {
    name = "diffie-hellman-5.0.2";
    version = "5.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/diffie-hellman/-/diffie-hellman-5.0.2.tgz";
      name = "diffie-hellman-5.0.2.tgz";
      sha1 = "b5835739270cfe26acf632099fded2a07f209e5e";
    };
    deps = {
      "bn.js-4.11.3" = self.by-version."bn.js"."4.11.3";
      "miller-rabin-4.0.0" = self.by-version."miller-rabin"."4.0.0";
      "randombytes-2.0.3" = self.by-version."randombytes"."2.0.3";
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
      url = "https://registry.npmjs.org/dom-converter/-/dom-converter-0.1.4.tgz";
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
      url = "https://registry.npmjs.org/dom-serialize/-/dom-serialize-2.2.1.tgz";
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
      url = "https://registry.npmjs.org/dom-serializer/-/dom-serializer-0.1.0.tgz";
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
  by-spec."dom-walk"."^0.1.0" =
    self.by-version."dom-walk"."0.1.1";
  by-version."dom-walk"."0.1.1" = self.buildNodePackage {
    name = "dom-walk-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/dom-walk/-/dom-walk-0.1.1.tgz";
      name = "dom-walk-0.1.1.tgz";
      sha1 = "672226dc74c8f799ad35307df936aba11acd6018";
    };
    deps = {
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
      url = "https://registry.npmjs.org/domain-browser/-/domain-browser-1.1.7.tgz";
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
      url = "https://registry.npmjs.org/domelementtype/-/domelementtype-1.3.0.tgz";
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
      url = "https://registry.npmjs.org/domelementtype/-/domelementtype-1.1.3.tgz";
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
      url = "https://registry.npmjs.org/domhandler/-/domhandler-2.1.0.tgz";
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
      url = "https://registry.npmjs.org/domutils/-/domutils-1.1.6.tgz";
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
      url = "https://registry.npmjs.org/domutils/-/domutils-1.5.1.tgz";
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
      url = "https://registry.npmjs.org/dot-case/-/dot-case-1.1.2.tgz";
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
  by-spec."ecc-jsbn"."~0.1.1" =
    self.by-version."ecc-jsbn"."0.1.1";
  by-version."ecc-jsbn"."0.1.1" = self.buildNodePackage {
    name = "ecc-jsbn-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
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
      url = "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
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
  by-spec."elliptic"."^6.0.0" =
    self.by-version."elliptic"."6.2.3";
  by-version."elliptic"."6.2.3" = self.buildNodePackage {
    name = "elliptic-6.2.3";
    version = "6.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/elliptic/-/elliptic-6.2.3.tgz";
      name = "elliptic-6.2.3.tgz";
      sha1 = "18e46d7306b0951275a2d42063270a14b74ebe99";
    };
    deps = {
      "bn.js-4.11.3" = self.by-version."bn.js"."4.11.3";
      "brorand-1.0.5" = self.by-version."brorand"."1.0.5";
      "hash.js-1.0.3" = self.by-version."hash.js"."1.0.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."emojis-list"."^1.0.0" =
    self.by-version."emojis-list"."1.0.1";
  by-version."emojis-list"."1.0.1" = self.buildNodePackage {
    name = "emojis-list-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/emojis-list/-/emojis-list-1.0.1.tgz";
      name = "emojis-list-1.0.1.tgz";
      sha1 = "501365f8084c4d5e21b50c8d51ac780accd3ef78";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."encoding"."^0.1.11" =
    self.by-version."encoding"."0.1.12";
  by-version."encoding"."0.1.12" = self.buildNodePackage {
    name = "encoding-0.1.12";
    version = "0.1.12";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/encoding/-/encoding-0.1.12.tgz";
      name = "encoding-0.1.12.tgz";
      sha1 = "538b66f3ee62cd1ab51ec323829d1f9480c74beb";
    };
    deps = {
      "iconv-lite-0.4.13" = self.by-version."iconv-lite"."0.4.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."engine.io"."1.6.8" =
    self.by-version."engine.io"."1.6.8";
  by-version."engine.io"."1.6.8" = self.buildNodePackage {
    name = "engine.io-1.6.8";
    version = "1.6.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/engine.io/-/engine.io-1.6.8.tgz";
      name = "engine.io-1.6.8.tgz";
      sha1 = "de05a06b757e7517695e088c7b051c47819f511b";
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
  by-spec."engine.io-client"."1.6.8" =
    self.by-version."engine.io-client"."1.6.8";
  by-version."engine.io-client"."1.6.8" = self.buildNodePackage {
    name = "engine.io-client-1.6.8";
    version = "1.6.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/engine.io-client/-/engine.io-client-1.6.8.tgz";
      name = "engine.io-client-1.6.8.tgz";
      sha1 = "6e2db11648b45e405c46b172ea3e3dac37cc0ceb";
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
      url = "https://registry.npmjs.org/engine.io-parser/-/engine.io-parser-1.2.4.tgz";
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
  by-spec."enhanced-resolve"."^2.2.0" =
    self.by-version."enhanced-resolve"."2.2.2";
  by-version."enhanced-resolve"."2.2.2" = self.buildNodePackage {
    name = "enhanced-resolve-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-2.2.2.tgz";
      name = "enhanced-resolve-2.2.2.tgz";
      sha1 = "4da494d591183308bd46a95f5b40e255dc9d4a16";
    };
    deps = {
      "tapable-0.2.4" = self.by-version."tapable"."0.2.4";
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
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
      url = "https://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-0.9.1.tgz";
      name = "enhanced-resolve-0.9.1.tgz";
      sha1 = "4d6e689b3725f86090927ccc86cd9f1635b89e2e";
    };
    deps = {
      "tapable-0.1.10" = self.by-version."tapable"."0.1.10";
      "memory-fs-0.2.0" = self.by-version."memory-fs"."0.2.0";
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
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
      url = "https://registry.npmjs.org/ent/-/ent-2.2.0.tgz";
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
      url = "https://registry.npmjs.org/entities/-/entities-1.1.1.tgz";
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
      url = "https://registry.npmjs.org/envify/-/envify-3.4.0.tgz";
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
      url = "https://registry.npmjs.org/errno/-/errno-0.1.4.tgz";
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
      url = "https://registry.npmjs.org/error-ex/-/error-ex-1.3.0.tgz";
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
  by-spec."error-stack-parser"."^1.2.0" =
    self.by-version."error-stack-parser"."1.3.5";
  by-version."error-stack-parser"."1.3.5" = self.buildNodePackage {
    name = "error-stack-parser-1.3.5";
    version = "1.3.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/error-stack-parser/-/error-stack-parser-1.3.5.tgz";
      name = "error-stack-parser-1.3.5.tgz";
      sha1 = "5430ee6474758cd5f554b23346bdc04066eb9ed2";
    };
    deps = {
      "stackframe-0.3.1" = self.by-version."stackframe"."0.3.1";
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
      url = "https://registry.npmjs.org/es5-ext/-/es5-ext-0.10.11.tgz";
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
    self.by-version."es5-shim"."4.5.8";
  by-version."es5-shim"."4.5.8" = self.buildNodePackage {
    name = "es5-shim-4.5.8";
    version = "4.5.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/es5-shim/-/es5-shim-4.5.8.tgz";
      name = "es5-shim-4.5.8.tgz";
      sha1 = "63d9ecc28fc3e52735e7ebecbc6a6d2973838526";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "es5-shim" = self.by-version."es5-shim"."4.5.8";
  by-spec."es6-iterator"."2" =
    self.by-version."es6-iterator"."2.0.0";
  by-version."es6-iterator"."2.0.0" = self.buildNodePackage {
    name = "es6-iterator-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/es6-iterator/-/es6-iterator-2.0.0.tgz";
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
  by-spec."es6-promise"."^3.1.2" =
    self.by-version."es6-promise"."3.1.2";
  by-version."es6-promise"."3.1.2" = self.buildNodePackage {
    name = "es6-promise-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/es6-promise/-/es6-promise-3.1.2.tgz";
      name = "es6-promise-3.1.2.tgz";
      sha1 = "795e25ceb47f7babb263d151afbedd92d18e6a07";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "es6-promise" = self.by-version."es6-promise"."3.1.2";
  by-spec."es6-symbol"."3" =
    self.by-version."es6-symbol"."3.0.2";
  by-version."es6-symbol"."3.0.2" = self.buildNodePackage {
    name = "es6-symbol-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/es6-symbol/-/es6-symbol-3.0.2.tgz";
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
      url = "https://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz";
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
      url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.2.tgz";
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
    self.by-version."escape-string-regexp"."1.0.5";
  by-version."escape-string-regexp"."1.0.5" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
      name = "escape-string-regexp-1.0.5.tgz";
      sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
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
    self.by-version."esprima"."2.7.2";
  by-version."esprima"."2.7.2" = self.buildNodePackage {
    name = "esprima-2.7.2";
    version = "2.7.2";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/esprima/-/esprima-2.7.2.tgz";
      name = "esprima-2.7.2.tgz";
      sha1 = "f43be543609984eae44c933ac63352a6af35f339";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima-fb"."13001.1001.0-dev-harmony-fb" =
    self.by-version."esprima-fb"."13001.1001.0-dev-harmony-fb";
  by-version."esprima-fb"."13001.1001.0-dev-harmony-fb" = self.buildNodePackage {
    name = "esprima-fb-13001.1001.0-dev-harmony-fb";
    version = "13001.1001.0-dev-harmony-fb";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/esprima-fb/-/esprima-fb-13001.1001.0-dev-harmony-fb.tgz";
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
  by-spec."esutils"."^2.0.0" =
    self.by-version."esutils"."2.0.2";
  by-version."esutils"."2.0.2" = self.buildNodePackage {
    name = "esutils-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/esutils/-/esutils-2.0.2.tgz";
      name = "esutils-2.0.2.tgz";
      sha1 = "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esutils"."^2.0.2" =
    self.by-version."esutils"."2.0.2";
  by-spec."etag"."~1.7.0" =
    self.by-version."etag"."1.7.0";
  by-version."etag"."1.7.0" = self.buildNodePackage {
    name = "etag-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/etag/-/etag-1.7.0.tgz";
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
    self.by-version."eventemitter3"."1.2.0";
  by-version."eventemitter3"."1.2.0" = self.buildNodePackage {
    name = "eventemitter3-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/eventemitter3/-/eventemitter3-1.2.0.tgz";
      name = "eventemitter3-1.2.0.tgz";
      sha1 = "1c86991d816ad1e504750e73874224ecf3bec508";
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
      url = "https://registry.npmjs.org/events/-/events-1.1.0.tgz";
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
      url = "https://registry.npmjs.org/eventsource/-/eventsource-0.1.6.tgz";
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
  by-spec."evp_bytestokey"."^1.0.0" =
    self.by-version."evp_bytestokey"."1.0.0";
  by-version."evp_bytestokey"."1.0.0" = self.buildNodePackage {
    name = "evp_bytestokey-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/evp_bytestokey/-/evp_bytestokey-1.0.0.tgz";
      name = "evp_bytestokey-1.0.0.tgz";
      sha1 = "497b66ad9fef65cd7c08a6180824ba1476b66e53";
    };
    deps = {
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
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
      url = "https://registry.npmjs.org/expand-braces/-/expand-braces-0.1.2.tgz";
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
    self.by-version."expand-brackets"."0.1.5";
  by-version."expand-brackets"."0.1.5" = self.buildNodePackage {
    name = "expand-brackets-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/expand-brackets/-/expand-brackets-0.1.5.tgz";
      name = "expand-brackets-0.1.5.tgz";
      sha1 = "df07284e342a807cd733ac5af72411e581d1177b";
    };
    deps = {
      "is-posix-bracket-0.1.1" = self.by-version."is-posix-bracket"."0.1.1";
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
      url = "https://registry.npmjs.org/expand-range/-/expand-range-0.1.1.tgz";
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
      url = "https://registry.npmjs.org/expand-range/-/expand-range-1.8.1.tgz";
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
      url = "https://registry.npmjs.org/express/-/express-4.13.4.tgz";
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
      "type-is-1.6.12" = self.by-version."type-is"."1.6.12";
      "utils-merge-1.0.0" = self.by-version."utils-merge"."1.0.0";
      "vary-1.0.1" = self.by-version."vary"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extend"."3.0.0" =
    self.by-version."extend"."3.0.0";
  by-version."extend"."3.0.0" = self.buildNodePackage {
    name = "extend-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/extend/-/extend-3.0.0.tgz";
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
  by-spec."extend"."^3.0.0" =
    self.by-version."extend"."3.0.0";
  by-spec."extend"."~3.0.0" =
    self.by-version."extend"."3.0.0";
  by-spec."extglob"."^0.3.1" =
    self.by-version."extglob"."0.3.2";
  by-version."extglob"."0.3.2" = self.buildNodePackage {
    name = "extglob-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/extglob/-/extglob-0.3.2.tgz";
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
  by-spec."extract-zip"."~1.5.0" =
    self.by-version."extract-zip"."1.5.0";
  by-version."extract-zip"."1.5.0" = self.buildNodePackage {
    name = "extract-zip-1.5.0";
    version = "1.5.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/extract-zip/-/extract-zip-1.5.0.tgz";
      name = "extract-zip-1.5.0.tgz";
      sha1 = "92ccf6d81ef70a9fa4c1747114ccef6d8688a6c4";
    };
    deps = {
      "concat-stream-1.5.0" = self.by-version."concat-stream"."1.5.0";
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "mkdirp-0.5.0" = self.by-version."mkdirp"."0.5.0";
      "yauzl-2.4.1" = self.by-version."yauzl"."2.4.1";
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
      url = "https://registry.npmjs.org/extsprintf/-/extsprintf-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/fastparse/-/fastparse-1.1.1.tgz";
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
  by-spec."faye-websocket"."^0.10.0" =
    self.by-version."faye-websocket"."0.10.0";
  by-version."faye-websocket"."0.10.0" = self.buildNodePackage {
    name = "faye-websocket-0.10.0";
    version = "0.10.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/faye-websocket/-/faye-websocket-0.10.0.tgz";
      name = "faye-websocket-0.10.0.tgz";
      sha1 = "4e492f8d04dfb6f89003507f6edbf2d501e7c6f4";
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
  by-spec."faye-websocket"."~0.11.0" =
    self.by-version."faye-websocket"."0.11.0";
  by-version."faye-websocket"."0.11.0" = self.buildNodePackage {
    name = "faye-websocket-0.11.0";
    version = "0.11.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/faye-websocket/-/faye-websocket-0.11.0.tgz";
      name = "faye-websocket-0.11.0.tgz";
      sha1 = "d9ccf0e789e7db725d74bc4877d23aa42972ac50";
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
      url = "https://registry.npmjs.org/fbjs/-/fbjs-0.6.1.tgz";
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
  by-spec."fbjs"."^0.8.0" =
    self.by-version."fbjs"."0.8.1";
  by-version."fbjs"."0.8.1" = self.buildNodePackage {
    name = "fbjs-0.8.1";
    version = "0.8.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fbjs/-/fbjs-0.8.1.tgz";
      name = "fbjs-0.8.1.tgz";
      sha1 = "b6b6730c6643cade9563c518c55d823c78d0889e";
    };
    deps = {
      "babel-plugin-syntax-flow-6.5.0" = self.by-version."babel-plugin-syntax-flow"."6.5.0";
      "core-js-1.2.6" = self.by-version."core-js"."1.2.6";
      "isomorphic-fetch-2.2.1" = self.by-version."isomorphic-fetch"."2.2.1";
      "loose-envify-1.1.0" = self.by-version."loose-envify"."1.1.0";
      "promise-7.1.1" = self.by-version."promise"."7.1.1";
      "ua-parser-js-0.7.10" = self.by-version."ua-parser-js"."0.7.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fd-slicer"."~1.0.1" =
    self.by-version."fd-slicer"."1.0.1";
  by-version."fd-slicer"."1.0.1" = self.buildNodePackage {
    name = "fd-slicer-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fd-slicer/-/fd-slicer-1.0.1.tgz";
      name = "fd-slicer-1.0.1.tgz";
      sha1 = "8b5bcbd9ec327c5041bf9ab023fd6750f1177e65";
    };
    deps = {
      "pend-1.2.0" = self.by-version."pend"."1.2.0";
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
      url = "https://registry.npmjs.org/file-loader/-/file-loader-0.8.5.tgz";
      name = "file-loader-0.8.5.tgz";
      sha1 = "9275d031fe780f27d47f5f4af02bd43713cc151b";
    };
    deps = {
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
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
      url = "https://registry.npmjs.org/filename-regex/-/filename-regex-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/fill-range/-/fill-range-2.2.3.tgz";
      name = "fill-range-2.2.3.tgz";
      sha1 = "50b77dfd7e469bc7492470963699fe7a8485a723";
    };
    deps = {
      "is-number-2.1.0" = self.by-version."is-number"."2.1.0";
      "isobject-2.1.0" = self.by-version."isobject"."2.1.0";
      "randomatic-1.1.5" = self.by-version."randomatic"."1.1.5";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
      "repeat-string-1.5.4" = self.by-version."repeat-string"."1.5.4";
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
      url = "https://registry.npmjs.org/finalhandler/-/finalhandler-0.4.1.tgz";
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
    self.by-version."find-up"."1.1.2";
  by-version."find-up"."1.1.2" = self.buildNodePackage {
    name = "find-up-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/find-up/-/find-up-1.1.2.tgz";
      name = "find-up-1.1.2.tgz";
      sha1 = "6b2e9822b1a2ce0a60ab64d610eccad53cb24d0f";
    };
    deps = {
      "path-exists-2.1.0" = self.by-version."path-exists"."2.1.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."flash-notification-react-redux"."^1.0.5" =
    self.by-version."flash-notification-react-redux"."1.0.5";
  by-version."flash-notification-react-redux"."1.0.5" = self.buildNodePackage {
    name = "flash-notification-react-redux-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/flash-notification-react-redux/-/flash-notification-react-redux-1.0.5.tgz";
      name = "flash-notification-react-redux-1.0.5.tgz";
      sha1 = "2d890c8ce06f0b596ad03b9285259aba209d081c";
    };
    deps = {
      "classnames-2.2.4" = self.by-version."classnames"."2.2.4";
      "react-0.14.8" = self.by-version."react"."0.14.8";
      "react-redux-4.4.5" = self.by-version."react-redux"."4.4.5";
      "redux-3.5.2" = self.by-version."redux"."3.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "flash-notification-react-redux" = self.by-version."flash-notification-react-redux"."1.0.5";
  by-spec."flatten"."1.0.2" =
    self.by-version."flatten"."1.0.2";
  by-version."flatten"."1.0.2" = self.buildNodePackage {
    name = "flatten-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/flatten/-/flatten-1.0.2.tgz";
      name = "flatten-1.0.2.tgz";
      sha1 = "dae46a9d78fbe25292258cc1e780a41d95c03782";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."flatten"."^1.0.2" =
    self.by-version."flatten"."1.0.2";
  by-spec."font-awesome"."^4.5.0" =
    self.by-version."font-awesome"."4.6.1";
  by-version."font-awesome"."4.6.1" = self.buildNodePackage {
    name = "font-awesome-4.6.1";
    version = "4.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/font-awesome/-/font-awesome-4.6.1.tgz";
      name = "font-awesome-4.6.1.tgz";
      sha1 = "547265fb4c45bbed90ab8bc4f77a97b37b852a12";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "font-awesome" = self.by-version."font-awesome"."4.6.1";
  by-spec."for-in"."^0.1.5" =
    self.by-version."for-in"."0.1.5";
  by-version."for-in"."0.1.5" = self.buildNodePackage {
    name = "for-in-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/for-in/-/for-in-0.1.5.tgz";
      name = "for-in-0.1.5.tgz";
      sha1 = "007374e2b6d5c67420a1479bdb75a04872b738c4";
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
    self.by-version."for-own"."0.1.4";
  by-version."for-own"."0.1.4" = self.buildNodePackage {
    name = "for-own-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/for-own/-/for-own-0.1.4.tgz";
      name = "for-own-0.1.4.tgz";
      sha1 = "0149b41a39088c7515f51ebe1c1386d45f935072";
    };
    deps = {
      "for-in-0.1.5" = self.by-version."for-in"."0.1.5";
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
      url = "https://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
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
  by-spec."form-data"."1.0.0-rc3" =
    self.by-version."form-data"."1.0.0-rc3";
  by-version."form-data"."1.0.0-rc3" = self.buildNodePackage {
    name = "form-data-1.0.0-rc3";
    version = "1.0.0-rc3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/form-data/-/form-data-1.0.0-rc3.tgz";
      name = "form-data-1.0.0-rc3.tgz";
      sha1 = "d35bc62e7fbc2937ae78f948aaa0d38d90607577";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.10" = self.by-version."mime-types"."2.1.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~1.0.0-rc3" =
    self.by-version."form-data"."1.0.0-rc4";
  by-version."form-data"."1.0.0-rc4" = self.buildNodePackage {
    name = "form-data-1.0.0-rc4";
    version = "1.0.0-rc4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/form-data/-/form-data-1.0.0-rc4.tgz";
      name = "form-data-1.0.0-rc4.tgz";
      sha1 = "05ac6bc22227b43e4461f488161554699d4f8b5e";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.10" = self.by-version."mime-types"."2.1.10";
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
      url = "https://registry.npmjs.org/formidable/-/formidable-1.0.17.tgz";
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
      url = "https://registry.npmjs.org/forwarded/-/forwarded-0.1.0.tgz";
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
      url = "https://registry.npmjs.org/fresh/-/fresh-0.3.0.tgz";
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
  by-spec."fs-extra"."~0.26.4" =
    self.by-version."fs-extra"."0.26.7";
  by-version."fs-extra"."0.26.7" = self.buildNodePackage {
    name = "fs-extra-0.26.7";
    version = "0.26.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fs-extra/-/fs-extra-0.26.7.tgz";
      name = "fs-extra-0.26.7.tgz";
      sha1 = "9ae1fdd94897798edab76d0918cf42d0c3184fa9";
    };
    deps = {
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
      "jsonfile-2.3.0" = self.by-version."jsonfile"."2.3.0";
      "klaw-1.2.0" = self.by-version."klaw"."1.2.0";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "rimraf-2.5.2" = self.by-version."rimraf"."2.5.2";
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
      url = "https://registry.npmjs.org/fstream/-/fstream-1.0.8.tgz";
      name = "fstream-1.0.8.tgz";
      sha1 = "7e8d7a73abb3647ef36e4b8a15ca801dba03d038";
    };
    deps = {
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rimraf-2.5.2" = self.by-version."rimraf"."2.5.2";
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
      url = "https://registry.npmjs.org/fstream-ignore/-/fstream-ignore-1.0.3.tgz";
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
  by-spec."gauge"."~1.2.5" =
    self.by-version."gauge"."1.2.7";
  by-version."gauge"."1.2.7" = self.buildNodePackage {
    name = "gauge-1.2.7";
    version = "1.2.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gauge/-/gauge-1.2.7.tgz";
      name = "gauge-1.2.7.tgz";
      sha1 = "e9cec5483d3d4ee0ef44b60a7d99e4935e136d93";
    };
    deps = {
      "ansi-0.3.1" = self.by-version."ansi"."0.3.1";
      "has-unicode-2.0.0" = self.by-version."has-unicode"."2.0.0";
      "lodash.pad-4.3.0" = self.by-version."lodash.pad"."4.3.0";
      "lodash.padend-4.4.0" = self.by-version."lodash.padend"."4.4.0";
      "lodash.padstart-4.4.0" = self.by-version."lodash.padstart"."4.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."gaze"."^1.0.0" =
    self.by-version."gaze"."1.0.0";
  by-version."gaze"."1.0.0" = self.buildNodePackage {
    name = "gaze-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gaze/-/gaze-1.0.0.tgz";
      name = "gaze-1.0.0.tgz";
      sha1 = "3d1f0fe2b5cf79bf253a875df3d670c636db3e0b";
    };
    deps = {
      "globule-0.2.0" = self.by-version."globule"."0.2.0";
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
      url = "https://registry.npmjs.org/generate-function/-/generate-function-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/generate-object-property/-/generate-object-property-1.2.0.tgz";
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
      url = "https://registry.npmjs.org/get-stdin/-/get-stdin-4.0.1.tgz";
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
  by-spec."getpass"."^0.1.1" =
    self.by-version."getpass"."0.1.6";
  by-version."getpass"."0.1.6" = self.buildNodePackage {
    name = "getpass-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/getpass/-/getpass-0.1.6.tgz";
      name = "getpass-0.1.6.tgz";
      sha1 = "283ffd9fc1256840875311c1b60e8c40187110e6";
    };
    deps = {
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
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
      url = "https://registry.npmjs.org/glob/-/glob-4.5.3.tgz";
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
      url = "https://registry.npmjs.org/glob/-/glob-3.2.3.tgz";
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
      url = "https://registry.npmjs.org/glob/-/glob-3.2.11.tgz";
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
  by-spec."glob"."^6.0.4" =
    self.by-version."glob"."6.0.4";
  by-version."glob"."6.0.4" = self.buildNodePackage {
    name = "glob-6.0.4";
    version = "6.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-6.0.4.tgz";
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
  by-spec."glob"."^7.0.0" =
    self.by-version."glob"."7.0.3";
  by-version."glob"."7.0.3" = self.buildNodePackage {
    name = "glob-7.0.3";
    version = "7.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-7.0.3.tgz";
      name = "glob-7.0.3.tgz";
      sha1 = "0aa235931a4a96ac13d60ffac2fb877bd6ed4f58";
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
  by-spec."glob"."^7.0.3" =
    self.by-version."glob"."7.0.3";
  by-spec."glob"."~3.2.7" =
    self.by-version."glob"."3.2.11";
  by-spec."glob-base"."^0.3.0" =
    self.by-version."glob-base"."0.3.0";
  by-version."glob-base"."0.3.0" = self.buildNodePackage {
    name = "glob-base-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob-base/-/glob-base-0.3.0.tgz";
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
      url = "https://registry.npmjs.org/glob-parent/-/glob-parent-2.0.0.tgz";
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
  by-spec."global"."^4.3.0" =
    self.by-version."global"."4.3.0";
  by-version."global"."4.3.0" = self.buildNodePackage {
    name = "global-4.3.0";
    version = "4.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/global/-/global-4.3.0.tgz";
      name = "global-4.3.0.tgz";
      sha1 = "ef7ec4beead579b454f5ebd5e7f303db54f42a2b";
    };
    deps = {
      "min-document-2.18.0" = self.by-version."min-document"."2.18.0";
      "process-0.5.2" = self.by-version."process"."0.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."globals"."^8.3.0" =
    self.by-version."globals"."8.18.0";
  by-version."globals"."8.18.0" = self.buildNodePackage {
    name = "globals-8.18.0";
    version = "8.18.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/globals/-/globals-8.18.0.tgz";
      name = "globals-8.18.0.tgz";
      sha1 = "93d4a62bdcac38cfafafc47d6b034768cb0ffcb4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."globule"."^0.2.0" =
    self.by-version."globule"."0.2.0";
  by-version."globule"."0.2.0" = self.buildNodePackage {
    name = "globule-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/globule/-/globule-0.2.0.tgz";
      name = "globule-0.2.0.tgz";
      sha1 = "26b64d10e1edcab6098d8fe00bd2b73cca08a8fb";
    };
    deps = {
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^4.1.2" =
    self.by-version."graceful-fs"."4.1.3";
  by-version."graceful-fs"."4.1.3" = self.buildNodePackage {
    name = "graceful-fs-4.1.3";
    version = "4.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.3.tgz";
      name = "graceful-fs-4.1.3.tgz";
      sha1 = "92033ce11113c41e2628d61fdfa40bc10dc0155c";
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
      url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-2.0.3.tgz";
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
      url = "https://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/growl/-/growl-1.8.1.tgz";
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
      url = "https://registry.npmjs.org/har-validator/-/har-validator-2.0.6.tgz";
      name = "har-validator-2.0.6.tgz";
      sha1 = "cdcbc08188265ad119b6a5a7c8ab70eecfb5d27d";
    };
    deps = {
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "commander-2.9.0" = self.by-version."commander"."2.9.0";
      "is-my-json-valid-2.13.1" = self.by-version."is-my-json-valid"."2.13.1";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."har-validator"."~2.0.6" =
    self.by-version."har-validator"."2.0.6";
  by-spec."has-ansi"."^2.0.0" =
    self.by-version."has-ansi"."2.0.0";
  by-version."has-ansi"."2.0.0" = self.buildNodePackage {
    name = "has-ansi-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/has-ansi/-/has-ansi-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/has-binary/-/has-binary-0.1.6.tgz";
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
      url = "https://registry.npmjs.org/has-binary/-/has-binary-0.1.7.tgz";
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
      url = "https://registry.npmjs.org/has-cors/-/has-cors-1.1.0.tgz";
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
      url = "https://registry.npmjs.org/has-flag/-/has-flag-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/has-own/-/has-own-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/has-unicode/-/has-unicode-2.0.0.tgz";
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
  by-spec."hash.js"."^1.0.0" =
    self.by-version."hash.js"."1.0.3";
  by-version."hash.js"."1.0.3" = self.buildNodePackage {
    name = "hash.js-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/hash.js/-/hash.js-1.0.3.tgz";
      name = "hash.js-1.0.3.tgz";
      sha1 = "1332ff00156c0a0ffdd8236013d07b77a0451573";
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
  by-spec."hasha"."^2.2.0" =
    self.by-version."hasha"."2.2.0";
  by-version."hasha"."2.2.0" = self.buildNodePackage {
    name = "hasha-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/hasha/-/hasha-2.2.0.tgz";
      name = "hasha-2.2.0.tgz";
      sha1 = "78d7cbfc1e6d66303fe79837365984517b2f6ee1";
    };
    deps = {
      "is-stream-1.1.0" = self.by-version."is-stream"."1.1.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
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
      url = "https://registry.npmjs.org/hawk/-/hawk-3.1.3.tgz";
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
  by-spec."hawk"."~3.1.3" =
    self.by-version."hawk"."3.1.3";
  by-spec."he"."1.0.x" =
    self.by-version."he"."1.0.0";
  by-version."he"."1.0.0" = self.buildNodePackage {
    name = "he-1.0.0";
    version = "1.0.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/he/-/he-1.0.0.tgz";
      name = "he-1.0.0.tgz";
      sha1 = "6da5b265d7f2c3b5e480749168e0e159d05728da";
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
      url = "https://registry.npmjs.org/hoek/-/hoek-2.16.3.tgz";
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
    self.by-version."hoist-non-react-statics"."1.0.5";
  by-version."hoist-non-react-statics"."1.0.5" = self.buildNodePackage {
    name = "hoist-non-react-statics-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/hoist-non-react-statics/-/hoist-non-react-statics-1.0.5.tgz";
      name = "hoist-non-react-statics-1.0.5.tgz";
      sha1 = "0e36d2c130c8511f267a0d4ceb45ec7d7e4f0c70";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hoist-non-react-statics"."^1.0.5" =
    self.by-version."hoist-non-react-statics"."1.0.5";
  by-spec."home-or-tmp"."^1.0.0" =
    self.by-version."home-or-tmp"."1.0.0";
  by-version."home-or-tmp"."1.0.0" = self.buildNodePackage {
    name = "home-or-tmp-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/home-or-tmp/-/home-or-tmp-1.0.0.tgz";
      name = "home-or-tmp-1.0.0.tgz";
      sha1 = "4b9f1e40800c3e50c6c27f781676afcce71f3985";
    };
    deps = {
      "os-tmpdir-1.0.1" = self.by-version."os-tmpdir"."1.0.1";
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
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
      url = "https://registry.npmjs.org/hosted-git-info/-/hosted-git-info-2.1.4.tgz";
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
  by-spec."html-comment-regex"."^1.1.0" =
    self.by-version."html-comment-regex"."1.1.0";
  by-version."html-comment-regex"."1.1.0" = self.buildNodePackage {
    name = "html-comment-regex-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/html-comment-regex/-/html-comment-regex-1.1.0.tgz";
      name = "html-comment-regex-1.1.0.tgz";
      sha1 = "76ad081a3ef5f9cb8fbd9c858cff30677dbacabc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."html-entities"."^1.2.0" =
    self.by-version."html-entities"."1.2.0";
  by-version."html-entities"."1.2.0" = self.buildNodePackage {
    name = "html-entities-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/html-entities/-/html-entities-1.2.0.tgz";
      name = "html-entities-1.2.0.tgz";
      sha1 = "41948caf85ce82fed36e4e6a0ed371a6664379e2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."html-minifier"."^1.3.1" =
    self.by-version."html-minifier"."1.5.0";
  by-version."html-minifier"."1.5.0" = self.buildNodePackage {
    name = "html-minifier-1.5.0";
    version = "1.5.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/html-minifier/-/html-minifier-1.5.0.tgz";
      name = "html-minifier-1.5.0.tgz";
      sha1 = "beb05fd9cc340945865c10f40aedf469af4b1534";
    };
    deps = {
      "change-case-2.3.1" = self.by-version."change-case"."2.3.1";
      "clean-css-3.4.12" = self.by-version."clean-css"."3.4.12";
      "commander-2.9.0" = self.by-version."commander"."2.9.0";
      "concat-stream-1.5.1" = self.by-version."concat-stream"."1.5.1";
      "he-1.0.0" = self.by-version."he"."1.0.0";
      "ncname-1.0.0" = self.by-version."ncname"."1.0.0";
      "relateurl-0.2.6" = self.by-version."relateurl"."0.2.6";
      "uglify-js-2.6.2" = self.by-version."uglify-js"."2.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."html-webpack-plugin"."^2.7.2" =
    self.by-version."html-webpack-plugin"."2.16.0";
  by-version."html-webpack-plugin"."2.16.0" = self.buildNodePackage {
    name = "html-webpack-plugin-2.16.0";
    version = "2.16.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/html-webpack-plugin/-/html-webpack-plugin-2.16.0.tgz";
      name = "html-webpack-plugin-2.16.0.tgz";
      sha1 = "556e94dadf83aa4b2dd662d783e322ea28bfca0c";
    };
    deps = {
      "bluebird-3.3.5" = self.by-version."bluebird"."3.3.5";
      "html-minifier-1.5.0" = self.by-version."html-minifier"."1.5.0";
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
      "lodash-4.11.1" = self.by-version."lodash"."4.11.1";
      "pretty-error-2.0.0" = self.by-version."pretty-error"."2.0.0";
      "toposort-0.2.12" = self.by-version."toposort"."0.2.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "html-webpack-plugin" = self.by-version."html-webpack-plugin"."2.16.0";
  by-spec."htmlparser2"."~3.3.0" =
    self.by-version."htmlparser2"."3.3.0";
  by-version."htmlparser2"."3.3.0" = self.buildNodePackage {
    name = "htmlparser2-3.3.0";
    version = "3.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/htmlparser2/-/htmlparser2-3.3.0.tgz";
      name = "htmlparser2-3.3.0.tgz";
      sha1 = "cc70d05a59f6542e43f0e685c982e14c924a9efe";
    };
    deps = {
      "domhandler-2.1.0" = self.by-version."domhandler"."2.1.0";
      "domutils-1.1.6" = self.by-version."domutils"."1.1.6";
      "domelementtype-1.3.0" = self.by-version."domelementtype"."1.3.0";
      "readable-stream-1.0.34" = self.by-version."readable-stream"."1.0.34";
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
      url = "https://registry.npmjs.org/http-browserify/-/http-browserify-1.7.0.tgz";
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
      url = "https://registry.npmjs.org/http-errors/-/http-errors-1.3.1.tgz";
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
  by-spec."http-errors"."~1.4.0" =
    self.by-version."http-errors"."1.4.0";
  by-version."http-errors"."1.4.0" = self.buildNodePackage {
    name = "http-errors-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/http-errors/-/http-errors-1.4.0.tgz";
      name = "http-errors-1.4.0.tgz";
      sha1 = "6c0242dea6b3df7afda153c71089b31c6e82aabf";
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
  by-spec."http-proxy"."^1.11.2" =
    self.by-version."http-proxy"."1.13.2";
  by-version."http-proxy"."1.13.2" = self.buildNodePackage {
    name = "http-proxy-1.13.2";
    version = "1.13.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/http-proxy/-/http-proxy-1.13.2.tgz";
      name = "http-proxy-1.13.2.tgz";
      sha1 = "636bcd09f3e7045377a5e919e92d16d29fdbff09";
    };
    deps = {
      "eventemitter3-1.2.0" = self.by-version."eventemitter3"."1.2.0";
      "requires-port-1.0.0" = self.by-version."requires-port"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-proxy"."^1.13.0" =
    self.by-version."http-proxy"."1.13.2";
  by-spec."http-signature"."~1.1.0" =
    self.by-version."http-signature"."1.1.1";
  by-version."http-signature"."1.1.1" = self.buildNodePackage {
    name = "http-signature-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/http-signature/-/http-signature-1.1.1.tgz";
      name = "http-signature-1.1.1.tgz";
      sha1 = "df72e267066cd0ac67fb76adf8e134a8fbcf91bf";
    };
    deps = {
      "assert-plus-0.2.0" = self.by-version."assert-plus"."0.2.0";
      "jsprim-1.2.2" = self.by-version."jsprim"."1.2.2";
      "sshpk-1.8.3" = self.by-version."sshpk"."1.8.3";
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
      url = "https://registry.npmjs.org/https-browserify/-/https-browserify-0.0.0.tgz";
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
  by-spec."https-browserify"."0.0.1" =
    self.by-version."https-browserify"."0.0.1";
  by-version."https-browserify"."0.0.1" = self.buildNodePackage {
    name = "https-browserify-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/https-browserify/-/https-browserify-0.0.1.tgz";
      name = "https-browserify-0.0.1.tgz";
      sha1 = "3f91365cabe60b77ed0ebba24b454e3e09d95a82";
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
      url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.13.tgz";
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
  by-spec."iconv-lite"."~0.4.13" =
    self.by-version."iconv-lite"."0.4.13";
  by-spec."icss-replace-symbols"."^1.0.2" =
    self.by-version."icss-replace-symbols"."1.0.2";
  by-version."icss-replace-symbols"."1.0.2" = self.buildNodePackage {
    name = "icss-replace-symbols-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/icss-replace-symbols/-/icss-replace-symbols-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/ieee754/-/ieee754-1.1.6.tgz";
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
  by-spec."ignore"."^3.0.9" =
    self.by-version."ignore"."3.1.2";
  by-version."ignore"."3.1.2" = self.buildNodePackage {
    name = "ignore-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ignore/-/ignore-3.1.2.tgz";
      name = "ignore-3.1.2.tgz";
      sha1 = "dd17765e9233b4019762ba82b892202b0980161b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."image-size"."~0.4.0" =
    self.by-version."image-size"."0.4.0";
  by-version."image-size"."0.4.0" = self.buildNodePackage {
    name = "image-size-0.4.0";
    version = "0.4.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/image-size/-/image-size-0.4.0.tgz";
      name = "image-size-0.4.0.tgz";
      sha1 = "d4b4e1f61952e4cbc1cea9a6b0c915fecb707510";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."in-publish"."^2.0.0" =
    self.by-version."in-publish"."2.0.0";
  by-version."in-publish"."2.0.0" = self.buildNodePackage {
    name = "in-publish-2.0.0";
    version = "2.0.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/in-publish/-/in-publish-2.0.0.tgz";
      name = "in-publish-2.0.0.tgz";
      sha1 = "e20ff5e3a2afc2690320b6dc552682a9c7fadf51";
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
      url = "https://registry.npmjs.org/indent-string/-/indent-string-2.1.0.tgz";
      name = "indent-string-2.1.0.tgz";
      sha1 = "8e2d48348742121b4a8218b7a137e9a52049dc80";
    };
    deps = {
      "repeating-2.0.1" = self.by-version."repeating"."2.0.1";
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
      url = "https://registry.npmjs.org/indexes-of/-/indexes-of-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/indexof/-/indexof-0.0.1.tgz";
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
      url = "https://registry.npmjs.org/inflight/-/inflight-1.0.4.tgz";
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
  by-spec."inherits"."2" =
    self.by-version."inherits"."2.0.1";
  by-version."inherits"."2.0.1" = self.buildNodePackage {
    name = "inherits-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz";
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
      url = "https://registry.npmjs.org/ini/-/ini-1.3.4.tgz";
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
      url = "https://registry.npmjs.org/interpret/-/interpret-0.6.6.tgz";
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
  by-spec."interpret"."^1.0.0" =
    self.by-version."interpret"."1.0.0";
  by-version."interpret"."1.0.0" = self.buildNodePackage {
    name = "interpret-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/interpret/-/interpret-1.0.0.tgz";
      name = "interpret-1.0.0.tgz";
      sha1 = "2a3338fa1c2bdbe58cdbfffabcbd0eb52b05241f";
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
    self.by-version."invariant"."2.2.1";
  by-version."invariant"."2.2.1" = self.buildNodePackage {
    name = "invariant-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/invariant/-/invariant-2.2.1.tgz";
      name = "invariant-2.2.1.tgz";
      sha1 = "b097010547668c7e337028ebe816ebe36c8a8d54";
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
  by-spec."invariant"."^2.2.0" =
    self.by-version."invariant"."2.2.1";
  by-spec."invert-kv"."^1.0.0" =
    self.by-version."invert-kv"."1.0.0";
  by-version."invert-kv"."1.0.0" = self.buildNodePackage {
    name = "invert-kv-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/invert-kv/-/invert-kv-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.0.5.tgz";
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
      url = "https://registry.npmjs.org/is-absolute/-/is-absolute-0.1.7.tgz";
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
      url = "https://registry.npmjs.org/is-absolute-url/-/is-absolute-url-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/is-arrayish/-/is-arrayish-0.2.1.tgz";
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
      url = "https://registry.npmjs.org/is-binary-path/-/is-binary-path-1.0.1.tgz";
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
    self.by-version."is-buffer"."1.1.3";
  by-version."is-buffer"."1.1.3" = self.buildNodePackage {
    name = "is-buffer-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-buffer/-/is-buffer-1.1.3.tgz";
      name = "is-buffer-1.1.3.tgz";
      sha1 = "db897fc3f7aca2d50de94b6c8c2896a4771627af";
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
      url = "https://registry.npmjs.org/is-builtin-module/-/is-builtin-module-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/is-dotfile/-/is-dotfile-1.0.2.tgz";
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
  by-spec."is-equal-shallow"."^0.1.3" =
    self.by-version."is-equal-shallow"."0.1.3";
  by-version."is-equal-shallow"."0.1.3" = self.buildNodePackage {
    name = "is-equal-shallow-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
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
      url = "https://registry.npmjs.org/is-extendable/-/is-extendable-0.1.1.tgz";
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
      url = "https://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/is-finite/-/is-finite-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/is-glob/-/is-glob-2.0.1.tgz";
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
  by-spec."is-integer"."^1.0.4" =
    self.by-version."is-integer"."1.0.6";
  by-version."is-integer"."1.0.6" = self.buildNodePackage {
    name = "is-integer-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-integer/-/is-integer-1.0.6.tgz";
      name = "is-integer-1.0.6.tgz";
      sha1 = "5273819fada880d123e1ac00a938e7172dd8d95e";
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
  by-spec."is-lower-case"."^1.1.0" =
    self.by-version."is-lower-case"."1.1.3";
  by-version."is-lower-case"."1.1.3" = self.buildNodePackage {
    name = "is-lower-case-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-lower-case/-/is-lower-case-1.1.3.tgz";
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
    self.by-version."is-my-json-valid"."2.13.1";
  by-version."is-my-json-valid"."2.13.1" = self.buildNodePackage {
    name = "is-my-json-valid-2.13.1";
    version = "2.13.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.13.1.tgz";
      name = "is-my-json-valid-2.13.1.tgz";
      sha1 = "d55778a82feb6b0963ff4be111d5d1684e890707";
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
      url = "https://registry.npmjs.org/is-number/-/is-number-0.1.1.tgz";
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
      url = "https://registry.npmjs.org/is-number/-/is-number-2.1.0.tgz";
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
      url = "https://registry.npmjs.org/is-plain-obj/-/is-plain-obj-1.1.0.tgz";
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
  by-spec."is-posix-bracket"."^0.1.0" =
    self.by-version."is-posix-bracket"."0.1.1";
  by-version."is-posix-bracket"."0.1.1" = self.buildNodePackage {
    name = "is-posix-bracket-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-posix-bracket/-/is-posix-bracket-0.1.1.tgz";
      name = "is-posix-bracket-0.1.1.tgz";
      sha1 = "3334dc79774368e92f016e6fbc0a88f5cd6e6bc4";
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
      url = "https://registry.npmjs.org/is-primitive/-/is-primitive-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/is-promise/-/is-promise-2.1.0.tgz";
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
      url = "https://registry.npmjs.org/is-property/-/is-property-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/is-relative/-/is-relative-0.1.3.tgz";
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
  by-spec."is-stream"."^1.0.1" =
    self.by-version."is-stream"."1.1.0";
  by-version."is-stream"."1.1.0" = self.buildNodePackage {
    name = "is-stream-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-stream/-/is-stream-1.1.0.tgz";
      name = "is-stream-1.1.0.tgz";
      sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-svg"."^2.0.0" =
    self.by-version."is-svg"."2.0.0";
  by-version."is-svg"."2.0.0" = self.buildNodePackage {
    name = "is-svg-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-svg/-/is-svg-2.0.0.tgz";
      name = "is-svg-2.0.0.tgz";
      sha1 = "a8c221e9edc6dfda5193c5825d113ec544518fdc";
    };
    deps = {
      "html-comment-regex-1.1.0" = self.by-version."html-comment-regex"."1.1.0";
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
      url = "https://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/is-upper-case/-/is-upper-case-1.1.2.tgz";
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
      url = "https://registry.npmjs.org/is-utf8/-/is-utf8-0.2.1.tgz";
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
      url = "https://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
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
  by-spec."isarray"."1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-version."isarray"."1.0.0" = self.buildNodePackage {
    name = "isarray-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
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
  by-spec."isarray"."^1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-spec."isarray"."~1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-spec."isbinaryfile"."^3.0.0" =
    self.by-version."isbinaryfile"."3.0.0";
  by-version."isbinaryfile"."3.0.0" = self.buildNodePackage {
    name = "isbinaryfile-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isbinaryfile/-/isbinaryfile-3.0.0.tgz";
      name = "isbinaryfile-3.0.0.tgz";
      sha1 = "e9382ebe16aa0f7c874848008d928020e42175f7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isexe"."^1.1.1" =
    self.by-version."isexe"."1.1.2";
  by-version."isexe"."1.1.2" = self.buildNodePackage {
    name = "isexe-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isexe/-/isexe-1.1.2.tgz";
      name = "isexe-1.1.2.tgz";
      sha1 = "36f3e22e60750920f5e7241a476a8c6a42275ad0";
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
    self.by-version."isobject"."2.1.0";
  by-version."isobject"."2.1.0" = self.buildNodePackage {
    name = "isobject-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isobject/-/isobject-2.1.0.tgz";
      name = "isobject-2.1.0.tgz";
      sha1 = "f065561096a3f1da2ef46272f815c840d87e0c89";
    };
    deps = {
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isomorphic-fetch"."^2.1.1" =
    self.by-version."isomorphic-fetch"."2.2.1";
  by-version."isomorphic-fetch"."2.2.1" = self.buildNodePackage {
    name = "isomorphic-fetch-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isomorphic-fetch/-/isomorphic-fetch-2.2.1.tgz";
      name = "isomorphic-fetch-2.2.1.tgz";
      sha1 = "611ae1acf14f5e81f729507472819fe9733558a9";
    };
    deps = {
      "node-fetch-1.5.1" = self.by-version."node-fetch"."1.5.1";
      "whatwg-fetch-1.0.0" = self.by-version."whatwg-fetch"."1.0.0";
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
      url = "https://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
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
      url = "https://registry.npmjs.org/jade/-/jade-0.26.3.tgz";
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
  by-spec."jodid25519"."^1.0.0" =
    self.by-version."jodid25519"."1.0.2";
  by-version."jodid25519"."1.0.2" = self.buildNodePackage {
    name = "jodid25519-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jodid25519/-/jodid25519-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/js-base64/-/js-base64-2.1.9.tgz";
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
    self.by-version."js-tokens"."1.0.3";
  by-version."js-tokens"."1.0.3" = self.buildNodePackage {
    name = "js-tokens-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/js-tokens/-/js-tokens-1.0.3.tgz";
      name = "js-tokens-1.0.3.tgz";
      sha1 = "14e56eb68c8f1a92c43d59f5014ec29dc20f2ae1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-tokens"."^1.0.2" =
    self.by-version."js-tokens"."1.0.3";
  by-spec."js-yaml"."~3.6.0" =
    self.by-version."js-yaml"."3.6.0";
  by-version."js-yaml"."3.6.0" = self.buildNodePackage {
    name = "js-yaml-3.6.0";
    version = "3.6.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/js-yaml/-/js-yaml-3.6.0.tgz";
      name = "js-yaml-3.6.0.tgz";
      sha1 = "3b7bf3256dd598f60f8b6f8ea75514a585a24dc6";
    };
    deps = {
      "argparse-1.0.7" = self.by-version."argparse"."1.0.7";
      "esprima-2.7.2" = self.by-version."esprima"."2.7.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsbn"."~0.1.0" =
    self.by-version."jsbn"."0.1.0";
  by-version."jsbn"."0.1.0" = self.buildNodePackage {
    name = "jsbn-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsbn/-/jsbn-0.1.0.tgz";
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
  by-spec."jsesc"."~0.5.0" =
    self.by-version."jsesc"."0.5.0";
  by-version."jsesc"."0.5.0" = self.buildNodePackage {
    name = "jsesc-0.5.0";
    version = "0.5.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsesc/-/jsesc-0.5.0.tgz";
      name = "jsesc-0.5.0.tgz";
      sha1 = "e7dee66e35d6fc16f710fe91d5cf69f70f08911d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-loader"."^0.5.4" =
    self.by-version."json-loader"."0.5.4";
  by-version."json-loader"."0.5.4" = self.buildNodePackage {
    name = "json-loader-0.5.4";
    version = "0.5.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json-loader/-/json-loader-0.5.4.tgz";
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
      url = "https://registry.npmjs.org/json-schema/-/json-schema-0.2.2.tgz";
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
  by-spec."json-stringify-safe"."~5.0.1" =
    self.by-version."json-stringify-safe"."5.0.1";
  by-version."json-stringify-safe"."5.0.1" = self.buildNodePackage {
    name = "json-stringify-safe-5.0.1";
    version = "5.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
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
  by-spec."json3"."3.2.6" =
    self.by-version."json3"."3.2.6";
  by-version."json3"."3.2.6" = self.buildNodePackage {
    name = "json3-3.2.6";
    version = "3.2.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json3/-/json3-3.2.6.tgz";
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
      url = "https://registry.npmjs.org/json3/-/json3-3.3.2.tgz";
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
      url = "https://registry.npmjs.org/json5/-/json5-0.4.0.tgz";
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
  by-spec."json5"."^0.5.0" =
    self.by-version."json5"."0.5.0";
  by-version."json5"."0.5.0" = self.buildNodePackage {
    name = "json5-0.5.0";
    version = "0.5.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/json5/-/json5-0.5.0.tgz";
      name = "json5-0.5.0.tgz";
      sha1 = "9b20715b026cbe3778fd769edccd822d8332a5b2";
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
    self.by-version."jsonfile"."2.3.0";
  by-version."jsonfile"."2.3.0" = self.buildNodePackage {
    name = "jsonfile-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsonfile/-/jsonfile-2.3.0.tgz";
      name = "jsonfile-2.3.0.tgz";
      sha1 = "ff9c20b67b9605c852e09f299859f48f130c19ec";
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
      url = "https://registry.npmjs.org/jsonpointer/-/jsonpointer-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/jsprim/-/jsprim-1.2.2.tgz";
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
      url = "https://registry.npmjs.org/jstransform/-/jstransform-10.1.0.tgz";
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
    self.by-version."karma"."0.13.22";
  by-version."karma"."0.13.22" = self.buildNodePackage {
    name = "karma-0.13.22";
    version = "0.13.22";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/karma/-/karma-0.13.22.tgz";
      name = "karma-0.13.22.tgz";
      sha1 = "07750b1bd063d7e7e7b91bcd2e6354d8f2aa8744";
    };
    deps = {
      "batch-0.5.3" = self.by-version."batch"."0.5.3";
      "bluebird-2.10.2" = self.by-version."bluebird"."2.10.2";
      "body-parser-1.15.0" = self.by-version."body-parser"."1.15.0";
      "chokidar-1.4.3" = self.by-version."chokidar"."1.4.3";
      "colors-1.1.2" = self.by-version."colors"."1.1.2";
      "connect-3.4.1" = self.by-version."connect"."3.4.1";
      "core-js-2.3.0" = self.by-version."core-js"."2.3.0";
      "di-0.0.1" = self.by-version."di"."0.0.1";
      "dom-serialize-2.2.1" = self.by-version."dom-serialize"."2.2.1";
      "expand-braces-0.1.2" = self.by-version."expand-braces"."0.1.2";
      "glob-7.0.3" = self.by-version."glob"."7.0.3";
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
      "http-proxy-1.13.2" = self.by-version."http-proxy"."1.13.2";
      "isbinaryfile-3.0.0" = self.by-version."isbinaryfile"."3.0.0";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "log4js-0.6.35" = self.by-version."log4js"."0.6.35";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "minimatch-3.0.0" = self.by-version."minimatch"."3.0.0";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "rimraf-2.5.2" = self.by-version."rimraf"."2.5.2";
      "socket.io-1.4.5" = self.by-version."socket.io"."1.4.5";
      "source-map-0.5.5" = self.by-version."source-map"."0.5.5";
      "useragent-2.1.9" = self.by-version."useragent"."2.1.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."karma".">=0.13" =
    self.by-version."karma"."0.13.22";
  by-spec."karma".">=0.9" =
    self.by-version."karma"."0.13.22";
  by-spec."karma"."^0.13.19" =
    self.by-version."karma"."0.13.22";
  "karma" = self.by-version."karma"."0.13.22";
  by-spec."karma-chai"."^0.1.0" =
    self.by-version."karma-chai"."0.1.0";
  by-version."karma-chai"."0.1.0" = self.buildNodePackage {
    name = "karma-chai-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/karma-chai/-/karma-chai-0.1.0.tgz";
      name = "karma-chai-0.1.0.tgz";
      sha1 = "bee5ad40400517811ae34bb945f762909108b79a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."chai"."3.5.0"
      self.by-version."karma"."0.13.22"];
    os = [ ];
    cpu = [ ];
  };
  "karma-chai" = self.by-version."karma-chai"."0.1.0";
  by-spec."karma-mocha"."^0.2.1" =
    self.by-version."karma-mocha"."0.2.2";
  by-version."karma-mocha"."0.2.2" = self.buildNodePackage {
    name = "karma-mocha-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/karma-mocha/-/karma-mocha-0.2.2.tgz";
      name = "karma-mocha-0.2.2.tgz";
      sha1 = "388ed917da15dcb196d1b915c1934ef803193f8e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."mocha"."2.4.5"];
    os = [ ];
    cpu = [ ];
  };
  "karma-mocha" = self.by-version."karma-mocha"."0.2.2";
  by-spec."karma-mocha-reporter"."^1.1.5" =
    self.by-version."karma-mocha-reporter"."1.3.0";
  by-version."karma-mocha-reporter"."1.3.0" = self.buildNodePackage {
    name = "karma-mocha-reporter-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/karma-mocha-reporter/-/karma-mocha-reporter-1.3.0.tgz";
      name = "karma-mocha-reporter-1.3.0.tgz";
      sha1 = "af6a46c08a9c55c7fd394c3a5aa2617ada1584a5";
    };
    deps = {
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "karma-0.13.22" = self.by-version."karma"."0.13.22";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "karma-mocha-reporter" = self.by-version."karma-mocha-reporter"."1.3.0";
  by-spec."karma-phantomjs-launcher"."^0.2.3" =
    self.by-version."karma-phantomjs-launcher"."0.2.3";
  by-version."karma-phantomjs-launcher"."0.2.3" = self.buildNodePackage {
    name = "karma-phantomjs-launcher-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/karma-phantomjs-launcher/-/karma-phantomjs-launcher-0.2.3.tgz";
      name = "karma-phantomjs-launcher-0.2.3.tgz";
      sha1 = "77f68243fad7852c5b321bcf9d691f1223cc0809";
    };
    deps = {
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."karma"."0.13.22"
      self.by-version."phantomjs"."2.1.7"];
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
      url = "https://registry.npmjs.org/karma-webpack/-/karma-webpack-1.7.0.tgz";
      name = "karma-webpack-1.7.0.tgz";
      sha1 = "7e5a4fb2ab68b0cc1c7a4fbfa72bb76eeb18cb2a";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
      "webpack-dev-middleware-1.6.1" = self.by-version."webpack-dev-middleware"."1.6.1";
      "webpack-2.1.0-beta.6" = self.by-version."webpack"."2.1.0-beta.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "karma-webpack" = self.by-version."karma-webpack"."1.7.0";
  by-spec."kew"."~0.7.0" =
    self.by-version."kew"."0.7.0";
  by-version."kew"."0.7.0" = self.buildNodePackage {
    name = "kew-0.7.0";
    version = "0.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/kew/-/kew-0.7.0.tgz";
      name = "kew-0.7.0.tgz";
      sha1 = "79d93d2d33363d6fdd2970b335d9141ad591d79b";
    };
    deps = {
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
      url = "https://registry.npmjs.org/kind-of/-/kind-of-3.0.2.tgz";
      name = "kind-of-3.0.2.tgz";
      sha1 = "187db427046e7e90945692e6768668bd6900dea0";
    };
    deps = {
      "is-buffer-1.1.3" = self.by-version."is-buffer"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."klaw"."^1.0.0" =
    self.by-version."klaw"."1.2.0";
  by-version."klaw"."1.2.0" = self.buildNodePackage {
    name = "klaw-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/klaw/-/klaw-1.2.0.tgz";
      name = "klaw-1.2.0.tgz";
      sha1 = "db38692ddc2f5d10fa14450071dd63ab932ba2b1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lazy-cache"."^1.0.3" =
    self.by-version."lazy-cache"."1.0.4";
  by-version."lazy-cache"."1.0.4" = self.buildNodePackage {
    name = "lazy-cache-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lazy-cache/-/lazy-cache-1.0.4.tgz";
      name = "lazy-cache-1.0.4.tgz";
      sha1 = "a1d78fc3a50474cb80845d3b3b6e1da49a446e8e";
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
      url = "https://registry.npmjs.org/lcid/-/lcid-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/leaflet/-/leaflet-0.7.7.tgz";
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
    self.by-version."less"."2.6.1";
  by-version."less"."2.6.1" = self.buildNodePackage {
    name = "less-2.6.1";
    version = "2.6.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/less/-/less-2.6.1.tgz";
      name = "less-2.6.1.tgz";
      sha1 = "658e01ec9ac3149959c6b6dfbcfbc0a170afda7a";
    };
    deps = {
    };
    optionalDependencies = {
      "errno-0.1.4" = self.by-version."errno"."0.1.4";
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
      "image-size-0.4.0" = self.by-version."image-size"."0.4.0";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "promise-7.1.1" = self.by-version."promise"."7.1.1";
      "request-2.72.0" = self.by-version."request"."2.72.0";
      "source-map-0.5.5" = self.by-version."source-map"."0.5.5";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."less"."^2.5.3" =
    self.by-version."less"."2.6.1";
  "less" = self.by-version."less"."2.6.1";
  by-spec."less-loader"."^2.2.2" =
    self.by-version."less-loader"."2.2.3";
  by-version."less-loader"."2.2.3" = self.buildNodePackage {
    name = "less-loader-2.2.3";
    version = "2.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/less-loader/-/less-loader-2.2.3.tgz";
      name = "less-loader-2.2.3.tgz";
      sha1 = "b6d8f8139c8493df09d992a93a00734b08f84528";
    };
    deps = {
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."less"."2.6.1"];
    os = [ ];
    cpu = [ ];
  };
  "less-loader" = self.by-version."less-loader"."2.2.3";
  by-spec."load-json-file"."^1.0.0" =
    self.by-version."load-json-file"."1.1.0";
  by-version."load-json-file"."1.1.0" = self.buildNodePackage {
    name = "load-json-file-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/load-json-file/-/load-json-file-1.1.0.tgz";
      name = "load-json-file-1.1.0.tgz";
      sha1 = "956905708d58b4bab4c2261b04f59f31c99374c0";
    };
    deps = {
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
      "parse-json-2.2.0" = self.by-version."parse-json"."2.2.0";
      "pify-2.3.0" = self.by-version."pify"."2.3.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
      "strip-bom-2.0.0" = self.by-version."strip-bom"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loader-runner"."^2.1.0" =
    self.by-version."loader-runner"."2.1.1";
  by-version."loader-runner"."2.1.1" = self.buildNodePackage {
    name = "loader-runner-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/loader-runner/-/loader-runner-2.1.1.tgz";
      name = "loader-runner-2.1.1.tgz";
      sha1 = "60a30f2a7c8eae79f0805b5848fee134f8ade519";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loader-utils"."0.2.x" =
    self.by-version."loader-utils"."0.2.14";
  by-version."loader-utils"."0.2.14" = self.buildNodePackage {
    name = "loader-utils-0.2.14";
    version = "0.2.14";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/loader-utils/-/loader-utils-0.2.14.tgz";
      name = "loader-utils-0.2.14.tgz";
      sha1 = "3edab2a123ebb196a1c9d6dd3e83384958843e6f";
    };
    deps = {
      "big.js-3.1.3" = self.by-version."big.js"."3.1.3";
      "emojis-list-1.0.1" = self.by-version."emojis-list"."1.0.1";
      "json5-0.5.0" = self.by-version."json5"."0.5.0";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loader-utils"."^0.2.11" =
    self.by-version."loader-utils"."0.2.14";
  by-spec."loader-utils"."^0.2.13" =
    self.by-version."loader-utils"."0.2.14";
  by-spec."loader-utils"."^0.2.14" =
    self.by-version."loader-utils"."0.2.14";
  by-spec."loader-utils"."^0.2.5" =
    self.by-version."loader-utils"."0.2.14";
  by-spec."loader-utils"."^0.2.7" =
    self.by-version."loader-utils"."0.2.14";
  by-spec."loader-utils"."^0.2.9" =
    self.by-version."loader-utils"."0.2.14";
  by-spec."loader-utils"."~0.2.2" =
    self.by-version."loader-utils"."0.2.14";
  by-spec."loader-utils"."~0.2.5" =
    self.by-version."loader-utils"."0.2.14";
  by-spec."lodash"."^3.0.0" =
    self.by-version."lodash"."3.10.1";
  by-version."lodash"."3.10.1" = self.buildNodePackage {
    name = "lodash-3.10.1";
    version = "3.10.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash/-/lodash-3.10.1.tgz";
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
  by-spec."lodash"."^3.10.0" =
    self.by-version."lodash"."3.10.1";
  by-spec."lodash"."^3.10.1" =
    self.by-version."lodash"."3.10.1";
  "lodash" = self.by-version."lodash"."3.10.1";
  by-spec."lodash"."^3.8.0" =
    self.by-version."lodash"."3.10.1";
  by-spec."lodash"."^4.0.0" =
    self.by-version."lodash"."4.11.1";
  by-version."lodash"."4.11.1" = self.buildNodePackage {
    name = "lodash-4.11.1";
    version = "4.11.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash/-/lodash-4.11.1.tgz";
      name = "lodash-4.11.1.tgz";
      sha1 = "a32106eb8e2ec8e82c241611414773c9df15f8bc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."^4.2.0" =
    self.by-version."lodash"."4.11.1";
  by-spec."lodash"."^4.2.1" =
    self.by-version."lodash"."4.11.1";
  by-spec."lodash"."^4.6.1" =
    self.by-version."lodash"."4.11.1";
  by-spec."lodash"."~2.4.1" =
    self.by-version."lodash"."2.4.2";
  by-version."lodash"."2.4.2" = self.buildNodePackage {
    name = "lodash-2.4.2";
    version = "2.4.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash/-/lodash-2.4.2.tgz";
      name = "lodash-2.4.2.tgz";
      sha1 = "fadd834b9683073da179b3eae6d9c0d15053f73e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash-es"."^4.2.1" =
    self.by-version."lodash-es"."4.11.1";
  by-version."lodash-es"."4.11.1" = self.buildNodePackage {
    name = "lodash-es-4.11.1";
    version = "4.11.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash-es/-/lodash-es-4.11.1.tgz";
      name = "lodash-es-4.11.1.tgz";
      sha1 = "e5ee64e886d17bc7818b6305f5dbd544e79263bb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._baseslice"."~4.0.0" =
    self.by-version."lodash._baseslice"."4.0.0";
  by-version."lodash._baseslice"."4.0.0" = self.buildNodePackage {
    name = "lodash._baseslice-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._baseslice/-/lodash._baseslice-4.0.0.tgz";
      name = "lodash._baseslice-4.0.0.tgz";
      sha1 = "f5ce1df982948ecaff63f223853415b7b9763704";
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
      url = "https://registry.npmjs.org/lodash._createcompounder/-/lodash._createcompounder-3.0.0.tgz";
      name = "lodash._createcompounder-3.0.0.tgz";
      sha1 = "5dd2cb55372d6e70e0e2392fb2304d6631091075";
    };
    deps = {
      "lodash.deburr-3.2.0" = self.by-version."lodash.deburr"."3.2.0";
      "lodash.words-3.2.0" = self.by-version."lodash.words"."3.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._root"."^3.0.0" =
    self.by-version."lodash._root"."3.0.1";
  by-version."lodash._root"."3.0.1" = self.buildNodePackage {
    name = "lodash._root-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._root/-/lodash._root-3.0.1.tgz";
      name = "lodash._root-3.0.1.tgz";
      sha1 = "fba1c4524c19ee9a5f8136b4609f017cf4ded692";
    };
    deps = {
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
      url = "https://registry.npmjs.org/lodash.camelcase/-/lodash.camelcase-3.0.1.tgz";
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
    self.by-version."lodash.deburr"."3.2.0";
  by-version."lodash.deburr"."3.2.0" = self.buildNodePackage {
    name = "lodash.deburr-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.deburr/-/lodash.deburr-3.2.0.tgz";
      name = "lodash.deburr-3.2.0.tgz";
      sha1 = "6da8f54334a366a7cf4c4c76ef8d80aa1b365ed5";
    };
    deps = {
      "lodash._root-3.0.1" = self.by-version."lodash._root"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.pad"."^4.1.0" =
    self.by-version."lodash.pad"."4.3.0";
  by-version."lodash.pad"."4.3.0" = self.buildNodePackage {
    name = "lodash.pad-4.3.0";
    version = "4.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.pad/-/lodash.pad-4.3.0.tgz";
      name = "lodash.pad-4.3.0.tgz";
      sha1 = "fa2959167285209d0059cee6217b314125c0f248";
    };
    deps = {
      "lodash._baseslice-4.0.0" = self.by-version."lodash._baseslice"."4.0.0";
      "lodash.tostring-4.1.2" = self.by-version."lodash.tostring"."4.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.padend"."^4.1.0" =
    self.by-version."lodash.padend"."4.4.0";
  by-version."lodash.padend"."4.4.0" = self.buildNodePackage {
    name = "lodash.padend-4.4.0";
    version = "4.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.padend/-/lodash.padend-4.4.0.tgz";
      name = "lodash.padend-4.4.0.tgz";
      sha1 = "11df267765d2438812248a2433714d663601c1f0";
    };
    deps = {
      "lodash._baseslice-4.0.0" = self.by-version."lodash._baseslice"."4.0.0";
      "lodash.tostring-4.1.2" = self.by-version."lodash.tostring"."4.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.padstart"."^4.1.0" =
    self.by-version."lodash.padstart"."4.4.0";
  by-version."lodash.padstart"."4.4.0" = self.buildNodePackage {
    name = "lodash.padstart-4.4.0";
    version = "4.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.padstart/-/lodash.padstart-4.4.0.tgz";
      name = "lodash.padstart-4.4.0.tgz";
      sha1 = "815072fbc07d1aac515ceb3c8f2e331407d0f087";
    };
    deps = {
      "lodash._baseslice-4.0.0" = self.by-version."lodash._baseslice"."4.0.0";
      "lodash.tostring-4.1.2" = self.by-version."lodash.tostring"."4.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.tostring"."^4.0.0" =
    self.by-version."lodash.tostring"."4.1.2";
  by-version."lodash.tostring"."4.1.2" = self.buildNodePackage {
    name = "lodash.tostring-4.1.2";
    version = "4.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.tostring/-/lodash.tostring-4.1.2.tgz";
      name = "lodash.tostring-4.1.2.tgz";
      sha1 = "7d326a5cf64da4298f2fd35b688d848267535288";
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
    self.by-version."lodash.words"."3.2.0";
  by-version."lodash.words"."3.2.0" = self.buildNodePackage {
    name = "lodash.words-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.words/-/lodash.words-3.2.0.tgz";
      name = "lodash.words-3.2.0.tgz";
      sha1 = "4e2a8649bc08745b17c695b1a3ce8fee596623b3";
    };
    deps = {
      "lodash._root-3.0.1" = self.by-version."lodash._root"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."log4js"."^0.6.31" =
    self.by-version."log4js"."0.6.35";
  by-version."log4js"."0.6.35" = self.buildNodePackage {
    name = "log4js-0.6.35";
    version = "0.6.35";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/log4js/-/log4js-0.6.35.tgz";
      name = "log4js-0.6.35.tgz";
      sha1 = "3ab1da7cb14823b74ed3865c48593acdf11f1b59";
    };
    deps = {
      "readable-stream-1.0.34" = self.by-version."readable-stream"."1.0.34";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
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
      url = "https://registry.npmjs.org/longest/-/longest-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/loose-envify/-/loose-envify-1.1.0.tgz";
      name = "loose-envify-1.1.0.tgz";
      sha1 = "527582d62cff4e04da3f9976c7110d3392ec7e0c";
    };
    deps = {
      "js-tokens-1.0.3" = self.by-version."js-tokens"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loose-envify"."^1.1.0" =
    self.by-version."loose-envify"."1.1.0";
  by-spec."loud-rejection"."^1.0.0" =
    self.by-version."loud-rejection"."1.3.0";
  by-version."loud-rejection"."1.3.0" = self.buildNodePackage {
    name = "loud-rejection-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/loud-rejection/-/loud-rejection-1.3.0.tgz";
      name = "loud-rejection-1.3.0.tgz";
      sha1 = "f289a392f17d2baacf194d0a673004394433b115";
    };
    deps = {
      "array-find-index-1.0.1" = self.by-version."array-find-index"."1.0.1";
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
      url = "https://registry.npmjs.org/lower-case/-/lower-case-1.1.3.tgz";
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
      url = "https://registry.npmjs.org/lower-case-first/-/lower-case-first-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/lru-cache/-/lru-cache-2.7.3.tgz";
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
      url = "https://registry.npmjs.org/lru-cache/-/lru-cache-2.2.4.tgz";
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
    self.by-version."lru-cache"."4.0.1";
  by-version."lru-cache"."4.0.1" = self.buildNodePackage {
    name = "lru-cache-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lru-cache/-/lru-cache-4.0.1.tgz";
      name = "lru-cache-4.0.1.tgz";
      sha1 = "1343955edaf2e37d9b9e7ee7241e27c4b9fb72be";
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
      url = "https://registry.npmjs.org/map-obj/-/map-obj-1.0.1.tgz";
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
  by-spec."media-typer"."0.3.0" =
    self.by-version."media-typer"."0.3.0";
  by-version."media-typer"."0.3.0" = self.buildNodePackage {
    name = "media-typer-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz";
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
      url = "https://registry.npmjs.org/memory-fs/-/memory-fs-0.2.0.tgz";
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
  by-spec."memory-fs"."^0.3.0" =
    self.by-version."memory-fs"."0.3.0";
  by-version."memory-fs"."0.3.0" = self.buildNodePackage {
    name = "memory-fs-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/memory-fs/-/memory-fs-0.3.0.tgz";
      name = "memory-fs-0.3.0.tgz";
      sha1 = "7bcc6b629e3a43e871d7e29aca6ae8a7f15cbb20";
    };
    deps = {
      "errno-0.1.4" = self.by-version."errno"."0.1.4";
      "readable-stream-2.1.2" = self.by-version."readable-stream"."2.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."memory-fs"."~0.3.0" =
    self.by-version."memory-fs"."0.3.0";
  by-spec."meow"."^3.7.0" =
    self.by-version."meow"."3.7.0";
  by-version."meow"."3.7.0" = self.buildNodePackage {
    name = "meow-3.7.0";
    version = "3.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/meow/-/meow-3.7.0.tgz";
      name = "meow-3.7.0.tgz";
      sha1 = "72cb668b425228290abbfa856892587308a801fb";
    };
    deps = {
      "camelcase-keys-2.1.0" = self.by-version."camelcase-keys"."2.1.0";
      "decamelize-1.2.0" = self.by-version."decamelize"."1.2.0";
      "loud-rejection-1.3.0" = self.by-version."loud-rejection"."1.3.0";
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
      url = "https://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/methods/-/methods-1.1.2.tgz";
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
    self.by-version."micromatch"."2.3.8";
  by-version."micromatch"."2.3.8" = self.buildNodePackage {
    name = "micromatch-2.3.8";
    version = "2.3.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/micromatch/-/micromatch-2.3.8.tgz";
      name = "micromatch-2.3.8.tgz";
      sha1 = "94fbf8f37ed9edeca06bf1c8f7b743fb5f6f5854";
    };
    deps = {
      "arr-diff-2.0.0" = self.by-version."arr-diff"."2.0.0";
      "array-unique-0.2.1" = self.by-version."array-unique"."0.2.1";
      "braces-1.8.4" = self.by-version."braces"."1.8.4";
      "expand-brackets-0.1.5" = self.by-version."expand-brackets"."0.1.5";
      "extglob-0.3.2" = self.by-version."extglob"."0.3.2";
      "filename-regex-2.0.0" = self.by-version."filename-regex"."2.0.0";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "kind-of-3.0.2" = self.by-version."kind-of"."3.0.2";
      "normalize-path-2.0.1" = self.by-version."normalize-path"."2.0.1";
      "object.omit-2.0.0" = self.by-version."object.omit"."2.0.0";
      "parse-glob-3.0.4" = self.by-version."parse-glob"."3.0.4";
      "regex-cache-0.4.3" = self.by-version."regex-cache"."0.4.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."miller-rabin"."^4.0.0" =
    self.by-version."miller-rabin"."4.0.0";
  by-version."miller-rabin"."4.0.0" = self.buildNodePackage {
    name = "miller-rabin-4.0.0";
    version = "4.0.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/miller-rabin/-/miller-rabin-4.0.0.tgz";
      name = "miller-rabin-4.0.0.tgz";
      sha1 = "4a62fb1d42933c05583982f4c716f6fb9e6c6d3d";
    };
    deps = {
      "bn.js-4.11.3" = self.by-version."bn.js"."4.11.3";
      "brorand-1.0.5" = self.by-version."brorand"."1.0.5";
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
      url = "https://registry.npmjs.org/mime/-/mime-1.2.11.tgz";
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
      url = "https://registry.npmjs.org/mime/-/mime-1.3.4.tgz";
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
  by-spec."mime-db".">= 1.21.0 < 2" =
    self.by-version."mime-db"."1.22.0";
  by-version."mime-db"."1.22.0" = self.buildNodePackage {
    name = "mime-db-1.22.0";
    version = "1.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-db/-/mime-db-1.22.0.tgz";
      name = "mime-db-1.22.0.tgz";
      sha1 = "ab23a6372dc9d86d3dc9121bd0ebd38105a1904a";
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
      url = "https://registry.npmjs.org/mime-db/-/mime-db-1.12.0.tgz";
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
  by-spec."mime-db"."~1.22.0" =
    self.by-version."mime-db"."1.22.0";
  by-spec."mime-types"."^2.1.10" =
    self.by-version."mime-types"."2.1.10";
  by-version."mime-types"."2.1.10" = self.buildNodePackage {
    name = "mime-types-2.1.10";
    version = "2.1.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.10.tgz";
      name = "mime-types-2.1.10.tgz";
      sha1 = "b93c7cb4362e16d41072a7e54538fb4d43070837";
    };
    deps = {
      "mime-db-1.22.0" = self.by-version."mime-db"."1.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."^2.1.3" =
    self.by-version."mime-types"."2.1.10";
  by-spec."mime-types"."~2.0.4" =
    self.by-version."mime-types"."2.0.14";
  by-version."mime-types"."2.0.14" = self.buildNodePackage {
    name = "mime-types-2.0.14";
    version = "2.0.14";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-types/-/mime-types-2.0.14.tgz";
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
  by-spec."mime-types"."~2.1.10" =
    self.by-version."mime-types"."2.1.10";
  by-spec."mime-types"."~2.1.6" =
    self.by-version."mime-types"."2.1.10";
  by-spec."mime-types"."~2.1.7" =
    self.by-version."mime-types"."2.1.10";
  by-spec."mime-types"."~2.1.9" =
    self.by-version."mime-types"."2.1.10";
  by-spec."min-document"."^2.6.1" =
    self.by-version."min-document"."2.18.0";
  by-version."min-document"."2.18.0" = self.buildNodePackage {
    name = "min-document-2.18.0";
    version = "2.18.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/min-document/-/min-document-2.18.0.tgz";
      name = "min-document-2.18.0.tgz";
      sha1 = "23051234b0ae8cc52af8ec6fbb8b4857e442842d";
    };
    deps = {
      "dom-walk-0.1.1" = self.by-version."dom-walk"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimalistic-assert"."^1.0.0" =
    self.by-version."minimalistic-assert"."1.0.0";
  by-version."minimalistic-assert"."1.0.0" = self.buildNodePackage {
    name = "minimalistic-assert-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimalistic-assert/-/minimalistic-assert-1.0.0.tgz";
      name = "minimalistic-assert-1.0.0.tgz";
      sha1 = "702be2dda6b37f4836bcb3f5db56641b64a1d3d3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."0.3" =
    self.by-version."minimatch"."0.3.0";
  by-version."minimatch"."0.3.0" = self.buildNodePackage {
    name = "minimatch-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimatch/-/minimatch-0.3.0.tgz";
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
      url = "https://registry.npmjs.org/minimatch/-/minimatch-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/minimatch/-/minimatch-3.0.0.tgz";
      name = "minimatch-3.0.0.tgz";
      sha1 = "5236157a51e4f004c177fb3c527ff7dd78f0ef83";
    };
    deps = {
      "brace-expansion-1.1.3" = self.by-version."brace-expansion"."1.1.3";
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
      url = "https://registry.npmjs.org/minimatch/-/minimatch-2.0.10.tgz";
      name = "minimatch-2.0.10.tgz";
      sha1 = "8d087c39c6b38c001b97fca7ce6d0e1e80afbac7";
    };
    deps = {
      "brace-expansion-1.1.3" = self.by-version."brace-expansion"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^2.0.10" =
    self.by-version."minimatch"."2.0.10";
  by-spec."minimatch"."^2.0.3" =
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
      url = "https://registry.npmjs.org/minimatch/-/minimatch-0.2.14.tgz";
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
      url = "https://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
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
  by-spec."minimist"."^1.1.0" =
    self.by-version."minimist"."1.2.0";
  by-version."minimist"."1.2.0" = self.buildNodePackage {
    name = "minimist-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimist/-/minimist-1.2.0.tgz";
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
  by-spec."minimist"."^1.1.3" =
    self.by-version."minimist"."1.2.0";
  by-spec."minimist"."^1.2.0" =
    self.by-version."minimist"."1.2.0";
  by-spec."minimist"."~0.0.1" =
    self.by-version."minimist"."0.0.10";
  by-version."minimist"."0.0.10" = self.buildNodePackage {
    name = "minimist-0.0.10";
    version = "0.0.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimist/-/minimist-0.0.10.tgz";
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
      url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.3.0.tgz";
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
      url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.3.5.tgz";
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
      url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.0.tgz";
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
  by-spec."mkdirp"."0.5.1" =
    self.by-version."mkdirp"."0.5.1";
  by-version."mkdirp"."0.5.1" = self.buildNodePackage {
    name = "mkdirp-0.5.1";
    version = "0.5.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
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
  by-spec."mkdirp"."0.5.x" =
    self.by-version."mkdirp"."0.5.1";
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
    self.by-version."mocha"."2.4.5";
  by-version."mocha"."2.4.5" = self.buildNodePackage {
    name = "mocha-2.4.5";
    version = "2.4.5";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/mocha/-/mocha-2.4.5.tgz";
      name = "mocha-2.4.5.tgz";
      sha1 = "151768dd2875eb51bc8295e9800026e9f2bb398f";
    };
    deps = {
      "commander-2.3.0" = self.by-version."commander"."2.3.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "diff-1.4.0" = self.by-version."diff"."1.4.0";
      "escape-string-regexp-1.0.2" = self.by-version."escape-string-regexp"."1.0.2";
      "glob-3.2.3" = self.by-version."glob"."3.2.3";
      "growl-1.8.1" = self.by-version."growl"."1.8.1";
      "jade-0.26.3" = self.by-version."jade"."0.26.3";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "supports-color-1.2.0" = self.by-version."supports-color"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mocha"."^2.3.4" =
    self.by-version."mocha"."2.4.5";
  "mocha" = self.by-version."mocha"."2.4.5";
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = self.buildNodePackage {
    name = "ms-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
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
  by-spec."nan"."^2.2.0" =
    self.by-version."nan"."2.3.2";
  by-version."nan"."2.3.2" = self.buildNodePackage {
    name = "nan-2.3.2";
    version = "2.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/nan/-/nan-2.3.2.tgz";
      name = "nan-2.3.2.tgz";
      sha1 = "4d4ecf17e1da4e989efb4f273d8d00201cad087e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nan"."^2.3.0" =
    self.by-version."nan"."2.3.2";
  by-spec."ncname"."1.0.x" =
    self.by-version."ncname"."1.0.0";
  by-version."ncname"."1.0.0" = self.buildNodePackage {
    name = "ncname-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ncname/-/ncname-1.0.0.tgz";
      name = "ncname-1.0.0.tgz";
      sha1 = "5b57ad18b1ca092864ef62b0b1ed8194f383b71c";
    };
    deps = {
      "xml-char-classes-1.0.0" = self.by-version."xml-char-classes"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."negotiator"."0.4.9" =
    self.by-version."negotiator"."0.4.9";
  by-version."negotiator"."0.4.9" = self.buildNodePackage {
    name = "negotiator-0.4.9";
    version = "0.4.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/negotiator/-/negotiator-0.4.9.tgz";
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
      url = "https://registry.npmjs.org/negotiator/-/negotiator-0.5.3.tgz";
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
      url = "https://registry.npmjs.org/negotiator/-/negotiator-0.6.0.tgz";
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
      url = "https://registry.npmjs.org/nib/-/nib-1.1.0.tgz";
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
  by-spec."node-fetch"."^1.0.1" =
    self.by-version."node-fetch"."1.5.1";
  by-version."node-fetch"."1.5.1" = self.buildNodePackage {
    name = "node-fetch-1.5.1";
    version = "1.5.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-fetch/-/node-fetch-1.5.1.tgz";
      name = "node-fetch-1.5.1.tgz";
      sha1 = "edc64350cc0bca48a5f79e038c1f7c5ff0869fef";
    };
    deps = {
      "encoding-0.1.12" = self.by-version."encoding"."0.1.12";
      "is-stream-1.1.0" = self.by-version."is-stream"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-gyp"."^3.3.1" =
    self.by-version."node-gyp"."3.3.1";
  by-version."node-gyp"."3.3.1" = self.buildNodePackage {
    name = "node-gyp-3.3.1";
    version = "3.3.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-gyp/-/node-gyp-3.3.1.tgz";
      name = "node-gyp-3.3.1.tgz";
      sha1 = "80f7b6d7c2f9c0495ba42c518a670c99bdf6e4a0";
    };
    deps = {
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "npmlog-2.0.3" = self.by-version."npmlog"."2.0.3";
      "osenv-0.1.3" = self.by-version."osenv"."0.1.3";
      "path-array-1.0.1" = self.by-version."path-array"."1.0.1";
      "request-2.72.0" = self.by-version."request"."2.72.0";
      "rimraf-2.5.2" = self.by-version."rimraf"."2.5.2";
      "semver-5.1.0" = self.by-version."semver"."5.1.0";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "which-1.2.4" = self.by-version."which"."1.2.4";
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
      url = "https://registry.npmjs.org/node-libs-browser/-/node-libs-browser-0.5.3.tgz";
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
      "punycode-1.4.1" = self.by-version."punycode"."1.4.1";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
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
  by-spec."node-libs-browser"."^1.0.0" =
    self.by-version."node-libs-browser"."1.0.0";
  by-version."node-libs-browser"."1.0.0" = self.buildNodePackage {
    name = "node-libs-browser-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-libs-browser/-/node-libs-browser-1.0.0.tgz";
      name = "node-libs-browser-1.0.0.tgz";
      sha1 = "ff8ad6c2cfa78043bdd0091ec07f0aaa581620fc";
    };
    deps = {
      "assert-1.3.0" = self.by-version."assert"."1.3.0";
      "browserify-zlib-0.1.4" = self.by-version."browserify-zlib"."0.1.4";
      "buffer-4.6.0" = self.by-version."buffer"."4.6.0";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-1.0.0" = self.by-version."constants-browserify"."1.0.0";
      "crypto-browserify-3.11.0" = self.by-version."crypto-browserify"."3.11.0";
      "domain-browser-1.1.7" = self.by-version."domain-browser"."1.1.7";
      "events-1.1.0" = self.by-version."events"."1.1.0";
      "http-browserify-1.7.0" = self.by-version."http-browserify"."1.7.0";
      "https-browserify-0.0.1" = self.by-version."https-browserify"."0.0.1";
      "os-browserify-0.2.1" = self.by-version."os-browserify"."0.2.1";
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "process-0.11.2" = self.by-version."process"."0.11.2";
      "punycode-1.4.1" = self.by-version."punycode"."1.4.1";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "readable-stream-2.1.2" = self.by-version."readable-stream"."2.1.2";
      "stream-browserify-2.0.1" = self.by-version."stream-browserify"."2.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "timers-browserify-1.4.2" = self.by-version."timers-browserify"."1.4.2";
      "tty-browserify-0.0.0" = self.by-version."tty-browserify"."0.0.0";
      "url-0.11.0" = self.by-version."url"."0.11.0";
      "util-0.10.3" = self.by-version."util"."0.10.3";
      "vm-browserify-0.0.4" = self.by-version."vm-browserify"."0.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-pre-gyp"."^0.6.25" =
    self.by-version."node-pre-gyp"."0.6.27";
  by-version."node-pre-gyp"."0.6.27" = self.buildNodePackage {
    name = "node-pre-gyp-0.6.27";
    version = "0.6.27";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-pre-gyp/-/node-pre-gyp-0.6.27.tgz";
      name = "node-pre-gyp-0.6.27.tgz";
      sha1 = "73e384616c065f3369e61a4d038978ecd995c5a7";
    };
    deps = {
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "npmlog-2.0.3" = self.by-version."npmlog"."2.0.3";
      "rc-1.1.6" = self.by-version."rc"."1.1.6";
      "request-2.72.0" = self.by-version."request"."2.72.0";
      "rimraf-2.5.2" = self.by-version."rimraf"."2.5.2";
      "semver-5.1.0" = self.by-version."semver"."5.1.0";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "tar-pack-3.1.3" = self.by-version."tar-pack"."3.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-sass"."^3.4.2" =
    self.by-version."node-sass"."3.6.0";
  by-version."node-sass"."3.6.0" = self.buildNodePackage {
    name = "node-sass-3.6.0";
    version = "3.6.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-sass/-/node-sass-3.6.0.tgz";
      name = "node-sass-3.6.0.tgz";
      sha1 = "43d78fa2a85f6139da68fba570c391c3eed8ab0d";
    };
    deps = {
      "async-foreach-0.1.3" = self.by-version."async-foreach"."0.1.3";
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "cross-spawn-async-2.2.2" = self.by-version."cross-spawn-async"."2.2.2";
      "gaze-1.0.0" = self.by-version."gaze"."1.0.0";
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
      "glob-7.0.3" = self.by-version."glob"."7.0.3";
      "meow-3.7.0" = self.by-version."meow"."3.7.0";
      "in-publish-2.0.0" = self.by-version."in-publish"."2.0.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nan-2.3.2" = self.by-version."nan"."2.3.2";
      "node-gyp-3.3.1" = self.by-version."node-gyp"."3.3.1";
      "npmconf-2.1.2" = self.by-version."npmconf"."2.1.2";
      "request-2.72.0" = self.by-version."request"."2.72.0";
      "sass-graph-2.1.1" = self.by-version."sass-graph"."2.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "node-sass" = self.by-version."node-sass"."3.6.0";
  by-spec."node-uuid"."~1.4.7" =
    self.by-version."node-uuid"."1.4.7";
  by-version."node-uuid"."1.4.7" = self.buildNodePackage {
    name = "node-uuid-1.4.7";
    version = "1.4.7";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-uuid/-/node-uuid-1.4.7.tgz";
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
  by-spec."nopt"."2 || 3" =
    self.by-version."nopt"."3.0.6";
  by-version."nopt"."3.0.6" = self.buildNodePackage {
    name = "nopt-3.0.6";
    version = "3.0.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/nopt/-/nopt-3.0.6.tgz";
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
      url = "https://registry.npmjs.org/normalize-package-data/-/normalize-package-data-2.3.5.tgz";
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
      url = "https://registry.npmjs.org/normalize-path/-/normalize-path-2.0.1.tgz";
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
      url = "https://registry.npmjs.org/normalize-range/-/normalize-range-0.1.2.tgz";
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
  by-spec."normalize-url"."^1.4.0" =
    self.by-version."normalize-url"."1.4.1";
  by-version."normalize-url"."1.4.1" = self.buildNodePackage {
    name = "normalize-url-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/normalize-url/-/normalize-url-1.4.1.tgz";
      name = "normalize-url-1.4.1.tgz";
      sha1 = "b3007f2593b1f8d015b4d5a5a628ce22bf3c6f13";
    };
    deps = {
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "prepend-http-1.0.3" = self.by-version."prepend-http"."1.0.3";
      "query-string-3.0.3" = self.by-version."query-string"."3.0.3";
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
      url = "https://registry.npmjs.org/normalize.css/-/normalize.css-3.0.3.tgz";
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
  by-spec."npmconf"."^2.1.2" =
    self.by-version."npmconf"."2.1.2";
  by-version."npmconf"."2.1.2" = self.buildNodePackage {
    name = "npmconf-2.1.2";
    version = "2.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/npmconf/-/npmconf-2.1.2.tgz";
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
  by-spec."npmlog"."0 || 1 || 2" =
    self.by-version."npmlog"."2.0.3";
  by-version."npmlog"."2.0.3" = self.buildNodePackage {
    name = "npmlog-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/npmlog/-/npmlog-2.0.3.tgz";
      name = "npmlog-2.0.3.tgz";
      sha1 = "020f99351f0c02e399c674ba256e7c4d3b3dd298";
    };
    deps = {
      "ansi-0.3.1" = self.by-version."ansi"."0.3.1";
      "are-we-there-yet-1.1.2" = self.by-version."are-we-there-yet"."1.1.2";
      "gauge-1.2.7" = self.by-version."gauge"."1.2.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."npmlog"."~2.0.0" =
    self.by-version."npmlog"."2.0.3";
  by-spec."nth-check"."~1.0.1" =
    self.by-version."nth-check"."1.0.1";
  by-version."nth-check"."1.0.1" = self.buildNodePackage {
    name = "nth-check-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/nth-check/-/nth-check-1.0.1.tgz";
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
  by-spec."null-loader"."^0.1.1" =
    self.by-version."null-loader"."0.1.1";
  by-version."null-loader"."0.1.1" = self.buildNodePackage {
    name = "null-loader-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/null-loader/-/null-loader-0.1.1.tgz";
      name = "null-loader-0.1.1.tgz";
      sha1 = "17be9abfcd3ff0e1512f6fc4afcb1f5039378fae";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "null-loader" = self.by-version."null-loader"."0.1.1";
  by-spec."num2fraction"."^1.2.2" =
    self.by-version."num2fraction"."1.2.2";
  by-version."num2fraction"."1.2.2" = self.buildNodePackage {
    name = "num2fraction-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/num2fraction/-/num2fraction-1.2.2.tgz";
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
      url = "https://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.0.tgz";
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
  by-spec."oauth-sign"."~0.8.0" =
    self.by-version."oauth-sign"."0.8.1";
  by-version."oauth-sign"."0.8.1" = self.buildNodePackage {
    name = "oauth-sign-0.8.1";
    version = "0.8.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.1.tgz";
      name = "oauth-sign-0.8.1.tgz";
      sha1 = "182439bdb91378bf7460e75c64ea43e6448def06";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."oauth-sign"."~0.8.1" =
    self.by-version."oauth-sign"."0.8.1";
  by-spec."object-assign"."^4.0.1" =
    self.by-version."object-assign"."4.0.1";
  by-version."object-assign"."4.0.1" = self.buildNodePackage {
    name = "object-assign-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/object-assign/-/object-assign-4.0.1.tgz";
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
      url = "https://registry.npmjs.org/object-component/-/object-component-0.0.3.tgz";
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
      url = "https://registry.npmjs.org/object.omit/-/object.omit-2.0.0.tgz";
      name = "object.omit-2.0.0.tgz";
      sha1 = "868597333d54e60662940bb458605dd6ae12fe94";
    };
    deps = {
      "for-own-0.1.4" = self.by-version."for-own"."0.1.4";
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
      url = "https://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz";
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
      url = "https://registry.npmjs.org/on-headers/-/on-headers-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/once/-/once-1.3.3.tgz";
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
  by-spec."once"."~1.3.0" =
    self.by-version."once"."1.3.3";
  by-spec."once"."~1.3.3" =
    self.by-version."once"."1.3.3";
  by-spec."optimist"."^0.6.1" =
    self.by-version."optimist"."0.6.1";
  by-version."optimist"."0.6.1" = self.buildNodePackage {
    name = "optimist-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/optimist/-/optimist-0.6.1.tgz";
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
      url = "https://registry.npmjs.org/options/-/options-0.0.6.tgz";
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
      url = "https://registry.npmjs.org/original/-/original-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/os-browserify/-/os-browserify-0.1.2.tgz";
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
  by-spec."os-browserify"."~0.2.0" =
    self.by-version."os-browserify"."0.2.1";
  by-version."os-browserify"."0.2.1" = self.buildNodePackage {
    name = "os-browserify-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/os-browserify/-/os-browserify-0.2.1.tgz";
      name = "os-browserify-0.2.1.tgz";
      sha1 = "63fc4ccee5d2d7763d26bbf8601078e6c2e0044f";
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
      url = "https://registry.npmjs.org/os-homedir/-/os-homedir-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/os-locale/-/os-locale-1.4.0.tgz";
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
  by-spec."os-tmpdir"."^1.0.0" =
    self.by-version."os-tmpdir"."1.0.1";
  by-version."os-tmpdir"."1.0.1" = self.buildNodePackage {
    name = "os-tmpdir-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.1.tgz";
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
  by-spec."os-tmpdir"."^1.0.1" =
    self.by-version."os-tmpdir"."1.0.1";
  by-spec."osenv"."0" =
    self.by-version."osenv"."0.1.3";
  by-version."osenv"."0.1.3" = self.buildNodePackage {
    name = "osenv-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/osenv/-/osenv-0.1.3.tgz";
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
      url = "https://registry.npmjs.org/pako/-/pako-0.2.8.tgz";
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
      url = "https://registry.npmjs.org/param-case/-/param-case-1.1.2.tgz";
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
  by-spec."parse-asn1"."^5.0.0" =
    self.by-version."parse-asn1"."5.0.0";
  by-version."parse-asn1"."5.0.0" = self.buildNodePackage {
    name = "parse-asn1-5.0.0";
    version = "5.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/parse-asn1/-/parse-asn1-5.0.0.tgz";
      name = "parse-asn1-5.0.0.tgz";
      sha1 = "35060f6d5015d37628c770f4e091a0b5a278bc23";
    };
    deps = {
      "asn1.js-4.6.0" = self.by-version."asn1.js"."4.6.0";
      "browserify-aes-1.0.6" = self.by-version."browserify-aes"."1.0.6";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "evp_bytestokey-1.0.0" = self.by-version."evp_bytestokey"."1.0.0";
      "pbkdf2-3.0.4" = self.by-version."pbkdf2"."3.0.4";
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
      url = "https://registry.npmjs.org/parse-glob/-/parse-glob-3.0.4.tgz";
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
      url = "https://registry.npmjs.org/parse-json/-/parse-json-2.2.0.tgz";
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
      url = "https://registry.npmjs.org/parsejson/-/parsejson-0.0.1.tgz";
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
      url = "https://registry.npmjs.org/parseqs/-/parseqs-0.0.2.tgz";
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
      url = "https://registry.npmjs.org/parseuri/-/parseuri-0.0.4.tgz";
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
      url = "https://registry.npmjs.org/parseurl/-/parseurl-1.3.1.tgz";
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
      url = "https://registry.npmjs.org/pascal-case/-/pascal-case-1.1.2.tgz";
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
      url = "https://registry.npmjs.org/path-array/-/path-array-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/path-browserify/-/path-browserify-0.0.0.tgz";
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
      url = "https://registry.npmjs.org/path-case/-/path-case-1.1.2.tgz";
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
  by-spec."path-exists"."^1.0.0" =
    self.by-version."path-exists"."1.0.0";
  by-version."path-exists"."1.0.0" = self.buildNodePackage {
    name = "path-exists-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/path-exists/-/path-exists-1.0.0.tgz";
      name = "path-exists-1.0.0.tgz";
      sha1 = "d5a8998eb71ef37a74c34eb0d9eba6e878eea081";
    };
    deps = {
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
      url = "https://registry.npmjs.org/path-exists/-/path-exists-2.1.0.tgz";
      name = "path-exists-2.1.0.tgz";
      sha1 = "0feb6c64f0fc518d9a754dd5efb62c7022761f4b";
    };
    deps = {
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
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
      url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
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
      url = "https://registry.npmjs.org/path-type/-/path-type-1.1.0.tgz";
      name = "path-type-1.1.0.tgz";
      sha1 = "59c44f7ee491da704da415da5a4070ba4f8fe441";
    };
    deps = {
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
      "pify-2.3.0" = self.by-version."pify"."2.3.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pbkdf2"."^3.0.3" =
    self.by-version."pbkdf2"."3.0.4";
  by-version."pbkdf2"."3.0.4" = self.buildNodePackage {
    name = "pbkdf2-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pbkdf2/-/pbkdf2-3.0.4.tgz";
      name = "pbkdf2-3.0.4.tgz";
      sha1 = "12c8bfaf920543786a85150b03f68d5f1aa982fc";
    };
    deps = {
      "create-hmac-1.1.4" = self.by-version."create-hmac"."1.1.4";
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
      url = "https://registry.npmjs.org/pbkdf2-compat/-/pbkdf2-compat-2.0.1.tgz";
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
  by-spec."pend"."~1.2.0" =
    self.by-version."pend"."1.2.0";
  by-version."pend"."1.2.0" = self.buildNodePackage {
    name = "pend-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pend/-/pend-1.2.0.tgz";
      name = "pend-1.2.0.tgz";
      sha1 = "7a57eb550a6783f9115331fcf4663d5c8e007a50";
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
    self.by-version."phantomjs"."2.1.7";
  by-version."phantomjs"."2.1.7" = self.buildNodePackage {
    name = "phantomjs-2.1.7";
    version = "2.1.7";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/phantomjs/-/phantomjs-2.1.7.tgz";
      name = "phantomjs-2.1.7.tgz";
      sha1 = "c6910f67935c37285b6114329fc2f27d5f3e3134";
    };
    deps = {
      "extract-zip-1.5.0" = self.by-version."extract-zip"."1.5.0";
      "fs-extra-0.26.7" = self.by-version."fs-extra"."0.26.7";
      "hasha-2.2.0" = self.by-version."hasha"."2.2.0";
      "kew-0.7.0" = self.by-version."kew"."0.7.0";
      "progress-1.1.8" = self.by-version."progress"."1.1.8";
      "request-2.67.0" = self.by-version."request"."2.67.0";
      "request-progress-2.0.1" = self.by-version."request-progress"."2.0.1";
      "which-1.2.4" = self.by-version."which"."1.2.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."phantomjs"."^1.9.19" =
    self.by-version."phantomjs"."1.9.20";
  by-version."phantomjs"."1.9.20" = self.buildNodePackage {
    name = "phantomjs-1.9.20";
    version = "1.9.20";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/phantomjs/-/phantomjs-1.9.20.tgz";
      name = "phantomjs-1.9.20.tgz";
      sha1 = "4424aca20e14d255c0b0889af6f6b8973da10e0d";
    };
    deps = {
      "extract-zip-1.5.0" = self.by-version."extract-zip"."1.5.0";
      "fs-extra-0.26.7" = self.by-version."fs-extra"."0.26.7";
      "hasha-2.2.0" = self.by-version."hasha"."2.2.0";
      "kew-0.7.0" = self.by-version."kew"."0.7.0";
      "progress-1.1.8" = self.by-version."progress"."1.1.8";
      "request-2.67.0" = self.by-version."request"."2.67.0";
      "request-progress-2.0.1" = self.by-version."request-progress"."2.0.1";
      "which-1.2.4" = self.by-version."which"."1.2.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "phantomjs" = self.by-version."phantomjs"."1.9.20";
  by-spec."pify"."^2.0.0" =
    self.by-version."pify"."2.3.0";
  by-version."pify"."2.3.0" = self.buildNodePackage {
    name = "pify-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz";
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
    self.by-version."pinkie"."2.0.4";
  by-version."pinkie"."2.0.4" = self.buildNodePackage {
    name = "pinkie-2.0.4";
    version = "2.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pinkie/-/pinkie-2.0.4.tgz";
      name = "pinkie-2.0.4.tgz";
      sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
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
    self.by-version."pinkie-promise"."2.0.1";
  by-version."pinkie-promise"."2.0.1" = self.buildNodePackage {
    name = "pinkie-promise-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
      name = "pinkie-promise-2.0.1.tgz";
      sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
    };
    deps = {
      "pinkie-2.0.4" = self.by-version."pinkie"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss"."^5.0.10" =
    self.by-version."postcss"."5.0.19";
  by-version."postcss"."5.0.19" = self.buildNodePackage {
    name = "postcss-5.0.19";
    version = "5.0.19";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss/-/postcss-5.0.19.tgz";
      name = "postcss-5.0.19.tgz";
      sha1 = "b6342a01dc75b8cab7e968afda96aefc67f888af";
    };
    deps = {
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "source-map-0.5.5" = self.by-version."source-map"."0.5.5";
      "js-base64-2.1.9" = self.by-version."js-base64"."2.1.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss"."^5.0.12" =
    self.by-version."postcss"."5.0.19";
  by-spec."postcss"."^5.0.13" =
    self.by-version."postcss"."5.0.19";
  by-spec."postcss"."^5.0.14" =
    self.by-version."postcss"."5.0.19";
  by-spec."postcss"."^5.0.19" =
    self.by-version."postcss"."5.0.19";
  by-spec."postcss"."^5.0.2" =
    self.by-version."postcss"."5.0.19";
  by-spec."postcss"."^5.0.4" =
    self.by-version."postcss"."5.0.19";
  by-spec."postcss"."^5.0.5" =
    self.by-version."postcss"."5.0.19";
  by-spec."postcss"."^5.0.6" =
    self.by-version."postcss"."5.0.19";
  by-spec."postcss"."^5.0.8" =
    self.by-version."postcss"."5.0.19";
  by-spec."postcss-calc"."^5.2.0" =
    self.by-version."postcss-calc"."5.2.1";
  by-version."postcss-calc"."5.2.1" = self.buildNodePackage {
    name = "postcss-calc-5.2.1";
    version = "5.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-calc/-/postcss-calc-5.2.1.tgz";
      name = "postcss-calc-5.2.1.tgz";
      sha1 = "42147e5589a4baf658688764d76c6a097804652e";
    };
    deps = {
      "postcss-message-helpers-2.0.0" = self.by-version."postcss-message-helpers"."2.0.0";
      "reduce-css-calc-1.2.3" = self.by-version."reduce-css-calc"."1.2.3";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-colormin"."^2.1.8" =
    self.by-version."postcss-colormin"."2.2.0";
  by-version."postcss-colormin"."2.2.0" = self.buildNodePackage {
    name = "postcss-colormin-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-colormin/-/postcss-colormin-2.2.0.tgz";
      name = "postcss-colormin-2.2.0.tgz";
      sha1 = "cef99d4d5854e51bfd8b8d60af0a3f83e439645f";
    };
    deps = {
      "colormin-1.1.0" = self.by-version."colormin"."1.1.0";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
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
      url = "https://registry.npmjs.org/postcss-convert-values/-/postcss-convert-values-2.3.4.tgz";
      name = "postcss-convert-values-2.3.4.tgz";
      sha1 = "2321ba0397f322579130d8b9f0e89a42d82e6239";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-discard-comments"."^2.0.4" =
    self.by-version."postcss-discard-comments"."2.0.4";
  by-version."postcss-discard-comments"."2.0.4" = self.buildNodePackage {
    name = "postcss-discard-comments-2.0.4";
    version = "2.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-discard-comments/-/postcss-discard-comments-2.0.4.tgz";
      name = "postcss-discard-comments-2.0.4.tgz";
      sha1 = "befe89fafd5b3dace5ccce51b76b81514be00e3d";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-discard-duplicates"."^2.0.1" =
    self.by-version."postcss-discard-duplicates"."2.0.1";
  by-version."postcss-discard-duplicates"."2.0.1" = self.buildNodePackage {
    name = "postcss-discard-duplicates-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-discard-duplicates/-/postcss-discard-duplicates-2.0.1.tgz";
      name = "postcss-discard-duplicates-2.0.1.tgz";
      sha1 = "5fae3f1a71df3e19cffb37309d1a7dba56c4589c";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-discard-empty"."^2.0.1" =
    self.by-version."postcss-discard-empty"."2.1.0";
  by-version."postcss-discard-empty"."2.1.0" = self.buildNodePackage {
    name = "postcss-discard-empty-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-discard-empty/-/postcss-discard-empty-2.1.0.tgz";
      name = "postcss-discard-empty-2.1.0.tgz";
      sha1 = "d2b4bd9d5ced5ebd8dcade7640c7d7cd7f4f92b5";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-discard-unused"."^2.2.1" =
    self.by-version."postcss-discard-unused"."2.2.1";
  by-version."postcss-discard-unused"."2.2.1" = self.buildNodePackage {
    name = "postcss-discard-unused-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-discard-unused/-/postcss-discard-unused-2.2.1.tgz";
      name = "postcss-discard-unused-2.2.1.tgz";
      sha1 = "5d021f021a6ed6cec7310d4603794a75ddd53232";
    };
    deps = {
      "flatten-1.0.2" = self.by-version."flatten"."1.0.2";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
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
      url = "https://registry.npmjs.org/postcss-filter-plugins/-/postcss-filter-plugins-2.0.0.tgz";
      name = "postcss-filter-plugins-2.0.0.tgz";
      sha1 = "acce5d18c40e51be598911b6eca8b54d9e5bdedf";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "uniqid-1.0.0" = self.by-version."uniqid"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-loader"."^0.9.1" =
    self.by-version."postcss-loader"."0.9.1";
  by-version."postcss-loader"."0.9.1" = self.buildNodePackage {
    name = "postcss-loader-0.9.1";
    version = "0.9.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-loader/-/postcss-loader-0.9.1.tgz";
      name = "postcss-loader-0.9.1.tgz";
      sha1 = "87a3e70f58e46d68a75badc6725d9ea4773fd1d7";
    };
    deps = {
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "postcss-loader" = self.by-version."postcss-loader"."0.9.1";
  by-spec."postcss-merge-idents"."^2.1.5" =
    self.by-version."postcss-merge-idents"."2.1.5";
  by-version."postcss-merge-idents"."2.1.5" = self.buildNodePackage {
    name = "postcss-merge-idents-2.1.5";
    version = "2.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-merge-idents/-/postcss-merge-idents-2.1.5.tgz";
      name = "postcss-merge-idents-2.1.5.tgz";
      sha1 = "9bbab62a698b731add80ddf90af8eca6d03ddd98";
    };
    deps = {
      "has-own-1.0.0" = self.by-version."has-own"."1.0.0";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
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
      url = "https://registry.npmjs.org/postcss-merge-longhand/-/postcss-merge-longhand-2.0.1.tgz";
      name = "postcss-merge-longhand-2.0.1.tgz";
      sha1 = "ff59b5dec6d586ce2cea183138f55c5876fa9cdc";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-merge-rules"."^2.0.3" =
    self.by-version."postcss-merge-rules"."2.0.8";
  by-version."postcss-merge-rules"."2.0.8" = self.buildNodePackage {
    name = "postcss-merge-rules-2.0.8";
    version = "2.0.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-merge-rules/-/postcss-merge-rules-2.0.8.tgz";
      name = "postcss-merge-rules-2.0.8.tgz";
      sha1 = "57a8e187bd1f3fa155458aafb05122582a8e16f3";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
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
      url = "https://registry.npmjs.org/postcss-message-helpers/-/postcss-message-helpers-2.0.0.tgz";
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
    self.by-version."postcss-minify-font-values"."1.0.4";
  by-version."postcss-minify-font-values"."1.0.4" = self.buildNodePackage {
    name = "postcss-minify-font-values-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-minify-font-values/-/postcss-minify-font-values-1.0.4.tgz";
      name = "postcss-minify-font-values-1.0.4.tgz";
      sha1 = "760b921a39e6a1ce7b84bfe4f4b4321c1fb15ba6";
    };
    deps = {
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-minify-gradients"."^1.0.1" =
    self.by-version."postcss-minify-gradients"."1.0.1";
  by-version."postcss-minify-gradients"."1.0.1" = self.buildNodePackage {
    name = "postcss-minify-gradients-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-minify-gradients/-/postcss-minify-gradients-1.0.1.tgz";
      name = "postcss-minify-gradients-1.0.1.tgz";
      sha1 = "3db3224a395711732bc0ae97b4c76597481a40f8";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
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
      url = "https://registry.npmjs.org/postcss-minify-params/-/postcss-minify-params-1.0.4.tgz";
      name = "postcss-minify-params-1.0.4.tgz";
      sha1 = "2a77b96db80487f15fef941595b11b595368d543";
    };
    deps = {
      "alphanum-sort-1.0.2" = self.by-version."alphanum-sort"."1.0.2";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
      "uniqs-2.0.0" = self.by-version."uniqs"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-minify-selectors"."^2.0.4" =
    self.by-version."postcss-minify-selectors"."2.0.4";
  by-version."postcss-minify-selectors"."2.0.4" = self.buildNodePackage {
    name = "postcss-minify-selectors-2.0.4";
    version = "2.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-minify-selectors/-/postcss-minify-selectors-2.0.4.tgz";
      name = "postcss-minify-selectors-2.0.4.tgz";
      sha1 = "2725ec9fdb7a9112e31f55ba3791fc345da98cc2";
    };
    deps = {
      "alphanum-sort-1.0.2" = self.by-version."alphanum-sort"."1.0.2";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-selector-parser-1.3.3" = self.by-version."postcss-selector-parser"."1.3.3";
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
      url = "https://registry.npmjs.org/postcss-modules-extract-imports/-/postcss-modules-extract-imports-1.0.0.tgz";
      name = "postcss-modules-extract-imports-1.0.0.tgz";
      sha1 = "5b07f368e350cda6fd5c8844b79123a7bd3e37be";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
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
      url = "https://registry.npmjs.org/postcss-modules-local-by-default/-/postcss-modules-local-by-default-1.0.1.tgz";
      name = "postcss-modules-local-by-default-1.0.1.tgz";
      sha1 = "5ecb890fe5269f70fc3b980f6202cde9771d4799";
    };
    deps = {
      "css-selector-tokenizer-0.5.4" = self.by-version."css-selector-tokenizer"."0.5.4";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
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
      url = "https://registry.npmjs.org/postcss-modules-scope/-/postcss-modules-scope-1.0.0.tgz";
      name = "postcss-modules-scope-1.0.0.tgz";
      sha1 = "d17baef9b34512d06a316492cb3ea7cce9072255";
    };
    deps = {
      "css-selector-tokenizer-0.5.4" = self.by-version."css-selector-tokenizer"."0.5.4";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-modules-values"."^1.1.0" =
    self.by-version."postcss-modules-values"."1.1.2";
  by-version."postcss-modules-values"."1.1.2" = self.buildNodePackage {
    name = "postcss-modules-values-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-modules-values/-/postcss-modules-values-1.1.2.tgz";
      name = "postcss-modules-values-1.1.2.tgz";
      sha1 = "0bd11932133e50aef6c366d8af627334ba599df5";
    };
    deps = {
      "icss-replace-symbols-1.0.2" = self.by-version."icss-replace-symbols"."1.0.2";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
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
      url = "https://registry.npmjs.org/postcss-normalize-charset/-/postcss-normalize-charset-1.1.0.tgz";
      name = "postcss-normalize-charset-1.1.0.tgz";
      sha1 = "2fbd30e12248c442981d31ea2484d46fd0628970";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-normalize-url"."^3.0.7" =
    self.by-version."postcss-normalize-url"."3.0.7";
  by-version."postcss-normalize-url"."3.0.7" = self.buildNodePackage {
    name = "postcss-normalize-url-3.0.7";
    version = "3.0.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-normalize-url/-/postcss-normalize-url-3.0.7.tgz";
      name = "postcss-normalize-url-3.0.7.tgz";
      sha1 = "6bd90d0a4bc5a1df22c26ea65c53257dc3829f4e";
    };
    deps = {
      "is-absolute-url-2.0.0" = self.by-version."is-absolute-url"."2.0.0";
      "normalize-url-1.4.1" = self.by-version."normalize-url"."1.4.1";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-ordered-values"."^2.1.0" =
    self.by-version."postcss-ordered-values"."2.1.0";
  by-version."postcss-ordered-values"."2.1.0" = self.buildNodePackage {
    name = "postcss-ordered-values-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-ordered-values/-/postcss-ordered-values-2.1.0.tgz";
      name = "postcss-ordered-values-2.1.0.tgz";
      sha1 = "0f084464ced2709550bb97915cf1049d945e6c65";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-reduce-idents"."^2.2.2" =
    self.by-version."postcss-reduce-idents"."2.3.0";
  by-version."postcss-reduce-idents"."2.3.0" = self.buildNodePackage {
    name = "postcss-reduce-idents-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-reduce-idents/-/postcss-reduce-idents-2.3.0.tgz";
      name = "postcss-reduce-idents-2.3.0.tgz";
      sha1 = "a697b52953ed6825ffea404e26a4f105d8b8d569";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
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
      url = "https://registry.npmjs.org/postcss-reduce-transforms/-/postcss-reduce-transforms-1.0.3.tgz";
      name = "postcss-reduce-transforms-1.0.3.tgz";
      sha1 = "fc193e435a973c10f9801c74700a830f79643343";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-selector-parser"."^1.3.1" =
    self.by-version."postcss-selector-parser"."1.3.3";
  by-version."postcss-selector-parser"."1.3.3" = self.buildNodePackage {
    name = "postcss-selector-parser-1.3.3";
    version = "1.3.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-selector-parser/-/postcss-selector-parser-1.3.3.tgz";
      name = "postcss-selector-parser-1.3.3.tgz";
      sha1 = "d2ee19df7a64f8ef21c1a71c86f7d4835c88c281";
    };
    deps = {
      "flatten-1.0.2" = self.by-version."flatten"."1.0.2";
      "indexes-of-1.0.1" = self.by-version."indexes-of"."1.0.1";
      "uniq-1.0.1" = self.by-version."uniq"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-svgo"."^2.1.1" =
    self.by-version."postcss-svgo"."2.1.3";
  by-version."postcss-svgo"."2.1.3" = self.buildNodePackage {
    name = "postcss-svgo-2.1.3";
    version = "2.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-svgo/-/postcss-svgo-2.1.3.tgz";
      name = "postcss-svgo-2.1.3.tgz";
      sha1 = "593dc4056d507969e4123a3f319c7ff045e6bf0c";
    };
    deps = {
      "is-svg-2.0.0" = self.by-version."is-svg"."2.0.0";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "postcss-value-parser-3.3.0" = self.by-version."postcss-value-parser"."3.3.0";
      "svgo-0.6.6" = self.by-version."svgo"."0.6.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-unique-selectors"."^2.0.2" =
    self.by-version."postcss-unique-selectors"."2.0.2";
  by-version."postcss-unique-selectors"."2.0.2" = self.buildNodePackage {
    name = "postcss-unique-selectors-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-unique-selectors/-/postcss-unique-selectors-2.0.2.tgz";
      name = "postcss-unique-selectors-2.0.2.tgz";
      sha1 = "981d57d29ddcb33e7b1dfe1fd43b8649f933ca1d";
    };
    deps = {
      "alphanum-sort-1.0.2" = self.by-version."alphanum-sort"."1.0.2";
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
      "uniqs-2.0.0" = self.by-version."uniqs"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-value-parser"."^3.0.1" =
    self.by-version."postcss-value-parser"."3.3.0";
  by-version."postcss-value-parser"."3.3.0" = self.buildNodePackage {
    name = "postcss-value-parser-3.3.0";
    version = "3.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-value-parser/-/postcss-value-parser-3.3.0.tgz";
      name = "postcss-value-parser-3.3.0.tgz";
      sha1 = "87f38f9f18f774a4ab4c8a232f5c5ce8872a9d15";
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
    self.by-version."postcss-value-parser"."3.3.0";
  by-spec."postcss-value-parser"."^3.1.1" =
    self.by-version."postcss-value-parser"."3.3.0";
  by-spec."postcss-value-parser"."^3.1.3" =
    self.by-version."postcss-value-parser"."3.3.0";
  by-spec."postcss-value-parser"."^3.2.3" =
    self.by-version."postcss-value-parser"."3.3.0";
  by-spec."postcss-zindex"."^2.0.1" =
    self.by-version."postcss-zindex"."2.1.1";
  by-version."postcss-zindex"."2.1.1" = self.buildNodePackage {
    name = "postcss-zindex-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/postcss-zindex/-/postcss-zindex-2.1.1.tgz";
      name = "postcss-zindex-2.1.1.tgz";
      sha1 = "ea3fbe656c9738aa8729e2ee96ec2a46089b720f";
    };
    deps = {
      "postcss-5.0.19" = self.by-version."postcss"."5.0.19";
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
      url = "https://registry.npmjs.org/prepend-http/-/prepend-http-1.0.3.tgz";
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
      url = "https://registry.npmjs.org/preserve/-/preserve-0.2.0.tgz";
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
      url = "https://registry.npmjs.org/pretty-error/-/pretty-error-2.0.0.tgz";
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
  by-spec."private"."^0.1.6" =
    self.by-version."private"."0.1.6";
  by-version."private"."0.1.6" = self.buildNodePackage {
    name = "private-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/private/-/private-0.1.6.tgz";
      name = "private-0.1.6.tgz";
      sha1 = "55c6a976d0f9bafb9924851350fe47b9b5fbb7c1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."private"."~0.1.5" =
    self.by-version."private"."0.1.6";
  by-spec."process"."^0.11.0" =
    self.by-version."process"."0.11.2";
  by-version."process"."0.11.2" = self.buildNodePackage {
    name = "process-0.11.2";
    version = "0.11.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/process/-/process-0.11.2.tgz";
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
  by-spec."process"."~0.5.1" =
    self.by-version."process"."0.5.2";
  by-version."process"."0.5.2" = self.buildNodePackage {
    name = "process-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/process/-/process-0.5.2.tgz";
      name = "process-0.5.2.tgz";
      sha1 = "1638d8a8e34c2f440a91db95ab9aeb677fc185cf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."process-nextick-args"."~1.0.6" =
    self.by-version."process-nextick-args"."1.0.6";
  by-version."process-nextick-args"."1.0.6" = self.buildNodePackage {
    name = "process-nextick-args-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-1.0.6.tgz";
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
  by-spec."progress"."~1.1.8" =
    self.by-version."progress"."1.1.8";
  by-version."progress"."1.1.8" = self.buildNodePackage {
    name = "progress-1.1.8";
    version = "1.1.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/progress/-/progress-1.1.8.tgz";
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
  by-spec."promise"."^7.0.3" =
    self.by-version."promise"."7.1.1";
  by-version."promise"."7.1.1" = self.buildNodePackage {
    name = "promise-7.1.1";
    version = "7.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/promise/-/promise-7.1.1.tgz";
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
  by-spec."promise"."^7.1.1" =
    self.by-version."promise"."7.1.1";
  by-spec."proto-list"."~1.2.1" =
    self.by-version."proto-list"."1.2.4";
  by-version."proto-list"."1.2.4" = self.buildNodePackage {
    name = "proto-list-1.2.4";
    version = "1.2.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/proto-list/-/proto-list-1.2.4.tgz";
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
      url = "https://registry.npmjs.org/proxy-addr/-/proxy-addr-1.0.10.tgz";
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
      url = "https://registry.npmjs.org/prr/-/prr-0.0.0.tgz";
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
      url = "https://registry.npmjs.org/pseudomap/-/pseudomap-1.0.2.tgz";
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
  by-spec."public-encrypt"."^4.0.0" =
    self.by-version."public-encrypt"."4.0.0";
  by-version."public-encrypt"."4.0.0" = self.buildNodePackage {
    name = "public-encrypt-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/public-encrypt/-/public-encrypt-4.0.0.tgz";
      name = "public-encrypt-4.0.0.tgz";
      sha1 = "39f699f3a46560dd5ebacbca693caf7c65c18cc6";
    };
    deps = {
      "bn.js-4.11.3" = self.by-version."bn.js"."4.11.3";
      "browserify-rsa-4.0.1" = self.by-version."browserify-rsa"."4.0.1";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "parse-asn1-5.0.0" = self.by-version."parse-asn1"."5.0.0";
      "randombytes-2.0.3" = self.by-version."randombytes"."2.0.3";
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
      url = "https://registry.npmjs.org/punycode/-/punycode-1.3.2.tgz";
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
    self.by-version."punycode"."1.4.1";
  by-version."punycode"."1.4.1" = self.buildNodePackage {
    name = "punycode-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/punycode/-/punycode-1.4.1.tgz";
      name = "punycode-1.4.1.tgz";
      sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
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
      url = "https://registry.npmjs.org/purecss/-/purecss-0.6.0.tgz";
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
      url = "https://registry.npmjs.org/q/-/q-1.4.1.tgz";
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
      url = "https://registry.npmjs.org/qs/-/qs-2.3.3.tgz";
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
      url = "https://registry.npmjs.org/qs/-/qs-4.0.0.tgz";
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
  by-spec."qs"."6.1.0" =
    self.by-version."qs"."6.1.0";
  by-version."qs"."6.1.0" = self.buildNodePackage {
    name = "qs-6.1.0";
    version = "6.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/qs/-/qs-6.1.0.tgz";
      name = "qs-6.1.0.tgz";
      sha1 = "ec1d1626b24278d99f0fdf4549e524e24eceeb26";
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
  by-version."qs"."5.2.0" = self.buildNodePackage {
    name = "qs-5.2.0";
    version = "5.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/qs/-/qs-5.2.0.tgz";
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
  by-spec."qs"."~6.1.0" =
    self.by-version."qs"."6.1.0";
  by-spec."query-string"."^3.0.0" =
    self.by-version."query-string"."3.0.3";
  by-version."query-string"."3.0.3" = self.buildNodePackage {
    name = "query-string-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/query-string/-/query-string-3.0.3.tgz";
      name = "query-string-3.0.3.tgz";
      sha1 = "ae2e14b4d05071d4e9b9eb4873c35b0dcd42e638";
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
      url = "https://registry.npmjs.org/querystring/-/querystring-0.2.0.tgz";
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
  by-spec."querystring"."^0.2.0" =
    self.by-version."querystring"."0.2.0";
  by-spec."querystring-es3"."~0.2.0" =
    self.by-version."querystring-es3"."0.2.1";
  by-version."querystring-es3"."0.2.1" = self.buildNodePackage {
    name = "querystring-es3-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/querystring-es3/-/querystring-es3-0.2.1.tgz";
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
      url = "https://registry.npmjs.org/querystringify/-/querystringify-0.0.3.tgz";
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
      url = "https://registry.npmjs.org/randomatic/-/randomatic-1.1.5.tgz";
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
  by-spec."randombytes"."^2.0.0" =
    self.by-version."randombytes"."2.0.3";
  by-version."randombytes"."2.0.3" = self.buildNodePackage {
    name = "randombytes-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/randombytes/-/randombytes-2.0.3.tgz";
      name = "randombytes-2.0.3.tgz";
      sha1 = "674c99760901c3c4112771a31e521dc349cc09ec";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."randombytes"."^2.0.1" =
    self.by-version."randombytes"."2.0.3";
  by-spec."range-parser"."^1.0.3" =
    self.by-version."range-parser"."1.0.3";
  by-version."range-parser"."1.0.3" = self.buildNodePackage {
    name = "range-parser-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/range-parser/-/range-parser-1.0.3.tgz";
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
  by-spec."range-parser"."~1.0.3" =
    self.by-version."range-parser"."1.0.3";
  by-spec."raw-body"."~2.1.5" =
    self.by-version."raw-body"."2.1.6";
  by-version."raw-body"."2.1.6" = self.buildNodePackage {
    name = "raw-body-2.1.6";
    version = "2.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/raw-body/-/raw-body-2.1.6.tgz";
      name = "raw-body-2.1.6.tgz";
      sha1 = "9c050737fe07ced6d94a4fd09c61b6ad874d310f";
    };
    deps = {
      "bytes-2.3.0" = self.by-version."bytes"."2.3.0";
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
      url = "https://registry.npmjs.org/rc/-/rc-1.1.6.tgz";
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
    self.by-version."react"."15.0.2";
  by-version."react"."15.0.2" = self.buildNodePackage {
    name = "react-15.0.2";
    version = "15.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react/-/react-15.0.2.tgz";
      name = "react-15.0.2.tgz";
      sha1 = "63b95dfda563018a20c182300651ed933e0dd30c";
    };
    deps = {
      "fbjs-0.8.1" = self.by-version."fbjs"."0.8.1";
      "loose-envify-1.1.0" = self.by-version."loose-envify"."1.1.0";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react".">=0.13.2 || ^0.14.0-rc1 || ^15.0.0-rc" =
    self.by-version."react"."15.0.2";
  by-spec."react".">=0.14.0 >=0.14.3 <0.15.0||>=15.0.0-0 >=0.14.3 <0.15.0" =
    self.by-version."react"."0.14.8";
  by-version."react"."0.14.8" = self.buildNodePackage {
    name = "react-0.14.8";
    version = "0.14.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react/-/react-0.14.8.tgz";
      name = "react-0.14.8.tgz";
      sha1 = "078dfa454d4745bcc54a9726311c2bf272c23684";
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
  by-spec."react"."^0.14.0 || ^15.0.0-0" =
    self.by-version."react"."15.0.2";
  by-spec."react"."^0.14.0 || ^15.0.0-rc.1" =
    self.by-version."react"."15.0.2";
  by-spec."react"."^0.14.3" =
    self.by-version."react"."0.14.8";
  by-spec."react"."^0.14.6" =
    self.by-version."react"."0.14.8";
  "react" = self.by-version."react"."0.14.8";
  by-spec."react"."^0.14.8" =
    self.by-version."react"."0.14.8";
  by-spec."react"."^15.0.2" =
    self.by-version."react"."15.0.2";
  by-spec."react-deep-force-update"."^1.0.0" =
    self.by-version."react-deep-force-update"."1.0.1";
  by-version."react-deep-force-update"."1.0.1" = self.buildNodePackage {
    name = "react-deep-force-update-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react-deep-force-update/-/react-deep-force-update-1.0.1.tgz";
      name = "react-deep-force-update-1.0.1.tgz";
      sha1 = "f911b5be1d2a6fe387507dd6e9a767aa2924b4c7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-dom"."^0.14.0 || ^15.0.0-rc.1" =
    self.by-version."react-dom"."15.0.2";
  by-version."react-dom"."15.0.2" = self.buildNodePackage {
    name = "react-dom-15.0.2";
    version = "15.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react-dom/-/react-dom-15.0.2.tgz";
      name = "react-dom-15.0.2.tgz";
      sha1 = "f8a20ac1bc2da9eb494fce3b44c3ec19d0951e27";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react"."15.0.2"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-dom"."^0.14.6" =
    self.by-version."react-dom"."0.14.8";
  by-version."react-dom"."0.14.8" = self.buildNodePackage {
    name = "react-dom-0.14.8";
    version = "0.14.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react-dom/-/react-dom-0.14.8.tgz";
      name = "react-dom-0.14.8.tgz";
      sha1 = "0f1c547514263f771bd31814a739e5306575069e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react"."0.14.8"];
    os = [ ];
    cpu = [ ];
  };
  "react-dom" = self.by-version."react-dom"."0.14.8";
  by-spec."react-hot-api"."^0.4.5" =
    self.by-version."react-hot-api"."0.4.7";
  by-version."react-hot-api"."0.4.7" = self.buildNodePackage {
    name = "react-hot-api-0.4.7";
    version = "0.4.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react-hot-api/-/react-hot-api-0.4.7.tgz";
      name = "react-hot-api-0.4.7.tgz";
      sha1 = "a7e22a56d252e11abd9366b61264cf4492c58171";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react"."15.0.2"];
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
      url = "https://registry.npmjs.org/react-hot-loader/-/react-hot-loader-1.3.0.tgz";
      name = "react-hot-loader-1.3.0.tgz";
      sha1 = "7701658d02108b5bbc407e200dde591cb7a6ed69";
    };
    deps = {
      "react-hot-api-0.4.7" = self.by-version."react-hot-api"."0.4.7";
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
      "react-15.0.2" = self.by-version."react"."15.0.2";
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
      url = "https://registry.npmjs.org/react-lazy-cache/-/react-lazy-cache-3.0.1.tgz";
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
    self.by-version."react-leaflet"."0.10.2";
  by-version."react-leaflet"."0.10.2" = self.buildNodePackage {
    name = "react-leaflet-0.10.2";
    version = "0.10.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react-leaflet/-/react-leaflet-0.10.2.tgz";
      name = "react-leaflet-0.10.2.tgz";
      sha1 = "fa10486656f7eb4bd288d60baf806525784db984";
    };
    deps = {
      "lodash-4.11.1" = self.by-version."lodash"."4.11.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."leaflet"."0.7.7"
      self.by-version."react"."15.0.2"
      self.by-version."react-dom"."15.0.2"];
    os = [ ];
    cpu = [ ];
  };
  "react-leaflet" = self.by-version."react-leaflet"."0.10.2";
  by-spec."react-proxy"."^1.1.7" =
    self.by-version."react-proxy"."1.1.8";
  by-version."react-proxy"."1.1.8" = self.buildNodePackage {
    name = "react-proxy-1.1.8";
    version = "1.1.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react-proxy/-/react-proxy-1.1.8.tgz";
      name = "react-proxy-1.1.8.tgz";
      sha1 = "9dbfd9d927528c3aa9f444e4558c37830ab8c26a";
    };
    deps = {
      "lodash-4.11.1" = self.by-version."lodash"."4.11.1";
      "react-deep-force-update-1.0.1" = self.by-version."react-deep-force-update"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-pure-render"."^1.0.2" =
    self.by-version."react-pure-render"."1.0.2";
  by-version."react-pure-render"."1.0.2" = self.buildNodePackage {
    name = "react-pure-render-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react-pure-render/-/react-pure-render-1.0.2.tgz";
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
    self.by-version."react-redux"."4.4.5";
  by-version."react-redux"."4.4.5" = self.buildNodePackage {
    name = "react-redux-4.4.5";
    version = "4.4.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react-redux/-/react-redux-4.4.5.tgz";
      name = "react-redux-4.4.5.tgz";
      sha1 = "f509a2981be2252d10c629ef7c559347a4aec457";
    };
    deps = {
      "hoist-non-react-statics-1.0.5" = self.by-version."hoist-non-react-statics"."1.0.5";
      "invariant-2.2.1" = self.by-version."invariant"."2.2.1";
      "lodash-4.11.1" = self.by-version."lodash"."4.11.1";
      "loose-envify-1.1.0" = self.by-version."loose-envify"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react"."15.0.2"
      self.by-version."redux"."3.5.2"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-redux"."^4.0.5" =
    self.by-version."react-redux"."4.4.5";
  by-spec."react-redux"."^4.0.6" =
    self.by-version."react-redux"."4.4.5";
  "react-redux" = self.by-version."react-redux"."4.4.5";
  by-spec."react-transform-catch-errors"."^1.0.2" =
    self.by-version."react-transform-catch-errors"."1.0.2";
  by-version."react-transform-catch-errors"."1.0.2" = self.buildNodePackage {
    name = "react-transform-catch-errors-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react-transform-catch-errors/-/react-transform-catch-errors-1.0.2.tgz";
      name = "react-transform-catch-errors-1.0.2.tgz";
      sha1 = "1b4d4a76e97271896fc16fe3086c793ec88a9eeb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-transform-hmr"."^1.0.3" =
    self.by-version."react-transform-hmr"."1.0.4";
  by-version."react-transform-hmr"."1.0.4" = self.buildNodePackage {
    name = "react-transform-hmr-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react-transform-hmr/-/react-transform-hmr-1.0.4.tgz";
      name = "react-transform-hmr-1.0.4.tgz";
      sha1 = "e1a40bd0aaefc72e8dfd7a7cda09af85066397bb";
    };
    deps = {
      "global-4.3.0" = self.by-version."global"."4.3.0";
      "react-proxy-1.1.8" = self.by-version."react-proxy"."1.1.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."read-pkg"."^1.0.0" =
    self.by-version."read-pkg"."1.1.0";
  by-version."read-pkg"."1.1.0" = self.buildNodePackage {
    name = "read-pkg-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/read-pkg/-/read-pkg-1.1.0.tgz";
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
      url = "https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-1.0.1.tgz";
      name = "read-pkg-up-1.0.1.tgz";
      sha1 = "9d63c13276c065918d57f002a57f40a1b643fb02";
    };
    deps = {
      "find-up-1.1.2" = self.by-version."find-up"."1.1.2";
      "read-pkg-1.1.0" = self.by-version."read-pkg"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."1.0" =
    self.by-version."readable-stream"."1.0.34";
  by-version."readable-stream"."1.0.34" = self.buildNodePackage {
    name = "readable-stream-1.0.34";
    version = "1.0.34";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-1.0.34.tgz";
      name = "readable-stream-1.0.34.tgz";
      sha1 = "125820e34bc842d2f2aaafafe4c2916ee32c157c";
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
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-1.0.27-1.tgz";
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
    self.by-version."readable-stream"."1.1.14";
  by-version."readable-stream"."1.1.14" = self.buildNodePackage {
    name = "readable-stream-1.1.14";
    version = "1.1.14";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-1.1.14.tgz";
      name = "readable-stream-1.1.14.tgz";
      sha1 = "7cf4c54ef648e3813084c636dd2079e166c081d9";
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
    self.by-version."readable-stream"."1.1.14";
  by-spec."readable-stream"."^2.0.0 || ^1.1.13" =
    self.by-version."readable-stream"."2.1.2";
  by-version."readable-stream"."2.1.2" = self.buildNodePackage {
    name = "readable-stream-2.1.2";
    version = "2.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.1.2.tgz";
      name = "readable-stream-2.1.2.tgz";
      sha1 = "a92b6e854f13ff0685e4ca7dce6cf73d3e319422";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
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
    self.by-version."readable-stream"."2.1.2";
  by-spec."readable-stream"."^2.0.2" =
    self.by-version."readable-stream"."2.1.2";
  by-spec."readable-stream"."^2.0.5" =
    self.by-version."readable-stream"."2.1.2";
  by-spec."readable-stream"."~1.0.2" =
    self.by-version."readable-stream"."1.0.34";
  by-spec."readable-stream"."~2.0.0" =
    self.by-version."readable-stream"."2.0.6";
  by-version."readable-stream"."2.0.6" = self.buildNodePackage {
    name = "readable-stream-2.0.6";
    version = "2.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.0.6.tgz";
      name = "readable-stream-2.0.6.tgz";
      sha1 = "8f90341e68a53ccc928788dacfcd11b36eb9b78e";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
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
  by-spec."readable-stream"."~2.0.4" =
    self.by-version."readable-stream"."2.0.6";
  by-spec."readable-stream"."~2.0.5" =
    self.by-version."readable-stream"."2.0.6";
  by-spec."readdirp"."^2.0.0" =
    self.by-version."readdirp"."2.0.0";
  by-version."readdirp"."2.0.0" = self.buildNodePackage {
    name = "readdirp-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readdirp/-/readdirp-2.0.0.tgz";
      name = "readdirp-2.0.0.tgz";
      sha1 = "cc09ba5d12d8feb864bc75f6e2ebc137060cbd82";
    };
    deps = {
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "readable-stream-2.1.2" = self.by-version."readable-stream"."2.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."redbox-react"."^1.2.2" =
    self.by-version."redbox-react"."1.2.3";
  by-version."redbox-react"."1.2.3" = self.buildNodePackage {
    name = "redbox-react-1.2.3";
    version = "1.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/redbox-react/-/redbox-react-1.2.3.tgz";
      name = "redbox-react-1.2.3.tgz";
      sha1 = "b5604d935eae3cd61b65e464b28538402e358907";
    };
    deps = {
      "error-stack-parser-1.3.5" = self.by-version."error-stack-parser"."1.3.5";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react"."15.0.2"];
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
      url = "https://registry.npmjs.org/redent/-/redent-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/reduce-component/-/reduce-component-1.0.1.tgz";
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
    self.by-version."reduce-css-calc"."1.2.3";
  by-version."reduce-css-calc"."1.2.3" = self.buildNodePackage {
    name = "reduce-css-calc-1.2.3";
    version = "1.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/reduce-css-calc/-/reduce-css-calc-1.2.3.tgz";
      name = "reduce-css-calc-1.2.3.tgz";
      sha1 = "844e810ea621d6bc224317214ef0a2071f34e89a";
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
      url = "https://registry.npmjs.org/reduce-function-call/-/reduce-function-call-1.0.1.tgz";
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
  by-spec."redux".">=2.0.0 >=3.0.5 <4.0.0||>=3.0.0 >=3.0.5 <4.0.0" =
    self.by-version."redux"."3.5.2";
  by-version."redux"."3.5.2" = self.buildNodePackage {
    name = "redux-3.5.2";
    version = "3.5.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/redux/-/redux-3.5.2.tgz";
      name = "redux-3.5.2.tgz";
      sha1 = "4533745e970b647ec26066a83aa30e9e26faf843";
    };
    deps = {
      "lodash-4.11.1" = self.by-version."lodash"."4.11.1";
      "lodash-es-4.11.1" = self.by-version."lodash-es"."4.11.1";
      "loose-envify-1.1.0" = self.by-version."loose-envify"."1.1.0";
      "symbol-observable-0.2.4" = self.by-version."symbol-observable"."0.2.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."redux"."^2.0.0 || ^3.0.0" =
    self.by-version."redux"."3.5.2";
  by-spec."redux"."^3.0.0" =
    self.by-version."redux"."3.5.2";
  by-spec."redux"."^3.0.5" =
    self.by-version."redux"."3.5.2";
  by-spec."redux"."^3.0.6" =
    self.by-version."redux"."3.5.2";
  "redux" = self.by-version."redux"."3.5.2";
  by-spec."redux-form"."^4.2.2" =
    self.by-version."redux-form"."4.2.2";
  by-version."redux-form"."4.2.2" = self.buildNodePackage {
    name = "redux-form-4.2.2";
    version = "4.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/redux-form/-/redux-form-4.2.2.tgz";
      name = "redux-form-4.2.2.tgz";
      sha1 = "b8ae37a4070906f45dbd30b07229f1a10bf25cb0";
    };
    deps = {
      "deep-equal-1.0.1" = self.by-version."deep-equal"."1.0.1";
      "hoist-non-react-statics-1.0.5" = self.by-version."hoist-non-react-statics"."1.0.5";
      "is-promise-2.1.0" = self.by-version."is-promise"."2.1.0";
      "react-lazy-cache-3.0.1" = self.by-version."react-lazy-cache"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react-redux"."4.4.5"
      self.by-version."redux"."3.5.2"];
    os = [ ];
    cpu = [ ];
  };
  "redux-form" = self.by-version."redux-form"."4.2.2";
  by-spec."redux-logger"."^2.4.0" =
    self.by-version."redux-logger"."2.6.1";
  by-version."redux-logger"."2.6.1" = self.buildNodePackage {
    name = "redux-logger-2.6.1";
    version = "2.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/redux-logger/-/redux-logger-2.6.1.tgz";
      name = "redux-logger-2.6.1.tgz";
      sha1 = "f558a40e3abd03feaf4e69ace4d71fec09803c74";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "redux-logger" = self.by-version."redux-logger"."2.6.1";
  by-spec."redux-thunk"."^1.0.3" =
    self.by-version."redux-thunk"."1.0.3";
  by-version."redux-thunk"."1.0.3" = self.buildNodePackage {
    name = "redux-thunk-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/redux-thunk/-/redux-thunk-1.0.3.tgz";
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
  by-spec."regenerate"."^1.2.1" =
    self.by-version."regenerate"."1.2.1";
  by-version."regenerate"."1.2.1" = self.buildNodePackage {
    name = "regenerate-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regenerate/-/regenerate-1.2.1.tgz";
      name = "regenerate-1.2.1.tgz";
      sha1 = "9e30ba68a6bd96ac3dcba62ab09d55d4b2fcbe04";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regex-cache"."^0.4.2" =
    self.by-version."regex-cache"."0.4.3";
  by-version."regex-cache"."0.4.3" = self.buildNodePackage {
    name = "regex-cache-0.4.3";
    version = "0.4.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regex-cache/-/regex-cache-0.4.3.tgz";
      name = "regex-cache-0.4.3.tgz";
      sha1 = "9b1a6c35d4d0dfcef5711ae651e8e9d3d7114145";
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
  by-spec."regexpu-core"."^1.0.0" =
    self.by-version."regexpu-core"."1.0.0";
  by-version."regexpu-core"."1.0.0" = self.buildNodePackage {
    name = "regexpu-core-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regexpu-core/-/regexpu-core-1.0.0.tgz";
      name = "regexpu-core-1.0.0.tgz";
      sha1 = "86a763f58ee4d7c2f6b102e4764050de7ed90c6b";
    };
    deps = {
      "regenerate-1.2.1" = self.by-version."regenerate"."1.2.1";
      "regjsgen-0.2.0" = self.by-version."regjsgen"."0.2.0";
      "regjsparser-0.1.5" = self.by-version."regjsparser"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regjsgen"."^0.2.0" =
    self.by-version."regjsgen"."0.2.0";
  by-version."regjsgen"."0.2.0" = self.buildNodePackage {
    name = "regjsgen-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regjsgen/-/regjsgen-0.2.0.tgz";
      name = "regjsgen-0.2.0.tgz";
      sha1 = "6c016adeac554f75823fe37ac05b92d5a4edb1f7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regjsparser"."^0.1.4" =
    self.by-version."regjsparser"."0.1.5";
  by-version."regjsparser"."0.1.5" = self.buildNodePackage {
    name = "regjsparser-0.1.5";
    version = "0.1.5";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/regjsparser/-/regjsparser-0.1.5.tgz";
      name = "regjsparser-0.1.5.tgz";
      sha1 = "7ee8f84dc6fa792d3fd0ae228d24bd949ead205c";
    };
    deps = {
      "jsesc-0.5.0" = self.by-version."jsesc"."0.5.0";
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
      url = "https://registry.npmjs.org/relateurl/-/relateurl-0.2.6.tgz";
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
      url = "https://registry.npmjs.org/renderkid/-/renderkid-2.0.0.tgz";
      name = "renderkid-2.0.0.tgz";
      sha1 = "1859753e7a5adbf35443aba0d4e4579e78abee85";
    };
    deps = {
      "css-select-1.2.0" = self.by-version."css-select"."1.2.0";
      "dom-converter-0.1.4" = self.by-version."dom-converter"."0.1.4";
      "htmlparser2-3.3.0" = self.by-version."htmlparser2"."3.3.0";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
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
      url = "https://registry.npmjs.org/repeat-element/-/repeat-element-1.1.2.tgz";
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
      url = "https://registry.npmjs.org/repeat-string/-/repeat-string-0.2.2.tgz";
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
    self.by-version."repeat-string"."1.5.4";
  by-version."repeat-string"."1.5.4" = self.buildNodePackage {
    name = "repeat-string-1.5.4";
    version = "1.5.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/repeat-string/-/repeat-string-1.5.4.tgz";
      name = "repeat-string-1.5.4.tgz";
      sha1 = "64ec0c91e0f4b475f90d5b643651e3e6e5b6c2d5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeating"."^1.1.0" =
    self.by-version."repeating"."1.1.3";
  by-version."repeating"."1.1.3" = self.buildNodePackage {
    name = "repeating-1.1.3";
    version = "1.1.3";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/repeating/-/repeating-1.1.3.tgz";
      name = "repeating-1.1.3.tgz";
      sha1 = "3d4114218877537494f97f77f9785fab810fa4ac";
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
  by-spec."repeating"."^1.1.3" =
    self.by-version."repeating"."1.1.3";
  by-spec."repeating"."^2.0.0" =
    self.by-version."repeating"."2.0.1";
  by-version."repeating"."2.0.1" = self.buildNodePackage {
    name = "repeating-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/repeating/-/repeating-2.0.1.tgz";
      name = "repeating-2.0.1.tgz";
      sha1 = "5214c53a926d3552707527fbab415dbc08d06dda";
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
    self.by-version."request"."2.72.0";
  by-version."request"."2.72.0" = self.buildNodePackage {
    name = "request-2.72.0";
    version = "2.72.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/request/-/request-2.72.0.tgz";
      name = "request-2.72.0.tgz";
      sha1 = "0ce3a179512620b10441f14c82e21c12c0ddb4e1";
    };
    deps = {
      "aws-sign2-0.6.0" = self.by-version."aws-sign2"."0.6.0";
      "aws4-1.3.2" = self.by-version."aws4"."1.3.2";
      "bl-1.1.2" = self.by-version."bl"."1.1.2";
      "caseless-0.11.0" = self.by-version."caseless"."0.11.0";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-1.0.0-rc4" = self.by-version."form-data"."1.0.0-rc4";
      "har-validator-2.0.6" = self.by-version."har-validator"."2.0.6";
      "hawk-3.1.3" = self.by-version."hawk"."3.1.3";
      "http-signature-1.1.1" = self.by-version."http-signature"."1.1.1";
      "is-typedarray-1.0.0" = self.by-version."is-typedarray"."1.0.0";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.1.10" = self.by-version."mime-types"."2.1.10";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
      "oauth-sign-0.8.1" = self.by-version."oauth-sign"."0.8.1";
      "qs-6.1.0" = self.by-version."qs"."6.1.0";
      "stringstream-0.0.5" = self.by-version."stringstream"."0.0.5";
      "tough-cookie-2.2.2" = self.by-version."tough-cookie"."2.2.2";
      "tunnel-agent-0.4.2" = self.by-version."tunnel-agent"."0.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2.x" =
    self.by-version."request"."2.72.0";
  by-spec."request"."^2.51.0" =
    self.by-version."request"."2.72.0";
  by-spec."request"."^2.61.0" =
    self.by-version."request"."2.72.0";
  by-spec."request"."~2.67.0" =
    self.by-version."request"."2.67.0";
  by-version."request"."2.67.0" = self.buildNodePackage {
    name = "request-2.67.0";
    version = "2.67.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/request/-/request-2.67.0.tgz";
      name = "request-2.67.0.tgz";
      sha1 = "8af74780e2bf11ea0ae9aa965c11f11afd272742";
    };
    deps = {
      "bl-1.0.3" = self.by-version."bl"."1.0.3";
      "caseless-0.11.0" = self.by-version."caseless"."0.11.0";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-1.0.0-rc4" = self.by-version."form-data"."1.0.0-rc4";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.1.10" = self.by-version."mime-types"."2.1.10";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
      "qs-5.2.0" = self.by-version."qs"."5.2.0";
      "tunnel-agent-0.4.2" = self.by-version."tunnel-agent"."0.4.2";
      "tough-cookie-2.2.2" = self.by-version."tough-cookie"."2.2.2";
      "http-signature-1.1.1" = self.by-version."http-signature"."1.1.1";
      "oauth-sign-0.8.1" = self.by-version."oauth-sign"."0.8.1";
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
  by-spec."request-progress"."~2.0.1" =
    self.by-version."request-progress"."2.0.1";
  by-version."request-progress"."2.0.1" = self.buildNodePackage {
    name = "request-progress-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/request-progress/-/request-progress-2.0.1.tgz";
      name = "request-progress-2.0.1.tgz";
      sha1 = "5d36bb57961c673aa5b788dbc8141fdf23b44e08";
    };
    deps = {
      "throttleit-1.0.0" = self.by-version."throttleit"."1.0.0";
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
      url = "https://registry.npmjs.org/requires-port/-/requires-port-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/resolve/-/resolve-0.6.3.tgz";
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
      url = "https://registry.npmjs.org/right-align/-/right-align-0.1.3.tgz";
      name = "right-align-0.1.3.tgz";
      sha1 = "61339b722fe6a3515689210d24e14c96148613ef";
    };
    deps = {
      "align-text-0.1.4" = self.by-version."align-text"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."2" =
    self.by-version."rimraf"."2.5.2";
  by-version."rimraf"."2.5.2" = self.buildNodePackage {
    name = "rimraf-2.5.2";
    version = "2.5.2";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/rimraf/-/rimraf-2.5.2.tgz";
      name = "rimraf-2.5.2.tgz";
      sha1 = "62ba947fa4c0b4363839aefecd4f0fbad6059726";
    };
    deps = {
      "glob-7.0.3" = self.by-version."glob"."7.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."^2.2.8" =
    self.by-version."rimraf"."2.5.2";
  by-spec."rimraf"."^2.3.3" =
    self.by-version."rimraf"."2.5.2";
  by-spec."rimraf"."~2.5.0" =
    self.by-version."rimraf"."2.5.2";
  by-spec."rimraf"."~2.5.1" =
    self.by-version."rimraf"."2.5.2";
  by-spec."ripemd160"."0.2.0" =
    self.by-version."ripemd160"."0.2.0";
  by-version."ripemd160"."0.2.0" = self.buildNodePackage {
    name = "ripemd160-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ripemd160/-/ripemd160-0.2.0.tgz";
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
  by-spec."ripemd160"."^1.0.0" =
    self.by-version."ripemd160"."1.0.1";
  by-version."ripemd160"."1.0.1" = self.buildNodePackage {
    name = "ripemd160-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ripemd160/-/ripemd160-1.0.1.tgz";
      name = "ripemd160-1.0.1.tgz";
      sha1 = "93a4bbd4942bc574b69a8fa57c71de10ecca7d6e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sass-graph"."^2.1.1" =
    self.by-version."sass-graph"."2.1.1";
  by-version."sass-graph"."2.1.1" = self.buildNodePackage {
    name = "sass-graph-2.1.1";
    version = "2.1.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/sass-graph/-/sass-graph-2.1.1.tgz";
      name = "sass-graph-2.1.1.tgz";
      sha1 = "61894fbb8aaaeef77eb2c1b0466fde696161cb0c";
    };
    deps = {
      "glob-6.0.4" = self.by-version."glob"."6.0.4";
      "lodash-4.11.1" = self.by-version."lodash"."4.11.1";
      "yargs-3.32.0" = self.by-version."yargs"."3.32.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sass-loader"."^3.1.2" =
    self.by-version."sass-loader"."3.2.0";
  by-version."sass-loader"."3.2.0" = self.buildNodePackage {
    name = "sass-loader-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sass-loader/-/sass-loader-3.2.0.tgz";
      name = "sass-loader-3.2.0.tgz";
      sha1 = "b90ac6c71da27cfd6e7eda5409a5a803193c329b";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."node-sass"."3.6.0"
      self.by-version."webpack"."1.13.0"];
    os = [ ];
    cpu = [ ];
  };
  "sass-loader" = self.by-version."sass-loader"."3.2.0";
  by-spec."sax"."0.5.x" =
    self.by-version."sax"."0.5.8";
  by-version."sax"."0.5.8" = self.buildNodePackage {
    name = "sax-0.5.8";
    version = "0.5.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sax/-/sax-0.5.8.tgz";
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
  by-spec."sax"."~1.2.1" =
    self.by-version."sax"."1.2.1";
  by-version."sax"."1.2.1" = self.buildNodePackage {
    name = "sax-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sax/-/sax-1.2.1.tgz";
      name = "sax-1.2.1.tgz";
      sha1 = "7b8e656190b228e81a66aea748480d828cd2d37a";
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
      url = "https://registry.npmjs.org/semver/-/semver-4.3.6.tgz";
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
      url = "https://registry.npmjs.org/semver/-/semver-5.1.0.tgz";
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
      url = "https://registry.npmjs.org/send/-/send-0.13.1.tgz";
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
      url = "https://registry.npmjs.org/sentence-case/-/sentence-case-1.1.3.tgz";
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
      url = "https://registry.npmjs.org/serve-index/-/serve-index-1.7.3.tgz";
      name = "serve-index-1.7.3.tgz";
      sha1 = "7a057fc6ee28dc63f64566e5fa57b111a86aecd2";
    };
    deps = {
      "accepts-1.2.13" = self.by-version."accepts"."1.2.13";
      "batch-0.5.3" = self.by-version."batch"."0.5.3";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-types-2.1.10" = self.by-version."mime-types"."2.1.10";
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
      url = "https://registry.npmjs.org/serve-static/-/serve-static-1.10.2.tgz";
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
      url = "https://registry.npmjs.org/sha.js/-/sha.js-2.2.6.tgz";
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
  by-spec."sha.js"."^2.3.6" =
    self.by-version."sha.js"."2.4.5";
  by-version."sha.js"."2.4.5" = self.buildNodePackage {
    name = "sha.js-2.4.5";
    version = "2.4.5";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/sha.js/-/sha.js-2.4.5.tgz";
      name = "sha.js-2.4.5.tgz";
      sha1 = "27d171efcc82a118b99639ff581660242b506e7c";
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
  by-spec."shebang-regex"."^1.0.0" =
    self.by-version."shebang-regex"."1.0.0";
  by-version."shebang-regex"."1.0.0" = self.buildNodePackage {
    name = "shebang-regex-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/shebang-regex/-/shebang-regex-1.0.0.tgz";
      name = "shebang-regex-1.0.0.tgz";
      sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
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
      url = "https://registry.npmjs.org/sigmund/-/sigmund-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/signal-exit/-/signal-exit-2.1.2.tgz";
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
  by-spec."slash"."^1.0.0" =
    self.by-version."slash"."1.0.0";
  by-version."slash"."1.0.0" = self.buildNodePackage {
    name = "slash-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/slash/-/slash-1.0.0.tgz";
      name = "slash-1.0.0.tgz";
      sha1 = "c41f2f6c39fc16d1cd17ad4b5d896114ae470d55";
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
      url = "https://registry.npmjs.org/snake-case/-/snake-case-1.1.2.tgz";
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
  by-spec."sntp"."1.x.x" =
    self.by-version."sntp"."1.0.9";
  by-version."sntp"."1.0.9" = self.buildNodePackage {
    name = "sntp-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sntp/-/sntp-1.0.9.tgz";
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
  by-spec."socket.io"."^1.4.5" =
    self.by-version."socket.io"."1.4.5";
  by-version."socket.io"."1.4.5" = self.buildNodePackage {
    name = "socket.io-1.4.5";
    version = "1.4.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/socket.io/-/socket.io-1.4.5.tgz";
      name = "socket.io-1.4.5.tgz";
      sha1 = "f202f49eeb9cf7cf6c0971ad75d8d96d451ea4f7";
    };
    deps = {
      "engine.io-1.6.8" = self.by-version."engine.io"."1.6.8";
      "socket.io-parser-2.2.6" = self.by-version."socket.io-parser"."2.2.6";
      "socket.io-client-1.4.5" = self.by-version."socket.io-client"."1.4.5";
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
      url = "https://registry.npmjs.org/socket.io-adapter/-/socket.io-adapter-0.4.0.tgz";
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
  by-spec."socket.io-client"."1.4.5" =
    self.by-version."socket.io-client"."1.4.5";
  by-version."socket.io-client"."1.4.5" = self.buildNodePackage {
    name = "socket.io-client-1.4.5";
    version = "1.4.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/socket.io-client/-/socket.io-client-1.4.5.tgz";
      name = "socket.io-client-1.4.5.tgz";
      sha1 = "400d630c31e7c9579e45173f977e4f5bd8dc7d2e";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "engine.io-client-1.6.8" = self.by-version."engine.io-client"."1.6.8";
      "component-bind-1.0.0" = self.by-version."component-bind"."1.0.0";
      "component-emitter-1.2.0" = self.by-version."component-emitter"."1.2.0";
      "object-component-0.0.3" = self.by-version."object-component"."0.0.3";
      "socket.io-parser-2.2.6" = self.by-version."socket.io-parser"."2.2.6";
      "has-binary-0.1.7" = self.by-version."has-binary"."0.1.7";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
      "parseuri-0.0.4" = self.by-version."parseuri"."0.0.4";
      "to-array-0.1.4" = self.by-version."to-array"."0.1.4";
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
      url = "https://registry.npmjs.org/socket.io-parser/-/socket.io-parser-2.2.2.tgz";
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
  by-spec."socket.io-parser"."2.2.6" =
    self.by-version."socket.io-parser"."2.2.6";
  by-version."socket.io-parser"."2.2.6" = self.buildNodePackage {
    name = "socket.io-parser-2.2.6";
    version = "2.2.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/socket.io-parser/-/socket.io-parser-2.2.6.tgz";
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
    self.by-version."sockjs"."0.3.17";
  by-version."sockjs"."0.3.17" = self.buildNodePackage {
    name = "sockjs-0.3.17";
    version = "0.3.17";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sockjs/-/sockjs-0.3.17.tgz";
      name = "sockjs-0.3.17.tgz";
      sha1 = "ef1b88f5d73e6278fad8e9476ac91064382f3b44";
    };
    deps = {
      "faye-websocket-0.10.0" = self.by-version."faye-websocket"."0.10.0";
      "uuid-2.0.2" = self.by-version."uuid"."2.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sockjs-client"."^1.0.3" =
    self.by-version."sockjs-client"."1.1.0";
  by-version."sockjs-client"."1.1.0" = self.buildNodePackage {
    name = "sockjs-client-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sockjs-client/-/sockjs-client-1.1.0.tgz";
      name = "sockjs-client-1.1.0.tgz";
      sha1 = "1404b670b47ad5f6ae959e319e84ee718523f477";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "eventsource-0.1.6" = self.by-version."eventsource"."0.1.6";
      "faye-websocket-0.11.0" = self.by-version."faye-websocket"."0.11.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "json3-3.3.2" = self.by-version."json3"."3.3.2";
      "url-parse-1.1.1" = self.by-version."url-parse"."1.1.1";
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
      url = "https://registry.npmjs.org/sort-keys/-/sort-keys-1.1.1.tgz";
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
    self.by-version."source-list-map"."0.1.6";
  by-version."source-list-map"."0.1.6" = self.buildNodePackage {
    name = "source-list-map-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-list-map/-/source-list-map-0.1.6.tgz";
      name = "source-list-map-0.1.6.tgz";
      sha1 = "e1e6f94f0b40c4d28dcf8f5b8766e0e45636877f";
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
    self.by-version."source-list-map"."0.1.6";
  by-spec."source-map"."0.1.31" =
    self.by-version."source-map"."0.1.31";
  by-version."source-map"."0.1.31" = self.buildNodePackage {
    name = "source-map-0.1.31";
    version = "0.1.31";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map/-/source-map-0.1.31.tgz";
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
  by-spec."source-map"."0.1.32" =
    self.by-version."source-map"."0.1.32";
  by-version."source-map"."0.1.32" = self.buildNodePackage {
    name = "source-map-0.1.32";
    version = "0.1.32";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map/-/source-map-0.1.32.tgz";
      name = "source-map-0.1.32.tgz";
      sha1 = "c8b6c167797ba4740a8ea33252162ff08591b266";
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
      url = "https://registry.npmjs.org/source-map/-/source-map-0.1.43.tgz";
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
      url = "https://registry.npmjs.org/source-map/-/source-map-0.4.4.tgz";
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
  by-spec."source-map"."^0.4.4" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."^0.5.0" =
    self.by-version."source-map"."0.5.5";
  by-version."source-map"."0.5.5" = self.buildNodePackage {
    name = "source-map-0.5.5";
    version = "0.5.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map/-/source-map-0.5.5.tgz";
      name = "source-map-0.5.5.tgz";
      sha1 = "d9230c5a63dd59f1ebaecabf78e900302b892c49";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."^0.5.1" =
    self.by-version."source-map"."0.5.5";
  by-spec."source-map"."^0.5.3" =
    self.by-version."source-map"."0.5.5";
  by-spec."source-map"."~0.4.1" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."~0.5.1" =
    self.by-version."source-map"."0.5.5";
  by-spec."source-map"."~0.5.3" =
    self.by-version."source-map"."0.5.5";
  by-spec."source-map-support"."^0.2.10" =
    self.by-version."source-map-support"."0.2.10";
  by-version."source-map-support"."0.2.10" = self.buildNodePackage {
    name = "source-map-support-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map-support/-/source-map-support-0.2.10.tgz";
      name = "source-map-support-0.2.10.tgz";
      sha1 = "ea5a3900a1c1cb25096a0ae8cc5c2b4b10ded3dc";
    };
    deps = {
      "source-map-0.1.32" = self.by-version."source-map"."0.1.32";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-sans-pro"."^2.0.10" =
    self.by-version."source-sans-pro"."2.0.10";
  by-version."source-sans-pro"."2.0.10" = self.buildNodePackage {
    name = "source-sans-pro-2.0.10";
    version = "2.0.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-sans-pro/-/source-sans-pro-2.0.10.tgz";
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
  by-spec."spdx-correct"."~1.0.0" =
    self.by-version."spdx-correct"."1.0.2";
  by-version."spdx-correct"."1.0.2" = self.buildNodePackage {
    name = "spdx-correct-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/spdx-correct/-/spdx-correct-1.0.2.tgz";
      name = "spdx-correct-1.0.2.tgz";
      sha1 = "4b3073d933ff51f3912f03ac5519498a4150db40";
    };
    deps = {
      "spdx-license-ids-1.2.1" = self.by-version."spdx-license-ids"."1.2.1";
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
      url = "https://registry.npmjs.org/spdx-exceptions/-/spdx-exceptions-1.0.4.tgz";
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
      url = "https://registry.npmjs.org/spdx-expression-parse/-/spdx-expression-parse-1.0.2.tgz";
      name = "spdx-expression-parse-1.0.2.tgz";
      sha1 = "d52b14b5e9670771440af225bcb563122ac452f6";
    };
    deps = {
      "spdx-exceptions-1.0.4" = self.by-version."spdx-exceptions"."1.0.4";
      "spdx-license-ids-1.2.1" = self.by-version."spdx-license-ids"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-license-ids"."^1.0.0" =
    self.by-version."spdx-license-ids"."1.2.1";
  by-version."spdx-license-ids"."1.2.1" = self.buildNodePackage {
    name = "spdx-license-ids-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/spdx-license-ids/-/spdx-license-ids-1.2.1.tgz";
      name = "spdx-license-ids-1.2.1.tgz";
      sha1 = "d07ea17a4d2fd9351f9d94e2ff9cec74180fe8f3";
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
    self.by-version."spdx-license-ids"."1.2.1";
  by-spec."sprintf-js"."~1.0.2" =
    self.by-version."sprintf-js"."1.0.3";
  by-version."sprintf-js"."1.0.3" = self.buildNodePackage {
    name = "sprintf-js-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sprintf-js/-/sprintf-js-1.0.3.tgz";
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
    self.by-version."sshpk"."1.8.3";
  by-version."sshpk"."1.8.3" = self.buildNodePackage {
    name = "sshpk-1.8.3";
    version = "1.8.3";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/sshpk/-/sshpk-1.8.3.tgz";
      name = "sshpk-1.8.3.tgz";
      sha1 = "890cc9d614dc5292e5cb1a543b03c9abaa5c374e";
    };
    deps = {
      "asn1-0.2.3" = self.by-version."asn1"."0.2.3";
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
      "dashdash-1.13.1" = self.by-version."dashdash"."1.13.1";
      "getpass-0.1.6" = self.by-version."getpass"."0.1.6";
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
  by-spec."stack-source-map"."^1.0.5" =
    self.by-version."stack-source-map"."1.0.5";
  by-version."stack-source-map"."1.0.5" = self.buildNodePackage {
    name = "stack-source-map-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stack-source-map/-/stack-source-map-1.0.5.tgz";
      name = "stack-source-map-1.0.5.tgz";
      sha1 = "ca95da2ba241bf90fa5757c70d401d10e022b2df";
    };
    deps = {
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "source-map-0.5.5" = self.by-version."source-map"."0.5.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "stack-source-map" = self.by-version."stack-source-map"."1.0.5";
  by-spec."stackframe"."^0.3.1" =
    self.by-version."stackframe"."0.3.1";
  by-version."stackframe"."0.3.1" = self.buildNodePackage {
    name = "stackframe-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stackframe/-/stackframe-0.3.1.tgz";
      name = "stackframe-0.3.1.tgz";
      sha1 = "33aa84f1177a5548c8935533cbfeb3420975f5a4";
    };
    deps = {
    };
    optionalDependencies = {
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
      url = "https://registry.npmjs.org/statuses/-/statuses-1.2.1.tgz";
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
  by-spec."statuses".">= 1.2.1 < 2" =
    self.by-version."statuses"."1.2.1";
  by-spec."statuses"."~1.2.1" =
    self.by-version."statuses"."1.2.1";
  by-spec."stream-browserify"."^1.0.0" =
    self.by-version."stream-browserify"."1.0.0";
  by-version."stream-browserify"."1.0.0" = self.buildNodePackage {
    name = "stream-browserify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stream-browserify/-/stream-browserify-1.0.0.tgz";
      name = "stream-browserify-1.0.0.tgz";
      sha1 = "bf9b4abfb42b274d751479e44e0ff2656b6f1193";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-1.1.14" = self.by-version."readable-stream"."1.1.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-browserify"."^2.0.1" =
    self.by-version."stream-browserify"."2.0.1";
  by-version."stream-browserify"."2.0.1" = self.buildNodePackage {
    name = "stream-browserify-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stream-browserify/-/stream-browserify-2.0.1.tgz";
      name = "stream-browserify-2.0.1.tgz";
      sha1 = "66266ee5f9bdb9940a4e4514cafb43bb71e5c9db";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-2.1.2" = self.by-version."readable-stream"."2.1.2";
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
      url = "https://registry.npmjs.org/stream-cache/-/stream-cache-0.0.2.tgz";
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
      url = "https://registry.npmjs.org/strict-uri-encode/-/strict-uri-encode-1.1.0.tgz";
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
      url = "https://registry.npmjs.org/string-width/-/string-width-1.0.1.tgz";
      name = "string-width-1.0.1.tgz";
      sha1 = "c92129b6f1d7f52acf9af424a26e3864a05ceb0a";
    };
    deps = {
      "code-point-at-1.0.0" = self.by-version."code-point-at"."1.0.0";
      "is-fullwidth-code-point-1.0.0" = self.by-version."is-fullwidth-code-point"."1.0.0";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
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
      url = "https://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
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
      url = "https://registry.npmjs.org/stringstream/-/stringstream-0.0.5.tgz";
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
    self.by-version."strip-ansi"."3.0.1";
  by-version."strip-ansi"."3.0.1" = self.buildNodePackage {
    name = "strip-ansi-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.1.tgz";
      name = "strip-ansi-3.0.1.tgz";
      sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
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
  by-spec."strip-ansi"."^3.0.1" =
    self.by-version."strip-ansi"."3.0.1";
  by-spec."strip-bom"."^2.0.0" =
    self.by-version."strip-bom"."2.0.0";
  by-version."strip-bom"."2.0.0" = self.buildNodePackage {
    name = "strip-bom-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/strip-bom/-/strip-bom-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/strip-indent/-/strip-indent-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-1.0.4.tgz";
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
    self.by-version."style-loader"."0.13.1";
  by-version."style-loader"."0.13.1" = self.buildNodePackage {
    name = "style-loader-0.13.1";
    version = "0.13.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/style-loader/-/style-loader-0.13.1.tgz";
      name = "style-loader-0.13.1.tgz";
      sha1 = "468280efbc0473023cd3a6cd56e33b5a1d7fc3a9";
    };
    deps = {
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "style-loader" = self.by-version."style-loader"."0.13.1";
  by-spec."stylus"."0.49.x" =
    self.by-version."stylus"."0.49.3";
  by-version."stylus"."0.49.3" = self.buildNodePackage {
    name = "stylus-0.49.3";
    version = "0.49.3";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/stylus/-/stylus-0.49.3.tgz";
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
      url = "https://registry.npmjs.org/stylus/-/stylus-0.52.4.tgz";
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
      url = "https://registry.npmjs.org/stylus/-/stylus-0.53.0.tgz";
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
    self.by-version."stylus-loader"."1.6.1";
  by-version."stylus-loader"."1.6.1" = self.buildNodePackage {
    name = "stylus-loader-1.6.1";
    version = "1.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stylus-loader/-/stylus-loader-1.6.1.tgz";
      name = "stylus-loader-1.6.1.tgz";
      sha1 = "4644d84ec1d96ac7a9988a4b005562b3be4827df";
    };
    deps = {
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
      "stylus-0.52.4" = self.by-version."stylus"."0.52.4";
      "when-3.6.4" = self.by-version."when"."3.6.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "stylus-loader" = self.by-version."stylus-loader"."1.6.1";
  by-spec."superagent"."^1.7.1" =
    self.by-version."superagent"."1.8.3";
  by-version."superagent"."1.8.3" = self.buildNodePackage {
    name = "superagent-1.8.3";
    version = "1.8.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/superagent/-/superagent-1.8.3.tgz";
      name = "superagent-1.8.3.tgz";
      sha1 = "2b7d70fcc870eda4f2a61e619dd54009b86547c3";
    };
    deps = {
      "qs-2.3.3" = self.by-version."qs"."2.3.3";
      "formidable-1.0.17" = self.by-version."formidable"."1.0.17";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "component-emitter-1.2.1" = self.by-version."component-emitter"."1.2.1";
      "methods-1.1.2" = self.by-version."methods"."1.1.2";
      "cookiejar-2.0.6" = self.by-version."cookiejar"."2.0.6";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "reduce-component-1.0.1" = self.by-version."reduce-component"."1.0.1";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "form-data-1.0.0-rc3" = self.by-version."form-data"."1.0.0-rc3";
      "readable-stream-1.0.27-1" = self.by-version."readable-stream"."1.0.27-1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "superagent" = self.by-version."superagent"."1.8.3";
  by-spec."superagent-prefix"."0.0.2" =
    self.by-version."superagent-prefix"."0.0.2";
  by-version."superagent-prefix"."0.0.2" = self.buildNodePackage {
    name = "superagent-prefix-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/superagent-prefix/-/superagent-prefix-0.0.2.tgz";
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
      url = "https://registry.npmjs.org/supports-color/-/supports-color-1.2.0.tgz";
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
      url = "https://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/supports-color/-/supports-color-3.1.2.tgz";
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
    self.by-version."svgo"."0.6.6";
  by-version."svgo"."0.6.6" = self.buildNodePackage {
    name = "svgo-0.6.6";
    version = "0.6.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/svgo/-/svgo-0.6.6.tgz";
      name = "svgo-0.6.6.tgz";
      sha1 = "b340889036f20f9b447543077d0f5573ed044c08";
    };
    deps = {
      "sax-1.2.1" = self.by-version."sax"."1.2.1";
      "coa-1.0.1" = self.by-version."coa"."1.0.1";
      "js-yaml-3.6.0" = self.by-version."js-yaml"."3.6.0";
      "colors-1.1.2" = self.by-version."colors"."1.1.2";
      "whet.extend-0.9.9" = self.by-version."whet.extend"."0.9.9";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "csso-2.0.0" = self.by-version."csso"."2.0.0";
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
      url = "https://registry.npmjs.org/swap-case/-/swap-case-1.1.2.tgz";
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
  by-spec."symbol-observable"."^0.2.3" =
    self.by-version."symbol-observable"."0.2.4";
  by-version."symbol-observable"."0.2.4" = self.buildNodePackage {
    name = "symbol-observable-0.2.4";
    version = "0.2.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/symbol-observable/-/symbol-observable-0.2.4.tgz";
      name = "symbol-observable-0.2.4.tgz";
      sha1 = "95a83db26186d6af7e7a18dbd9760a2f86d08f40";
    };
    deps = {
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
      url = "https://registry.npmjs.org/tapable/-/tapable-0.1.10.tgz";
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
  by-spec."tapable"."^0.2.3" =
    self.by-version."tapable"."0.2.4";
  by-version."tapable"."0.2.4" = self.buildNodePackage {
    name = "tapable-0.2.4";
    version = "0.2.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tapable/-/tapable-0.2.4.tgz";
      name = "tapable-0.2.4.tgz";
      sha1 = "a7814605089d4ba896c33c7e3566e13dcd194aa5";
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
  by-spec."tapable"."~0.2.3" =
    self.by-version."tapable"."0.2.4";
  by-spec."tar"."^2.0.0" =
    self.by-version."tar"."2.2.1";
  by-version."tar"."2.2.1" = self.buildNodePackage {
    name = "tar-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tar/-/tar-2.2.1.tgz";
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
    self.by-version."tar-pack"."3.1.3";
  by-version."tar-pack"."3.1.3" = self.buildNodePackage {
    name = "tar-pack-3.1.3";
    version = "3.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tar-pack/-/tar-pack-3.1.3.tgz";
      name = "tar-pack-3.1.3.tgz";
      sha1 = "611b7e62eb2f27aeda64554f7a7fb48900c7e157";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "fstream-ignore-1.0.3" = self.by-version."fstream-ignore"."1.0.3";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "readable-stream-2.0.6" = self.by-version."readable-stream"."2.0.6";
      "rimraf-2.5.2" = self.by-version."rimraf"."2.5.2";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "uid-number-0.0.6" = self.by-version."uid-number"."0.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."throttleit"."^1.0.0" =
    self.by-version."throttleit"."1.0.0";
  by-version."throttleit"."1.0.0" = self.buildNodePackage {
    name = "throttleit-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/throttleit/-/throttleit-1.0.0.tgz";
      name = "throttleit-1.0.0.tgz";
      sha1 = "9e785836daf46743145a5984b6268d828528ac6c";
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
      url = "https://registry.npmjs.org/through/-/through-2.3.8.tgz";
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
      url = "https://registry.npmjs.org/timers-browserify/-/timers-browserify-1.4.2.tgz";
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
      url = "https://registry.npmjs.org/title-case/-/title-case-1.1.2.tgz";
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
  by-spec."to-array"."0.1.4" =
    self.by-version."to-array"."0.1.4";
  by-version."to-array"."0.1.4" = self.buildNodePackage {
    name = "to-array-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/to-array/-/to-array-0.1.4.tgz";
      name = "to-array-0.1.4.tgz";
      sha1 = "17e6c11f73dd4f3d74cda7a4ff3238e9ad9bf890";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."to-fast-properties"."^1.0.1" =
    self.by-version."to-fast-properties"."1.0.2";
  by-version."to-fast-properties"."1.0.2" = self.buildNodePackage {
    name = "to-fast-properties-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/to-fast-properties/-/to-fast-properties-1.0.2.tgz";
      name = "to-fast-properties-1.0.2.tgz";
      sha1 = "f3f5c0c3ba7299a7ef99427e44633257ade43320";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."toposort"."^0.2.12" =
    self.by-version."toposort"."0.2.12";
  by-version."toposort"."0.2.12" = self.buildNodePackage {
    name = "toposort-0.2.12";
    version = "0.2.12";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/toposort/-/toposort-0.2.12.tgz";
      name = "toposort-0.2.12.tgz";
      sha1 = "c7d2984f3d48c217315cc32d770888b779491e81";
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
    self.by-version."tough-cookie"."2.2.2";
  by-version."tough-cookie"."2.2.2" = self.buildNodePackage {
    name = "tough-cookie-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.2.2.tgz";
      name = "tough-cookie-2.2.2.tgz";
      sha1 = "c83a1830f4e5ef0b93ef2a3488e724f8de016ac7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."trim-newlines"."^1.0.0" =
    self.by-version."trim-newlines"."1.0.0";
  by-version."trim-newlines"."1.0.0" = self.buildNodePackage {
    name = "trim-newlines-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/trim-newlines/-/trim-newlines-1.0.0.tgz";
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
  by-spec."trim-right"."^1.0.1" =
    self.by-version."trim-right"."1.0.1";
  by-version."trim-right"."1.0.1" = self.buildNodePackage {
    name = "trim-right-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/trim-right/-/trim-right-1.0.1.tgz";
      name = "trim-right-1.0.1.tgz";
      sha1 = "cb2e1203067e0c8de1f614094b9fe45704ea6003";
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
      url = "https://registry.npmjs.org/tty-browserify/-/tty-browserify-0.0.0.tgz";
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
  by-spec."tunnel-agent"."~0.4.1" =
    self.by-version."tunnel-agent"."0.4.2";
  by-version."tunnel-agent"."0.4.2" = self.buildNodePackage {
    name = "tunnel-agent-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.4.2.tgz";
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
  by-spec."tweetnacl"."~0.13.0" =
    self.by-version."tweetnacl"."0.13.3";
  by-version."tweetnacl"."0.13.3" = self.buildNodePackage {
    name = "tweetnacl-0.13.3";
    version = "0.13.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tweetnacl/-/tweetnacl-0.13.3.tgz";
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
      url = "https://registry.npmjs.org/type-detect/-/type-detect-0.1.1.tgz";
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
      url = "https://registry.npmjs.org/type-detect/-/type-detect-1.0.0.tgz";
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
  by-spec."type-is"."~1.6.11" =
    self.by-version."type-is"."1.6.12";
  by-version."type-is"."1.6.12" = self.buildNodePackage {
    name = "type-is-1.6.12";
    version = "1.6.12";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/type-is/-/type-is-1.6.12.tgz";
      name = "type-is-1.6.12.tgz";
      sha1 = "0352a9dfbfff040fe668cc153cc95829c354173e";
    };
    deps = {
      "media-typer-0.3.0" = self.by-version."media-typer"."0.3.0";
      "mime-types-2.1.10" = self.by-version."mime-types"."2.1.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-is"."~1.6.6" =
    self.by-version."type-is"."1.6.12";
  by-spec."typedarray"."~0.0.5" =
    self.by-version."typedarray"."0.0.6";
  by-version."typedarray"."0.0.6" = self.buildNodePackage {
    name = "typedarray-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/typedarray/-/typedarray-0.0.6.tgz";
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
      url = "https://registry.npmjs.org/ua-parser-js/-/ua-parser-js-0.7.10.tgz";
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
    self.by-version."uglify-js"."2.6.2";
  by-version."uglify-js"."2.6.2" = self.buildNodePackage {
    name = "uglify-js-2.6.2";
    version = "2.6.2";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/uglify-js/-/uglify-js-2.6.2.tgz";
      name = "uglify-js-2.6.2.tgz";
      sha1 = "f50be88a42cd396a6251dc52ab372f71cc12fef0";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "source-map-0.5.5" = self.by-version."source-map"."0.5.5";
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
    self.by-version."uglify-js"."2.6.2";
  by-spec."uglify-to-browserify"."~1.0.0" =
    self.by-version."uglify-to-browserify"."1.0.2";
  by-version."uglify-to-browserify"."1.0.2" = self.buildNodePackage {
    name = "uglify-to-browserify-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/uglify-to-browserify/-/uglify-to-browserify-1.0.2.tgz";
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
  by-spec."uid-number"."0.0.5" =
    self.by-version."uid-number"."0.0.5";
  by-version."uid-number"."0.0.5" = self.buildNodePackage {
    name = "uid-number-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/uid-number/-/uid-number-0.0.5.tgz";
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
  by-spec."uid-number"."~0.0.6" =
    self.by-version."uid-number"."0.0.6";
  by-version."uid-number"."0.0.6" = self.buildNodePackage {
    name = "uid-number-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/uid-number/-/uid-number-0.0.6.tgz";
      name = "uid-number-0.0.6.tgz";
      sha1 = "0ea10e8035e8eb5b8e4449f06da1c730663baa81";
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
      url = "https://registry.npmjs.org/ultron/-/ultron-1.0.2.tgz";
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
  by-spec."uniq"."^1.0.1" =
    self.by-version."uniq"."1.0.1";
  by-version."uniq"."1.0.1" = self.buildNodePackage {
    name = "uniq-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/uniq/-/uniq-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/uniqid/-/uniqid-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/uniqs/-/uniqs-2.0.0.tgz";
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
      url = "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
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
      url = "https://registry.npmjs.org/updeep/-/updeep-0.12.0.tgz";
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
      url = "https://registry.npmjs.org/upper-case/-/upper-case-1.1.3.tgz";
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
      url = "https://registry.npmjs.org/upper-case-first/-/upper-case-first-1.1.2.tgz";
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
      url = "https://registry.npmjs.org/url/-/url-0.10.3.tgz";
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
  by-spec."url"."~0.11.0" =
    self.by-version."url"."0.11.0";
  by-version."url"."0.11.0" = self.buildNodePackage {
    name = "url-0.11.0";
    version = "0.11.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/url/-/url-0.11.0.tgz";
      name = "url-0.11.0.tgz";
      sha1 = "3838e97cfc60521eb73c525a8e55bfdd9e2e28f1";
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
      url = "https://registry.npmjs.org/url-loader/-/url-loader-0.5.7.tgz";
      name = "url-loader-0.5.7.tgz";
      sha1 = "67e8779759f8000da74994906680c943a9b0925d";
    };
    deps = {
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
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
      url = "https://registry.npmjs.org/url-parse/-/url-parse-1.0.5.tgz";
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
    self.by-version."url-parse"."1.1.1";
  by-version."url-parse"."1.1.1" = self.buildNodePackage {
    name = "url-parse-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/url-parse/-/url-parse-1.1.1.tgz";
      name = "url-parse-1.1.1.tgz";
      sha1 = "d1507970728c9a5f80f471530c57325c3fb0e868";
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
  by-spec."user-home"."^1.1.1" =
    self.by-version."user-home"."1.1.1";
  by-version."user-home"."1.1.1" = self.buildNodePackage {
    name = "user-home-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/user-home/-/user-home-1.1.1.tgz";
      name = "user-home-1.1.1.tgz";
      sha1 = "2b5be23a32b63a7c9deb8d0f28d485724a3df190";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."useragent"."^2.1.6" =
    self.by-version."useragent"."2.1.9";
  by-version."useragent"."2.1.9" = self.buildNodePackage {
    name = "useragent-2.1.9";
    version = "2.1.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/useragent/-/useragent-2.1.9.tgz";
      name = "useragent-2.1.9.tgz";
      sha1 = "4dba2bc4dad1875777ab15de3ff8098b475000b7";
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
      url = "https://registry.npmjs.org/utf8/-/utf8-2.1.0.tgz";
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
      url = "https://registry.npmjs.org/util/-/util-0.10.3.tgz";
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
      url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
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
      url = "https://registry.npmjs.org/utila/-/utila-0.3.3.tgz";
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
      url = "https://registry.npmjs.org/utila/-/utila-0.4.0.tgz";
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
      url = "https://registry.npmjs.org/utils-merge/-/utils-merge-1.0.0.tgz";
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
  by-spec."uuid"."^2.0.2" =
    self.by-version."uuid"."2.0.2";
  by-version."uuid"."2.0.2" = self.buildNodePackage {
    name = "uuid-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/uuid/-/uuid-2.0.2.tgz";
      name = "uuid-2.0.2.tgz";
      sha1 = "48bd5698f0677e3c7901a1c46ef15b1643794726";
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
      url = "https://registry.npmjs.org/validate-npm-package-license/-/validate-npm-package-license-3.0.1.tgz";
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
      url = "https://registry.npmjs.org/vary/-/vary-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/vary/-/vary-1.1.0.tgz";
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
      url = "https://registry.npmjs.org/verror/-/verror-1.3.6.tgz";
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
      url = "https://registry.npmjs.org/vm-browserify/-/vm-browserify-0.0.4.tgz";
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
      url = "https://registry.npmjs.org/vm-leaflet-icons/-/vm-leaflet-icons-0.0.5.tgz";
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
      url = "https://registry.npmjs.org/void-elements/-/void-elements-2.0.1.tgz";
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
      url = "https://registry.npmjs.org/watchpack/-/watchpack-0.2.9.tgz";
      name = "watchpack-0.2.9.tgz";
      sha1 = "62eaa4ab5e5ba35fdfc018275626e3c0f5e3fb0b";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "chokidar-1.4.3" = self.by-version."chokidar"."1.4.3";
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."watchpack"."^1.0.0" =
    self.by-version."watchpack"."1.0.1";
  by-version."watchpack"."1.0.1" = self.buildNodePackage {
    name = "watchpack-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/watchpack/-/watchpack-1.0.1.tgz";
      name = "watchpack-1.0.1.tgz";
      sha1 = "3e37162267624543da11d9cf4cce5d0f455841e6";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "chokidar-1.4.3" = self.by-version."chokidar"."1.4.3";
      "graceful-fs-4.1.3" = self.by-version."graceful-fs"."4.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack"."1 || ^2.1.0-beta" =
    self.by-version."webpack"."2.1.0-beta.6";
  by-version."webpack"."2.1.0-beta.6" = self.buildNodePackage {
    name = "webpack-2.1.0-beta.6";
    version = "2.1.0-beta.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack/-/webpack-2.1.0-beta.6.tgz";
      name = "webpack-2.1.0-beta.6.tgz";
      sha1 = "dd1b429483296ba44719b15b028271ca898e8762";
    };
    deps = {
      "acorn-3.1.0" = self.by-version."acorn"."3.1.0";
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "enhanced-resolve-2.2.2" = self.by-version."enhanced-resolve"."2.2.2";
      "interpret-1.0.0" = self.by-version."interpret"."1.0.0";
      "loader-runner-2.1.1" = self.by-version."loader-runner"."2.1.1";
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "node-libs-browser-1.0.0" = self.by-version."node-libs-browser"."1.0.0";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "source-map-0.5.5" = self.by-version."source-map"."0.5.5";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "tapable-0.2.4" = self.by-version."tapable"."0.2.4";
      "uglify-js-2.6.2" = self.by-version."uglify-js"."2.6.2";
      "watchpack-1.0.1" = self.by-version."watchpack"."1.0.1";
      "webpack-sources-0.1.2" = self.by-version."webpack-sources"."0.1.2";
      "yargs-3.32.0" = self.by-version."yargs"."3.32.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack".">=1.3.0 <3" =
    self.by-version."webpack"."1.13.0";
  by-version."webpack"."1.13.0" = self.buildNodePackage {
    name = "webpack-1.13.0";
    version = "1.13.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack/-/webpack-1.13.0.tgz";
      name = "webpack-1.13.0.tgz";
      sha1 = "aad3d34f0b7202dd55b17a6a6cebf4dbbe72272a";
    };
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "enhanced-resolve-0.9.1" = self.by-version."enhanced-resolve"."0.9.1";
      "acorn-3.1.0" = self.by-version."acorn"."3.1.0";
      "interpret-0.6.6" = self.by-version."interpret"."0.6.6";
      "loader-utils-0.2.14" = self.by-version."loader-utils"."0.2.14";
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "node-libs-browser-0.5.3" = self.by-version."node-libs-browser"."0.5.3";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "tapable-0.1.10" = self.by-version."tapable"."0.1.10";
      "uglify-js-2.6.2" = self.by-version."uglify-js"."2.6.2";
      "watchpack-0.2.9" = self.by-version."watchpack"."0.2.9";
      "webpack-core-0.6.8" = self.by-version."webpack-core"."0.6.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack"."^1.12.12" =
    self.by-version."webpack"."1.13.0";
  "webpack" = self.by-version."webpack"."1.13.0";
  by-spec."webpack"."^1.12.6" =
    self.by-version."webpack"."1.13.0";
  by-spec."webpack"."^1.4.0" =
    self.by-version."webpack"."1.13.0";
  by-spec."webpack-core"."~0.6.0" =
    self.by-version."webpack-core"."0.6.8";
  by-version."webpack-core"."0.6.8" = self.buildNodePackage {
    name = "webpack-core-0.6.8";
    version = "0.6.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack-core/-/webpack-core-0.6.8.tgz";
      name = "webpack-core-0.6.8.tgz";
      sha1 = "edf9135de00a6a3c26dd0f14b208af0aa4af8d0a";
    };
    deps = {
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
      "source-list-map-0.1.6" = self.by-version."source-list-map"."0.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack-dev-middleware"."^1.0.11" =
    self.by-version."webpack-dev-middleware"."1.6.1";
  by-version."webpack-dev-middleware"."1.6.1" = self.buildNodePackage {
    name = "webpack-dev-middleware-1.6.1";
    version = "1.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack-dev-middleware/-/webpack-dev-middleware-1.6.1.tgz";
      name = "webpack-dev-middleware-1.6.1.tgz";
      sha1 = "c25ef832abc7d360c38bb40eb918692720ced611";
    };
    deps = {
      "memory-fs-0.3.0" = self.by-version."memory-fs"."0.3.0";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "range-parser-1.0.3" = self.by-version."range-parser"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."webpack"."2.1.0-beta.6"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack-dev-middleware"."^1.4.0" =
    self.by-version."webpack-dev-middleware"."1.6.1";
  by-spec."webpack-dev-server"."^1.14.1" =
    self.by-version."webpack-dev-server"."1.14.1";
  by-version."webpack-dev-server"."1.14.1" = self.buildNodePackage {
    name = "webpack-dev-server-1.14.1";
    version = "1.14.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack-dev-server/-/webpack-dev-server-1.14.1.tgz";
      name = "webpack-dev-server-1.14.1.tgz";
      sha1 = "e51de228071258b0db6d55e0f5fee55eec6755de";
    };
    deps = {
      "compression-1.6.1" = self.by-version."compression"."1.6.1";
      "connect-history-api-fallback-1.1.0" = self.by-version."connect-history-api-fallback"."1.1.0";
      "express-4.13.4" = self.by-version."express"."4.13.4";
      "http-proxy-1.13.2" = self.by-version."http-proxy"."1.13.2";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "serve-index-1.7.3" = self.by-version."serve-index"."1.7.3";
      "sockjs-0.3.17" = self.by-version."sockjs"."0.3.17";
      "sockjs-client-1.1.0" = self.by-version."sockjs-client"."1.1.0";
      "stream-cache-0.0.2" = self.by-version."stream-cache"."0.0.2";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "webpack-dev-middleware-1.6.1" = self.by-version."webpack-dev-middleware"."1.6.1";
      "webpack-2.1.0-beta.6" = self.by-version."webpack"."2.1.0-beta.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "webpack-dev-server" = self.by-version."webpack-dev-server"."1.14.1";
  by-spec."webpack-hot-middleware"."^2.10.0" =
    self.by-version."webpack-hot-middleware"."2.10.0";
  by-version."webpack-hot-middleware"."2.10.0" = self.buildNodePackage {
    name = "webpack-hot-middleware-2.10.0";
    version = "2.10.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack-hot-middleware/-/webpack-hot-middleware-2.10.0.tgz";
      name = "webpack-hot-middleware-2.10.0.tgz";
      sha1 = "aa4d6cedb9979d3f7b5e33999be380f12120fc74";
    };
    deps = {
      "ansi-html-0.0.5" = self.by-version."ansi-html"."0.0.5";
      "html-entities-1.2.0" = self.by-version."html-entities"."1.2.0";
      "querystring-0.2.0" = self.by-version."querystring"."0.2.0";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "webpack-hot-middleware" = self.by-version."webpack-hot-middleware"."2.10.0";
  by-spec."webpack-sources"."^0.1.0" =
    self.by-version."webpack-sources"."0.1.2";
  by-version."webpack-sources"."0.1.2" = self.buildNodePackage {
    name = "webpack-sources-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/webpack-sources/-/webpack-sources-0.1.2.tgz";
      name = "webpack-sources-0.1.2.tgz";
      sha1 = "057a3f3255f8ba561b901d9150589aa103a57e65";
    };
    deps = {
      "source-map-0.5.5" = self.by-version."source-map"."0.5.5";
      "source-list-map-0.1.6" = self.by-version."source-list-map"."0.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."websocket-driver".">=0.5.1" =
    self.by-version."websocket-driver"."0.6.4";
  by-version."websocket-driver"."0.6.4" = self.buildNodePackage {
    name = "websocket-driver-0.6.4";
    version = "0.6.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/websocket-driver/-/websocket-driver-0.6.4.tgz";
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
  by-spec."websocket-extensions".">=0.1.1" =
    self.by-version."websocket-extensions"."0.1.1";
  by-version."websocket-extensions"."0.1.1" = self.buildNodePackage {
    name = "websocket-extensions-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/websocket-extensions/-/websocket-extensions-0.1.1.tgz";
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
  by-spec."whatwg-fetch".">=0.10.0" =
    self.by-version."whatwg-fetch"."1.0.0";
  by-version."whatwg-fetch"."1.0.0" = self.buildNodePackage {
    name = "whatwg-fetch-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/whatwg-fetch/-/whatwg-fetch-1.0.0.tgz";
      name = "whatwg-fetch-1.0.0.tgz";
      sha1 = "01c2ac4df40e236aaa18480e3be74bd5c8eb798e";
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
      url = "https://registry.npmjs.org/whatwg-fetch/-/whatwg-fetch-0.9.0.tgz";
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
      url = "https://registry.npmjs.org/when/-/when-3.6.4.tgz";
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
      url = "https://registry.npmjs.org/whet.extend/-/whet.extend-0.9.9.tgz";
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
    self.by-version."which"."1.2.4";
  by-version."which"."1.2.4" = self.buildNodePackage {
    name = "which-1.2.4";
    version = "1.2.4";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/which/-/which-1.2.4.tgz";
      name = "which-1.2.4.tgz";
      sha1 = "1557f96080604e5b11b3599eb9f45b50a9efd722";
    };
    deps = {
      "is-absolute-0.1.7" = self.by-version."is-absolute"."0.1.7";
      "isexe-1.1.2" = self.by-version."isexe"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."which"."^1.2.4" =
    self.by-version."which"."1.2.4";
  by-spec."which"."~1.2.2" =
    self.by-version."which"."1.2.4";
  by-spec."window-size"."0.1.0" =
    self.by-version."window-size"."0.1.0";
  by-version."window-size"."0.1.0" = self.buildNodePackage {
    name = "window-size-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/window-size/-/window-size-0.1.0.tgz";
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
      url = "https://registry.npmjs.org/window-size/-/window-size-0.1.4.tgz";
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
      url = "https://registry.npmjs.org/wordwrap/-/wordwrap-0.0.2.tgz";
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
      url = "https://registry.npmjs.org/wordwrap/-/wordwrap-0.0.3.tgz";
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
  by-spec."wrap-ansi"."^2.0.0" =
    self.by-version."wrap-ansi"."2.0.0";
  by-version."wrap-ansi"."2.0.0" = self.buildNodePackage {
    name = "wrap-ansi-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-2.0.0.tgz";
      name = "wrap-ansi-2.0.0.tgz";
      sha1 = "7d30f8f873f9a5bbc3a64dabc8d177e071ae426f";
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
      url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.1.tgz";
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
      url = "https://registry.npmjs.org/ws/-/ws-1.0.1.tgz";
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
  by-spec."xml-char-classes"."^1.0.0" =
    self.by-version."xml-char-classes"."1.0.0";
  by-version."xml-char-classes"."1.0.0" = self.buildNodePackage {
    name = "xml-char-classes-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/xml-char-classes/-/xml-char-classes-1.0.0.tgz";
      name = "xml-char-classes-1.0.0.tgz";
      sha1 = "64657848a20ffc5df583a42ad8a277b4512bbc4d";
    };
    deps = {
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
      url = "https://registry.npmjs.org/xmlhttprequest-ssl/-/xmlhttprequest-ssl-1.5.1.tgz";
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
      url = "https://registry.npmjs.org/xtend/-/xtend-4.0.1.tgz";
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
    self.by-version."y18n"."3.2.1";
  by-version."y18n"."3.2.1" = self.buildNodePackage {
    name = "y18n-3.2.1";
    version = "3.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/y18n/-/y18n-3.2.1.tgz";
      name = "y18n-3.2.1.tgz";
      sha1 = "6d15fba884c08679c0d77e88e7759e811e07fa41";
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
      url = "https://registry.npmjs.org/yallist/-/yallist-2.0.0.tgz";
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
  by-spec."yargs"."^3.31.0" =
    self.by-version."yargs"."3.32.0";
  by-version."yargs"."3.32.0" = self.buildNodePackage {
    name = "yargs-3.32.0";
    version = "3.32.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/yargs/-/yargs-3.32.0.tgz";
      name = "yargs-3.32.0.tgz";
      sha1 = "03088e9ebf9e756b69751611d2a5ef591482c995";
    };
    deps = {
      "camelcase-2.1.1" = self.by-version."camelcase"."2.1.1";
      "cliui-3.2.0" = self.by-version."cliui"."3.2.0";
      "decamelize-1.2.0" = self.by-version."decamelize"."1.2.0";
      "os-locale-1.4.0" = self.by-version."os-locale"."1.4.0";
      "string-width-1.0.1" = self.by-version."string-width"."1.0.1";
      "window-size-0.1.4" = self.by-version."window-size"."0.1.4";
      "y18n-3.2.1" = self.by-version."y18n"."3.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yargs"."^3.32.0" =
    self.by-version."yargs"."3.32.0";
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
      url = "https://registry.npmjs.org/yargs/-/yargs-3.10.0.tgz";
      name = "yargs-3.10.0.tgz";
      sha1 = "f7ee7bd857dd7c1d2d38c0e74efbd681d1431fd1";
    };
    deps = {
      "camelcase-1.2.1" = self.by-version."camelcase"."1.2.1";
      "cliui-2.1.0" = self.by-version."cliui"."2.1.0";
      "decamelize-1.2.0" = self.by-version."decamelize"."1.2.0";
      "window-size-0.1.0" = self.by-version."window-size"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yauzl"."2.4.1" =
    self.by-version."yauzl"."2.4.1";
  by-version."yauzl"."2.4.1" = self.buildNodePackage {
    name = "yauzl-2.4.1";
    version = "2.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/yauzl/-/yauzl-2.4.1.tgz";
      name = "yauzl-2.4.1.tgz";
      sha1 = "9528f442dab1b2284e58b4379bb194e22e0c4005";
    };
    deps = {
      "fd-slicer-1.0.1" = self.by-version."fd-slicer"."1.0.1";
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
      url = "https://registry.npmjs.org/yeast/-/yeast-0.1.2.tgz";
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
