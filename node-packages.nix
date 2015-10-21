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
  by-spec."JSONStream"."^1.0.3" =
    self.by-version."JSONStream"."1.0.6";
  by-version."JSONStream"."1.0.6" = self.buildNodePackage {
    name = "JSONStream-1.0.6";
    version = "1.0.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/JSONStream/-/JSONStream-1.0.6.tgz";
      name = "JSONStream-1.0.6.tgz";
      sha1 = "7fa56d971a69c97b7f9db942f441a68a2187da3a";
    };
    deps = {
      "jsonparse-1.2.0" = self.by-version."jsonparse"."1.2.0";
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."JSONStream"."~0.8.3" =
    self.by-version."JSONStream"."0.8.4";
  by-version."JSONStream"."0.8.4" = self.buildNodePackage {
    name = "JSONStream-0.8.4";
    version = "0.8.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/JSONStream/-/JSONStream-0.8.4.tgz";
      name = "JSONStream-0.8.4.tgz";
      sha1 = "91657dfe6ff857483066132b4618b62e8f4887bd";
    };
    deps = {
      "jsonparse-0.0.5" = self.by-version."jsonparse"."0.0.5";
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."JSONStream"."~0.8.4" =
    self.by-version."JSONStream"."0.8.4";
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
      "mime-types-2.1.7" = self.by-version."mime-types"."2.1.7";
      "negotiator-0.5.3" = self.by-version."negotiator"."0.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."accepts"."~1.3.0" =
    self.by-version."accepts"."1.3.0";
  by-version."accepts"."1.3.0" = self.buildNodePackage {
    name = "accepts-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/accepts/-/accepts-1.3.0.tgz";
      name = "accepts-1.3.0.tgz";
      sha1 = "2341420f16d0b2d538a5898416ab0faa28912622";
    };
    deps = {
      "mime-types-2.1.7" = self.by-version."mime-types"."2.1.7";
      "negotiator-0.6.0" = self.by-version."negotiator"."0.6.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."acorn"."^1.0.3" =
    self.by-version."acorn"."1.2.2";
  by-version."acorn"."1.2.2" = self.buildNodePackage {
    name = "acorn-1.2.2";
    version = "1.2.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/acorn/-/acorn-1.2.2.tgz";
      name = "acorn-1.2.2.tgz";
      sha1 = "c8ce27de0acc76d896d2b1fad3df588d9e82f014";
    };
    deps = {
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
  by-spec."alter"."~0.2.0" =
    self.by-version."alter"."0.2.0";
  by-version."alter"."0.2.0" = self.buildNodePackage {
    name = "alter-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/alter/-/alter-0.2.0.tgz";
      name = "alter-0.2.0.tgz";
      sha1 = "c7588808617572034aae62480af26b1d4d1cb3cd";
    };
    deps = {
      "stable-0.1.5" = self.by-version."stable"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
    self.by-version."ansi"."0.3.0";
  by-version."ansi"."0.3.0" = self.buildNodePackage {
    name = "ansi-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi/-/ansi-0.3.0.tgz";
      name = "ansi-0.3.0.tgz";
      sha1 = "74b2f1f187c8553c7f95015bcb76009fb43d38e0";
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
    self.by-version."ansi"."0.3.0";
  by-spec."ansi-green"."^0.1.1" =
    self.by-version."ansi-green"."0.1.1";
  by-version."ansi-green"."0.1.1" = self.buildNodePackage {
    name = "ansi-green-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-green/-/ansi-green-0.1.1.tgz";
      name = "ansi-green-0.1.1.tgz";
      sha1 = "8a5d9a979e458d57c40e33580b37390b8e10d0f7";
    };
    deps = {
      "ansi-wrap-0.1.0" = self.by-version."ansi-wrap"."0.1.0";
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
  by-spec."ansi-wrap"."0.1.0" =
    self.by-version."ansi-wrap"."0.1.0";
  by-version."ansi-wrap"."0.1.0" = self.buildNodePackage {
    name = "ansi-wrap-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-wrap/-/ansi-wrap-0.1.0.tgz";
      name = "ansi-wrap-0.1.0.tgz";
      sha1 = "a82250ddb0015e9a27ca82e82ea603bbfa45efaf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."anymatch"."^1.1.0" =
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
      "arrify-1.0.0" = self.by-version."arrify"."1.0.0";
      "micromatch-2.2.0" = self.by-version."micromatch"."2.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."are-we-there-yet"."~1.0.0" =
    self.by-version."are-we-there-yet"."1.0.4";
  by-version."are-we-there-yet"."1.0.4" = self.buildNodePackage {
    name = "are-we-there-yet-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-1.0.4.tgz";
      name = "are-we-there-yet-1.0.4.tgz";
      sha1 = "527fe389f7bcba90806106b99244eaa07e886f85";
    };
    deps = {
      "delegates-0.1.0" = self.by-version."delegates"."0.1.0";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."argparse"."~1.0.2" =
    self.by-version."argparse"."1.0.2";
  by-version."argparse"."1.0.2" = self.buildNodePackage {
    name = "argparse-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/argparse/-/argparse-1.0.2.tgz";
      name = "argparse-1.0.2.tgz";
      sha1 = "bcfae39059656d1973d0b9e6a1a74154b5a9a136";
    };
    deps = {
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "sprintf-js-1.0.3" = self.by-version."sprintf-js"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arr-diff"."^1.0.1" =
    self.by-version."arr-diff"."1.1.0";
  by-version."arr-diff"."1.1.0" = self.buildNodePackage {
    name = "arr-diff-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arr-diff/-/arr-diff-1.1.0.tgz";
      name = "arr-diff-1.1.0.tgz";
      sha1 = "687c32758163588fef7de7b36fabe495eb1a399a";
    };
    deps = {
      "arr-flatten-1.0.1" = self.by-version."arr-flatten"."1.0.1";
      "array-slice-0.2.3" = self.by-version."array-slice"."0.2.3";
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
  by-spec."array-index"."~0.1.0" =
    self.by-version."array-index"."0.1.1";
  by-version."array-index"."0.1.1" = self.buildNodePackage {
    name = "array-index-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-index/-/array-index-0.1.1.tgz";
      name = "array-index-0.1.1.tgz";
      sha1 = "4d5eaf06cc3d925847cd73d1535c217ba306d3e1";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-slice"."^0.2.2" =
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
  by-spec."array-slice"."^0.2.3" =
    self.by-version."array-slice"."0.2.3";
  by-spec."array-uniq"."^1.0.1" =
    self.by-version."array-uniq"."1.0.2";
  by-version."array-uniq"."1.0.2" = self.buildNodePackage {
    name = "array-uniq-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-uniq/-/array-uniq-1.0.2.tgz";
      name = "array-uniq-1.0.2.tgz";
      sha1 = "5fcc373920775723cfd64d65c64bef53bf9eba6d";
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
    self.by-version."arrify"."1.0.0";
  by-version."arrify"."1.0.0" = self.buildNodePackage {
    name = "arrify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arrify/-/arrify-1.0.0.tgz";
      name = "arrify-1.0.0.tgz";
      sha1 = "d6c361518250802fa2147ea7fb67597128cb8c81";
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
  by-spec."asn1.js"."^2.0.0" =
    self.by-version."asn1.js"."2.2.1";
  by-version."asn1.js"."2.2.1" = self.buildNodePackage {
    name = "asn1.js-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asn1.js/-/asn1.js-2.2.1.tgz";
      name = "asn1.js-2.2.1.tgz";
      sha1 = "c8ba4dd68e84431288126230cb2045bdfa9fbfe1";
    };
    deps = {
      "bn.js-2.2.0" = self.by-version."bn.js"."2.2.0";
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
  by-spec."assert"."~1.3.0" =
    self.by-version."assert"."1.3.0";
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
  by-spec."ast-traverse"."~0.1.1" =
    self.by-version."ast-traverse"."0.1.1";
  by-version."ast-traverse"."0.1.1" = self.buildNodePackage {
    name = "ast-traverse-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ast-traverse/-/ast-traverse-0.1.1.tgz";
      name = "ast-traverse-0.1.1.tgz";
      sha1 = "69cf2b8386f19dcda1bb1e05d68fe359d8897de6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ast-types"."0.8.12" =
    self.by-version."ast-types"."0.8.12";
  by-version."ast-types"."0.8.12" = self.buildNodePackage {
    name = "ast-types-0.8.12";
    version = "0.8.12";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ast-types/-/ast-types-0.8.12.tgz";
      name = "ast-types-0.8.12.tgz";
      sha1 = "a0d90e4351bb887716c83fd637ebf818af4adfcc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ast-types"."0.8.5" =
    self.by-version."ast-types"."0.8.5";
  by-version."ast-types"."0.8.5" = self.buildNodePackage {
    name = "ast-types-0.8.5";
    version = "0.8.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ast-types/-/ast-types-0.8.5.tgz";
      name = "ast-types-0.8.5.tgz";
      sha1 = "5a127330cc5ec97ac53292e3dcf1a14a9b6e803f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."astw"."^2.0.0" =
    self.by-version."astw"."2.0.0";
  by-version."astw"."2.0.0" = self.buildNodePackage {
    name = "astw-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/astw/-/astw-2.0.0.tgz";
      name = "astw-2.0.0.tgz";
      sha1 = "08121ac8288d35611c0ceec663f6cd545604897d";
    };
    deps = {
      "acorn-1.2.2" = self.by-version."acorn"."1.2.2";
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
    self.by-version."async"."1.4.2";
  by-version."async"."1.4.2" = self.buildNodePackage {
    name = "async-1.4.2";
    version = "1.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-1.4.2.tgz";
      name = "async-1.4.2.tgz";
      sha1 = "6c9edcb11ced4f0dd2f2d40db0d49a109c088aab";
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
    self.by-version."async"."1.4.2";
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
  by-spec."async-each"."^0.1.5" =
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
    self.by-version."autoprefixer"."6.0.3";
  by-version."autoprefixer"."6.0.3" = self.buildNodePackage {
    name = "autoprefixer-6.0.3";
    version = "6.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/autoprefixer/-/autoprefixer-6.0.3.tgz";
      name = "autoprefixer-6.0.3.tgz";
      sha1 = "06badb15cadb2d1dd92d5b95f8f4522911f9c79f";
    };
    deps = {
      "num2fraction-1.2.2" = self.by-version."num2fraction"."1.2.2";
      "browserslist-1.0.1" = self.by-version."browserslist"."1.0.1";
      "caniuse-db-1.0.30000348" = self.by-version."caniuse-db"."1.0.30000348";
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
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
  by-spec."babel-core"."*" =
    self.by-version."babel-core"."5.8.25";
  by-version."babel-core"."5.8.25" = self.buildNodePackage {
    name = "babel-core-5.8.25";
    version = "5.8.25";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-core/-/babel-core-5.8.25.tgz";
      name = "babel-core-5.8.25.tgz";
      sha1 = "4d05fbd6497651105c016ccb278f5bf1cabd1f73";
    };
    deps = {
      "babel-plugin-constant-folding-1.0.1" = self.by-version."babel-plugin-constant-folding"."1.0.1";
      "babel-plugin-dead-code-elimination-1.0.2" = self.by-version."babel-plugin-dead-code-elimination"."1.0.2";
      "babel-plugin-eval-1.0.1" = self.by-version."babel-plugin-eval"."1.0.1";
      "babel-plugin-inline-environment-variables-1.0.1" = self.by-version."babel-plugin-inline-environment-variables"."1.0.1";
      "babel-plugin-jscript-1.0.4" = self.by-version."babel-plugin-jscript"."1.0.4";
      "babel-plugin-member-expression-literals-1.0.1" = self.by-version."babel-plugin-member-expression-literals"."1.0.1";
      "babel-plugin-property-literals-1.0.1" = self.by-version."babel-plugin-property-literals"."1.0.1";
      "babel-plugin-proto-to-assign-1.0.4" = self.by-version."babel-plugin-proto-to-assign"."1.0.4";
      "babel-plugin-react-constant-elements-1.0.3" = self.by-version."babel-plugin-react-constant-elements"."1.0.3";
      "babel-plugin-react-display-name-1.0.3" = self.by-version."babel-plugin-react-display-name"."1.0.3";
      "babel-plugin-remove-console-1.0.1" = self.by-version."babel-plugin-remove-console"."1.0.1";
      "babel-plugin-remove-debugger-1.0.1" = self.by-version."babel-plugin-remove-debugger"."1.0.1";
      "babel-plugin-runtime-1.0.7" = self.by-version."babel-plugin-runtime"."1.0.7";
      "babel-plugin-undeclared-variables-check-1.0.2" = self.by-version."babel-plugin-undeclared-variables-check"."1.0.2";
      "babel-plugin-undefined-to-void-1.1.6" = self.by-version."babel-plugin-undefined-to-void"."1.1.6";
      "babylon-5.8.23" = self.by-version."babylon"."5.8.23";
      "bluebird-2.10.2" = self.by-version."bluebird"."2.10.2";
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "convert-source-map-1.1.1" = self.by-version."convert-source-map"."1.1.1";
      "core-js-1.2.2" = self.by-version."core-js"."1.2.2";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "detect-indent-3.0.1" = self.by-version."detect-indent"."3.0.1";
      "esutils-2.0.2" = self.by-version."esutils"."2.0.2";
      "fs-readdir-recursive-0.1.2" = self.by-version."fs-readdir-recursive"."0.1.2";
      "globals-6.4.1" = self.by-version."globals"."6.4.1";
      "home-or-tmp-1.0.0" = self.by-version."home-or-tmp"."1.0.0";
      "is-integer-1.0.6" = self.by-version."is-integer"."1.0.6";
      "js-tokens-1.0.1" = self.by-version."js-tokens"."1.0.1";
      "json5-0.4.0" = self.by-version."json5"."0.4.0";
      "line-numbers-0.2.0" = self.by-version."line-numbers"."0.2.0";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "output-file-sync-1.1.1" = self.by-version."output-file-sync"."1.1.1";
      "path-exists-1.0.0" = self.by-version."path-exists"."1.0.0";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "private-0.1.6" = self.by-version."private"."0.1.6";
      "regenerator-0.8.35" = self.by-version."regenerator"."0.8.35";
      "regexpu-1.3.0" = self.by-version."regexpu"."1.3.0";
      "repeating-1.1.3" = self.by-version."repeating"."1.1.3";
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
      "shebang-regex-1.0.0" = self.by-version."shebang-regex"."1.0.0";
      "slash-1.0.0" = self.by-version."slash"."1.0.0";
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
      "source-map-support-0.2.10" = self.by-version."source-map-support"."0.2.10";
      "to-fast-properties-1.0.1" = self.by-version."to-fast-properties"."1.0.1";
      "trim-right-1.0.1" = self.by-version."trim-right"."1.0.1";
      "try-resolve-1.0.1" = self.by-version."try-resolve"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-core"."^5.4.0" =
    self.by-version."babel-core"."5.8.25";
  by-spec."babel-core"."^5.8.25" =
    self.by-version."babel-core"."5.8.25";
  "babel-core" = self.by-version."babel-core"."5.8.25";
  by-spec."babel-loader"."^5.3.2" =
    self.by-version."babel-loader"."5.3.2";
  by-version."babel-loader"."5.3.2" = self.buildNodePackage {
    name = "babel-loader-5.3.2";
    version = "5.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-loader/-/babel-loader-5.3.2.tgz";
      name = "babel-loader-5.3.2.tgz";
      sha1 = "d8839fc7163f8c55bffcdbd75fec513387ff328f";
    };
    deps = {
      "babel-core-5.8.25" = self.by-version."babel-core"."5.8.25";
      "loader-utils-0.2.11" = self.by-version."loader-utils"."0.2.11";
      "object-assign-3.0.0" = self.by-version."object-assign"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."webpack"."1.12.2"];
    os = [ ];
    cpu = [ ];
  };
  "babel-loader" = self.by-version."babel-loader"."5.3.2";
  by-spec."babel-plugin-constant-folding"."^1.0.1" =
    self.by-version."babel-plugin-constant-folding"."1.0.1";
  by-version."babel-plugin-constant-folding"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-constant-folding-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-constant-folding/-/babel-plugin-constant-folding-1.0.1.tgz";
      name = "babel-plugin-constant-folding-1.0.1.tgz";
      sha1 = "8361d364c98e449c3692bdba51eff0844290aa8e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-dead-code-elimination"."^1.0.2" =
    self.by-version."babel-plugin-dead-code-elimination"."1.0.2";
  by-version."babel-plugin-dead-code-elimination"."1.0.2" = self.buildNodePackage {
    name = "babel-plugin-dead-code-elimination-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-dead-code-elimination/-/babel-plugin-dead-code-elimination-1.0.2.tgz";
      name = "babel-plugin-dead-code-elimination-1.0.2.tgz";
      sha1 = "5f7c451274dcd7cccdbfbb3e0b85dd28121f0f65";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-eval"."^1.0.1" =
    self.by-version."babel-plugin-eval"."1.0.1";
  by-version."babel-plugin-eval"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-eval-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-eval/-/babel-plugin-eval-1.0.1.tgz";
      name = "babel-plugin-eval-1.0.1.tgz";
      sha1 = "a2faed25ce6be69ade4bfec263f70169195950da";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-inline-environment-variables"."^1.0.1" =
    self.by-version."babel-plugin-inline-environment-variables"."1.0.1";
  by-version."babel-plugin-inline-environment-variables"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-inline-environment-variables-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-inline-environment-variables/-/babel-plugin-inline-environment-variables-1.0.1.tgz";
      name = "babel-plugin-inline-environment-variables-1.0.1.tgz";
      sha1 = "1f58ce91207ad6a826a8bf645fafe68ff5fe3ffe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-jscript"."^1.0.4" =
    self.by-version."babel-plugin-jscript"."1.0.4";
  by-version."babel-plugin-jscript"."1.0.4" = self.buildNodePackage {
    name = "babel-plugin-jscript-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-jscript/-/babel-plugin-jscript-1.0.4.tgz";
      name = "babel-plugin-jscript-1.0.4.tgz";
      sha1 = "8f342c38276e87a47d5fa0a8bd3d5eb6ccad8fcc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-member-expression-literals"."^1.0.1" =
    self.by-version."babel-plugin-member-expression-literals"."1.0.1";
  by-version."babel-plugin-member-expression-literals"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-member-expression-literals-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-member-expression-literals/-/babel-plugin-member-expression-literals-1.0.1.tgz";
      name = "babel-plugin-member-expression-literals-1.0.1.tgz";
      sha1 = "cc5edb0faa8dc927170e74d6d1c02440021624d3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-property-literals"."^1.0.1" =
    self.by-version."babel-plugin-property-literals"."1.0.1";
  by-version."babel-plugin-property-literals"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-property-literals-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-property-literals/-/babel-plugin-property-literals-1.0.1.tgz";
      name = "babel-plugin-property-literals-1.0.1.tgz";
      sha1 = "0252301900192980b1c118efea48ce93aab83336";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-proto-to-assign"."^1.0.3" =
    self.by-version."babel-plugin-proto-to-assign"."1.0.4";
  by-version."babel-plugin-proto-to-assign"."1.0.4" = self.buildNodePackage {
    name = "babel-plugin-proto-to-assign-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-proto-to-assign/-/babel-plugin-proto-to-assign-1.0.4.tgz";
      name = "babel-plugin-proto-to-assign-1.0.4.tgz";
      sha1 = "c49e7afd02f577bc4da05ea2df002250cf7cd123";
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
  by-spec."babel-plugin-react-constant-elements"."^1.0.3" =
    self.by-version."babel-plugin-react-constant-elements"."1.0.3";
  by-version."babel-plugin-react-constant-elements"."1.0.3" = self.buildNodePackage {
    name = "babel-plugin-react-constant-elements-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-react-constant-elements/-/babel-plugin-react-constant-elements-1.0.3.tgz";
      name = "babel-plugin-react-constant-elements-1.0.3.tgz";
      sha1 = "946736e8378429cbc349dcff62f51c143b34e35a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-react-display-name"."^1.0.3" =
    self.by-version."babel-plugin-react-display-name"."1.0.3";
  by-version."babel-plugin-react-display-name"."1.0.3" = self.buildNodePackage {
    name = "babel-plugin-react-display-name-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-react-display-name/-/babel-plugin-react-display-name-1.0.3.tgz";
      name = "babel-plugin-react-display-name-1.0.3.tgz";
      sha1 = "754fe38926e8424a4e7b15ab6ea6139dee0514fc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-remove-console"."^1.0.1" =
    self.by-version."babel-plugin-remove-console"."1.0.1";
  by-version."babel-plugin-remove-console"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-remove-console-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-remove-console/-/babel-plugin-remove-console-1.0.1.tgz";
      name = "babel-plugin-remove-console-1.0.1.tgz";
      sha1 = "d8f24556c3a05005d42aaaafd27787f53ff013a7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-remove-debugger"."^1.0.1" =
    self.by-version."babel-plugin-remove-debugger"."1.0.1";
  by-version."babel-plugin-remove-debugger"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-remove-debugger-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-remove-debugger/-/babel-plugin-remove-debugger-1.0.1.tgz";
      name = "babel-plugin-remove-debugger-1.0.1.tgz";
      sha1 = "fd2ea3cd61a428ad1f3b9c89882ff4293e8c14c7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-runtime"."^1.0.7" =
    self.by-version."babel-plugin-runtime"."1.0.7";
  by-version."babel-plugin-runtime"."1.0.7" = self.buildNodePackage {
    name = "babel-plugin-runtime-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-runtime/-/babel-plugin-runtime-1.0.7.tgz";
      name = "babel-plugin-runtime-1.0.7.tgz";
      sha1 = "bf7c7d966dd56ecd5c17fa1cb253c9acb7e54aaf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-undeclared-variables-check"."^1.0.2" =
    self.by-version."babel-plugin-undeclared-variables-check"."1.0.2";
  by-version."babel-plugin-undeclared-variables-check"."1.0.2" = self.buildNodePackage {
    name = "babel-plugin-undeclared-variables-check-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-undeclared-variables-check/-/babel-plugin-undeclared-variables-check-1.0.2.tgz";
      name = "babel-plugin-undeclared-variables-check-1.0.2.tgz";
      sha1 = "5cf1aa539d813ff64e99641290af620965f65dee";
    };
    deps = {
      "leven-1.0.2" = self.by-version."leven"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-undefined-to-void"."^1.1.6" =
    self.by-version."babel-plugin-undefined-to-void"."1.1.6";
  by-version."babel-plugin-undefined-to-void"."1.1.6" = self.buildNodePackage {
    name = "babel-plugin-undefined-to-void-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-undefined-to-void/-/babel-plugin-undefined-to-void-1.1.6.tgz";
      name = "babel-plugin-undefined-to-void-1.1.6.tgz";
      sha1 = "7f578ef8b78dfae6003385d8417a61eda06e2f81";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-runtime"."^5.8.20" =
    self.by-version."babel-runtime"."5.8.25";
  by-version."babel-runtime"."5.8.25" = self.buildNodePackage {
    name = "babel-runtime-5.8.25";
    version = "5.8.25";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-runtime/-/babel-runtime-5.8.25.tgz";
      name = "babel-runtime-5.8.25.tgz";
      sha1 = "4fafe2710261e7ef84aa4a956f9e4a6338f24651";
    };
    deps = {
      "core-js-1.2.2" = self.by-version."core-js"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babylon"."^5.8.23" =
    self.by-version."babylon"."5.8.23";
  by-version."babylon"."5.8.23" = self.buildNodePackage {
    name = "babylon-5.8.23";
    version = "5.8.23";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babylon/-/babylon-5.8.23.tgz";
      name = "babylon-5.8.23.tgz";
      sha1 = "acc5e2697c49add09edff6edc03795c2c2671de5";
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
  by-spec."balanced-match"."^0.2.0" =
    self.by-version."balanced-match"."0.2.0";
  by-version."balanced-match"."0.2.0" = self.buildNodePackage {
    name = "balanced-match-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/balanced-match/-/balanced-match-0.2.0.tgz";
      name = "balanced-match-0.2.0.tgz";
      sha1 = "38f6730c03aab6d5edbb52bd934885e756d71674";
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
  by-spec."batch"."0.5.2" =
    self.by-version."batch"."0.5.2";
  by-version."batch"."0.5.2" = self.buildNodePackage {
    name = "batch-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/batch/-/batch-0.5.2.tgz";
      name = "batch-0.5.2.tgz";
      sha1 = "546543dbe32118c83c7c7ca33a1f5c5d5ea963e9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
    self.by-version."binary-extensions"."1.3.1";
  by-version."binary-extensions"."1.3.1" = self.buildNodePackage {
    name = "binary-extensions-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/binary-extensions/-/binary-extensions-1.3.1.tgz";
      name = "binary-extensions-1.3.1.tgz";
      sha1 = "32dd9ed2a7c69acec56f77f6cd80df043f78777a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bindings"."1.2.x" =
    self.by-version."bindings"."1.2.1";
  by-version."bindings"."1.2.1" = self.buildNodePackage {
    name = "bindings-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bindings/-/bindings-1.2.1.tgz";
      name = "bindings-1.2.1.tgz";
      sha1 = "14ad6113812d2d37d72e67b4cacb4bb726505f11";
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
    self.by-version."bl"."0.9.4";
  by-version."bl"."0.9.4" = self.buildNodePackage {
    name = "bl-0.9.4";
    version = "0.9.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bl/-/bl-0.9.4.tgz";
      name = "bl-0.9.4.tgz";
      sha1 = "4702ddf72fbe0ecd82787c00c113aea1935ad0e7";
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
    self.by-version."bl"."1.0.0";
  by-version."bl"."1.0.0" = self.buildNodePackage {
    name = "bl-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bl/-/bl-1.0.0.tgz";
      name = "bl-1.0.0.tgz";
      sha1 = "ada9a8a89a6d7ac60862f7dec7db207873e0c3f5";
    };
    deps = {
      "readable-stream-2.0.2" = self.by-version."readable-stream"."2.0.2";
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
  by-spec."bluebird"."^2.9.33" =
    self.by-version."bluebird"."2.10.2";
  by-spec."bluebird"."^2.9.34" =
    self.by-version."bluebird"."2.10.2";
  by-spec."blueimp-tmpl"."^2.5.4" =
    self.by-version."blueimp-tmpl"."2.5.5";
  by-version."blueimp-tmpl"."2.5.5" = self.buildNodePackage {
    name = "blueimp-tmpl-2.5.5";
    version = "2.5.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/blueimp-tmpl/-/blueimp-tmpl-2.5.5.tgz";
      name = "blueimp-tmpl-2.5.5.tgz";
      sha1 = "187a1bfeb1c60fcb8aa2b849321f0aeed691d6d6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bn.js"."^2.0.0" =
    self.by-version."bn.js"."2.2.0";
  by-version."bn.js"."2.2.0" = self.buildNodePackage {
    name = "bn.js-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bn.js/-/bn.js-2.2.0.tgz";
      name = "bn.js-2.2.0.tgz";
      sha1 = "12162bc2ae71fc40a5626c33438f3a875cd37625";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bn.js"."^2.0.3" =
    self.by-version."bn.js"."2.2.0";
  by-spec."body-parser"."^1.12.4" =
    self.by-version."body-parser"."1.14.1";
  by-version."body-parser"."1.14.1" = self.buildNodePackage {
    name = "body-parser-1.14.1";
    version = "1.14.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/body-parser/-/body-parser-1.14.1.tgz";
      name = "body-parser-1.14.1.tgz";
      sha1 = "ffe921eba3ce8f191e2a8a8803844bd025f3c6dc";
    };
    deps = {
      "bytes-2.1.0" = self.by-version."bytes"."2.1.0";
      "content-type-1.0.1" = self.by-version."content-type"."1.0.1";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "iconv-lite-0.4.12" = self.by-version."iconv-lite"."0.4.12";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "qs-5.1.0" = self.by-version."qs"."5.1.0";
      "raw-body-2.1.4" = self.by-version."raw-body"."2.1.4";
      "type-is-1.6.9" = self.by-version."type-is"."1.6.9";
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
    self.by-version."boom"."2.9.0";
  by-version."boom"."2.9.0" = self.buildNodePackage {
    name = "boom-2.9.0";
    version = "2.9.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/boom/-/boom-2.9.0.tgz";
      name = "boom-2.9.0.tgz";
      sha1 = "a54b7fd2fee477d351bf9e371680cbea67f12715";
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
  by-spec."boom"."^2.8.x" =
    self.by-version."boom"."2.9.0";
  by-spec."brace-expansion"."^1.0.0" =
    self.by-version."brace-expansion"."1.1.1";
  by-version."brace-expansion"."1.1.1" = self.buildNodePackage {
    name = "brace-expansion-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.1.tgz";
      name = "brace-expansion-1.1.1.tgz";
      sha1 = "da5fb78aef4c44c9e4acf525064fb3208ebab045";
    };
    deps = {
      "balanced-match-0.2.0" = self.by-version."balanced-match"."0.2.0";
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
  by-spec."braces"."^1.8.0" =
    self.by-version."braces"."1.8.2";
  by-version."braces"."1.8.2" = self.buildNodePackage {
    name = "braces-1.8.2";
    version = "1.8.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/braces/-/braces-1.8.2.tgz";
      name = "braces-1.8.2.tgz";
      sha1 = "036e024051d4bbc7096428b4d6f20ea1f137a794";
    };
    deps = {
      "expand-range-1.8.1" = self.by-version."expand-range"."1.8.1";
      "lazy-cache-0.2.3" = self.by-version."lazy-cache"."0.2.3";
      "preserve-0.2.0" = self.by-version."preserve"."0.2.0";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."breakable"."~1.0.0" =
    self.by-version."breakable"."1.0.0";
  by-version."breakable"."1.0.0" = self.buildNodePackage {
    name = "breakable-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/breakable/-/breakable-1.0.0.tgz";
      name = "breakable-1.0.0.tgz";
      sha1 = "784a797915a38ead27bad456b5572cb4bbaa78c1";
    };
    deps = {
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
      url = "http://registry.npmjs.org/brorand/-/brorand-1.0.5.tgz";
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
  by-spec."browser-pack"."^3.2.0" =
    self.by-version."browser-pack"."3.2.0";
  by-version."browser-pack"."3.2.0" = self.buildNodePackage {
    name = "browser-pack-3.2.0";
    version = "3.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/browser-pack/-/browser-pack-3.2.0.tgz";
      name = "browser-pack-3.2.0.tgz";
      sha1 = "faa1cbc41487b1acc4747e373e1148adffd0e2d9";
    };
    deps = {
      "JSONStream-0.8.4" = self.by-version."JSONStream"."0.8.4";
      "combine-source-map-0.3.0" = self.by-version."combine-source-map"."0.3.0";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "defined-0.0.0" = self.by-version."defined"."0.0.0";
      "through2-0.5.1" = self.by-version."through2"."0.5.1";
      "umd-2.1.0" = self.by-version."umd"."2.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-resolve"."^1.3.0" =
    self.by-version."browser-resolve"."1.10.0";
  by-version."browser-resolve"."1.10.0" = self.buildNodePackage {
    name = "browser-resolve-1.10.0";
    version = "1.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browser-resolve/-/browser-resolve-1.10.0.tgz";
      name = "browser-resolve-1.10.0.tgz";
      sha1 = "2b4e4e3d37941eb855e07abca2f31a02fdaaed36";
    };
    deps = {
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-resolve"."^1.7.0" =
    self.by-version."browser-resolve"."1.10.0";
  by-spec."browserify"."~8.1.0" =
    self.by-version."browserify"."8.1.3";
  by-version."browserify"."8.1.3" = self.buildNodePackage {
    name = "browserify-8.1.3";
    version = "8.1.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify/-/browserify-8.1.3.tgz";
      name = "browserify-8.1.3.tgz";
      sha1 = "f33a549a3a6c368219b075fdcfe6df195e049a9a";
    };
    deps = {
      "JSONStream-0.8.4" = self.by-version."JSONStream"."0.8.4";
      "assert-1.3.0" = self.by-version."assert"."1.3.0";
      "browser-pack-3.2.0" = self.by-version."browser-pack"."3.2.0";
      "browser-resolve-1.10.0" = self.by-version."browser-resolve"."1.10.0";
      "browserify-zlib-0.1.4" = self.by-version."browserify-zlib"."0.1.4";
      "buffer-3.5.1" = self.by-version."buffer"."3.5.1";
      "builtins-0.0.7" = self.by-version."builtins"."0.0.7";
      "commondir-0.0.1" = self.by-version."commondir"."0.0.1";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-0.0.1" = self.by-version."constants-browserify"."0.0.1";
      "crypto-browserify-3.10.0" = self.by-version."crypto-browserify"."3.10.0";
      "deep-equal-0.2.2" = self.by-version."deep-equal"."0.2.2";
      "defined-0.0.0" = self.by-version."defined"."0.0.0";
      "deps-sort-1.3.9" = self.by-version."deps-sort"."1.3.9";
      "domain-browser-1.1.4" = self.by-version."domain-browser"."1.1.4";
      "duplexer2-0.0.2" = self.by-version."duplexer2"."0.0.2";
      "events-1.0.2" = self.by-version."events"."1.0.2";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "http-browserify-1.7.0" = self.by-version."http-browserify"."1.7.0";
      "https-browserify-0.0.1" = self.by-version."https-browserify"."0.0.1";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "insert-module-globals-6.6.3" = self.by-version."insert-module-globals"."6.6.3";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "labeled-stream-splicer-1.0.2" = self.by-version."labeled-stream-splicer"."1.0.2";
      "module-deps-3.9.1" = self.by-version."module-deps"."3.9.1";
      "os-browserify-0.1.2" = self.by-version."os-browserify"."0.1.2";
      "parents-1.0.1" = self.by-version."parents"."1.0.1";
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "process-0.10.1" = self.by-version."process"."0.10.1";
      "punycode-1.2.4" = self.by-version."punycode"."1.2.4";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "resolve-0.7.4" = self.by-version."resolve"."0.7.4";
      "shallow-copy-0.0.1" = self.by-version."shallow-copy"."0.0.1";
      "shasum-1.0.2" = self.by-version."shasum"."1.0.2";
      "shell-quote-0.0.1" = self.by-version."shell-quote"."0.0.1";
      "stream-browserify-1.0.0" = self.by-version."stream-browserify"."1.0.0";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "syntax-error-1.1.4" = self.by-version."syntax-error"."1.1.4";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
      "timers-browserify-1.4.1" = self.by-version."timers-browserify"."1.4.1";
      "tty-browserify-0.0.0" = self.by-version."tty-browserify"."0.0.0";
      "umd-2.1.0" = self.by-version."umd"."2.1.0";
      "url-0.10.3" = self.by-version."url"."0.10.3";
      "util-0.10.3" = self.by-version."util"."0.10.3";
      "vm-browserify-0.0.4" = self.by-version."vm-browserify"."0.0.4";
      "xtend-3.0.0" = self.by-version."xtend"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-aes"."^1.0.0" =
    self.by-version."browserify-aes"."1.0.5";
  by-version."browserify-aes"."1.0.5" = self.buildNodePackage {
    name = "browserify-aes-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-aes/-/browserify-aes-1.0.5.tgz";
      name = "browserify-aes-1.0.5.tgz";
      sha1 = "447e7e4671fceb575f6bb16c7f31a20924f0c303";
    };
    deps = {
      "buffer-xor-1.0.3" = self.by-version."buffer-xor"."1.0.3";
      "cipher-base-1.0.1" = self.by-version."cipher-base"."1.0.1";
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
    self.by-version."browserify-aes"."1.0.5";
  by-spec."browserify-cipher"."^1.0.0" =
    self.by-version."browserify-cipher"."1.0.0";
  by-version."browserify-cipher"."1.0.0" = self.buildNodePackage {
    name = "browserify-cipher-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-cipher/-/browserify-cipher-1.0.0.tgz";
      name = "browserify-cipher-1.0.0.tgz";
      sha1 = "9988244874bf5ed4e28da95666dcd66ac8fc363a";
    };
    deps = {
      "browserify-aes-1.0.5" = self.by-version."browserify-aes"."1.0.5";
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
      url = "http://registry.npmjs.org/browserify-des/-/browserify-des-1.0.0.tgz";
      name = "browserify-des-1.0.0.tgz";
      sha1 = "daa277717470922ed2fe18594118a175439721dd";
    };
    deps = {
      "cipher-base-1.0.1" = self.by-version."cipher-base"."1.0.1";
      "des.js-1.0.0" = self.by-version."des.js"."1.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-rsa"."^2.0.0" =
    self.by-version."browserify-rsa"."2.0.1";
  by-version."browserify-rsa"."2.0.1" = self.buildNodePackage {
    name = "browserify-rsa-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-rsa/-/browserify-rsa-2.0.1.tgz";
      name = "browserify-rsa-2.0.1.tgz";
      sha1 = "9e6ec3e5bca3fdd11c9a93c14d2bb146470083bc";
    };
    deps = {
      "bn.js-2.2.0" = self.by-version."bn.js"."2.2.0";
      "randombytes-2.0.1" = self.by-version."randombytes"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-sign"."^3.0.1" =
    self.by-version."browserify-sign"."3.0.8";
  by-version."browserify-sign"."3.0.8" = self.buildNodePackage {
    name = "browserify-sign-3.0.8";
    version = "3.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserify-sign/-/browserify-sign-3.0.8.tgz";
      name = "browserify-sign-3.0.8.tgz";
      sha1 = "a5cc9a2f84005ddc37775b7c56bdabd987e69025";
    };
    deps = {
      "bn.js-2.2.0" = self.by-version."bn.js"."2.2.0";
      "browserify-rsa-2.0.1" = self.by-version."browserify-rsa"."2.0.1";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "create-hmac-1.1.4" = self.by-version."create-hmac"."1.1.4";
      "elliptic-3.1.0" = self.by-version."elliptic"."3.1.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "parse-asn1-3.0.2" = self.by-version."parse-asn1"."3.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browserify-zlib"."~0.1.2" =
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
  by-spec."browserify-zlib"."~0.1.4" =
    self.by-version."browserify-zlib"."0.1.4";
  by-spec."browserslist"."~1.0.0" =
    self.by-version."browserslist"."1.0.1";
  by-version."browserslist"."1.0.1" = self.buildNodePackage {
    name = "browserslist-1.0.1";
    version = "1.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/browserslist/-/browserslist-1.0.1.tgz";
      name = "browserslist-1.0.1.tgz";
      sha1 = "ef0dd708318cdf74325faeea59efec84d9464717";
    };
    deps = {
      "caniuse-db-1.0.30000348" = self.by-version."caniuse-db"."1.0.30000348";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer"."^3.0.0" =
    self.by-version."buffer"."3.5.1";
  by-version."buffer"."3.5.1" = self.buildNodePackage {
    name = "buffer-3.5.1";
    version = "3.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffer/-/buffer-3.5.1.tgz";
      name = "buffer-3.5.1.tgz";
      sha1 = "0549d54138f82c0fbef643307e654052ec987fe0";
    };
    deps = {
      "base64-js-0.0.8" = self.by-version."base64-js"."0.0.8";
      "ieee754-1.1.6" = self.by-version."ieee754"."1.1.6";
      "is-array-1.0.1" = self.by-version."is-array"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer"."^3.0.3" =
    self.by-version."buffer"."3.5.1";
  by-spec."buffer-xor"."^1.0.2" =
    self.by-version."buffer-xor"."1.0.3";
  by-version."buffer-xor"."1.0.3" = self.buildNodePackage {
    name = "buffer-xor-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffer-xor/-/buffer-xor-1.0.3.tgz";
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
  by-spec."bufferutil"."1.2.x" =
    self.by-version."bufferutil"."1.2.1";
  by-version."bufferutil"."1.2.1" = self.buildNodePackage {
    name = "bufferutil-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bufferutil/-/bufferutil-1.2.1.tgz";
      name = "bufferutil-1.2.1.tgz";
      sha1 = "37be5d36e1e06492221e68d474b1ac58e510cbd7";
    };
    deps = {
      "bindings-1.2.1" = self.by-version."bindings"."1.2.1";
      "nan-2.1.0" = self.by-version."nan"."2.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."builtin-modules"."^1.0.0" =
    self.by-version."builtin-modules"."1.1.0";
  by-version."builtin-modules"."1.1.0" = self.buildNodePackage {
    name = "builtin-modules-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/builtin-modules/-/builtin-modules-1.1.0.tgz";
      name = "builtin-modules-1.1.0.tgz";
      sha1 = "1053955fd994a5746e525e4ac717b81caf07491c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."builtins"."~0.0.3" =
    self.by-version."builtins"."0.0.7";
  by-version."builtins"."0.0.7" = self.buildNodePackage {
    name = "builtins-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/builtins/-/builtins-0.0.7.tgz";
      name = "builtins-0.0.7.tgz";
      sha1 = "355219cd6cf18dbe7c01cc7fd2dce765cfdc549a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bytes"."2.1.0" =
    self.by-version."bytes"."2.1.0";
  by-version."bytes"."2.1.0" = self.buildNodePackage {
    name = "bytes-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bytes/-/bytes-2.1.0.tgz";
      name = "bytes-2.1.0.tgz";
      sha1 = "ac93c410e2ffc9cc7cf4b464b38289067f5e47b4";
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
  by-spec."callsite"."~1.0.0" =
    self.by-version."callsite"."1.0.0";
  by-spec."camel-case"."^1.1.1" =
    self.by-version."camel-case"."1.1.2";
  by-version."camel-case"."1.1.2" = self.buildNodePackage {
    name = "camel-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camel-case/-/camel-case-1.1.2.tgz";
      name = "camel-case-1.1.2.tgz";
      sha1 = "6129245add2f3f0cb352933e727b0ca8c76bf8bf";
    };
    deps = {
      "sentence-case-1.1.2" = self.by-version."sentence-case"."1.1.2";
      "upper-case-1.1.2" = self.by-version."upper-case"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."camelcase"."^1.0.1" =
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
  by-spec."camelcase"."^1.0.2" =
    self.by-version."camelcase"."1.2.1";
  by-spec."camelcase"."^1.2.1" =
    self.by-version."camelcase"."1.2.1";
  by-spec."camelcase-keys"."^1.0.0" =
    self.by-version."camelcase-keys"."1.0.0";
  by-version."camelcase-keys"."1.0.0" = self.buildNodePackage {
    name = "camelcase-keys-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camelcase-keys/-/camelcase-keys-1.0.0.tgz";
      name = "camelcase-keys-1.0.0.tgz";
      sha1 = "bd1a11bf9b31a1ce493493a930de1a0baf4ad7ec";
    };
    deps = {
      "camelcase-1.2.1" = self.by-version."camelcase"."1.2.1";
      "map-obj-1.0.1" = self.by-version."map-obj"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caniuse-db"."^1.0.30000313" =
    self.by-version."caniuse-db"."1.0.30000348";
  by-version."caniuse-db"."1.0.30000348" = self.buildNodePackage {
    name = "caniuse-db-1.0.30000348";
    version = "1.0.30000348";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/caniuse-db/-/caniuse-db-1.0.30000348.tgz";
      name = "caniuse-db-1.0.30000348.tgz";
      sha1 = "dc23f2dcd766e29c62f1dbc31bd89c6b974b1a7f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caniuse-db"."^1.0.30000335" =
    self.by-version."caniuse-db"."1.0.30000348";
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
    self.by-version."center-align"."0.1.1";
  by-version."center-align"."0.1.1" = self.buildNodePackage {
    name = "center-align-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/center-align/-/center-align-0.1.1.tgz";
      name = "center-align-0.1.1.tgz";
      sha1 = "54d204bfa61b3fefb786cfd8482f7c4e090231cd";
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
  by-spec."chai"."*" =
    self.by-version."chai"."3.3.0";
  by-version."chai"."3.3.0" = self.buildNodePackage {
    name = "chai-3.3.0";
    version = "3.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chai/-/chai-3.3.0.tgz";
      name = "chai-3.3.0.tgz";
      sha1 = "ffc291674da551e589077d6627384acabca2e02c";
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
  by-spec."chai"."^3.2.0" =
    self.by-version."chai"."3.3.0";
  "chai" = self.by-version."chai"."3.3.0";
  by-spec."chalk"."1.1.0" =
    self.by-version."chalk"."1.1.0";
  by-version."chalk"."1.1.0" = self.buildNodePackage {
    name = "chalk-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-1.1.0.tgz";
      name = "chalk-1.1.0.tgz";
      sha1 = "09b453cec497a75520e4a60ae48214a8700e0921";
    };
    deps = {
      "ansi-styles-2.1.0" = self.by-version."ansi-styles"."2.1.0";
      "escape-string-regexp-1.0.3" = self.by-version."escape-string-regexp"."1.0.3";
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
  by-spec."chalk"."^1.0.0" =
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
      "escape-string-regexp-1.0.3" = self.by-version."escape-string-regexp"."1.0.3";
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
    self.by-version."change-case"."2.3.0";
  by-version."change-case"."2.3.0" = self.buildNodePackage {
    name = "change-case-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/change-case/-/change-case-2.3.0.tgz";
      name = "change-case-2.3.0.tgz";
      sha1 = "3d7c04e89dfe8119831ebf859c9e39558235a855";
    };
    deps = {
      "camel-case-1.1.2" = self.by-version."camel-case"."1.1.2";
      "constant-case-1.1.1" = self.by-version."constant-case"."1.1.1";
      "dot-case-1.1.1" = self.by-version."dot-case"."1.1.1";
      "is-lower-case-1.1.1" = self.by-version."is-lower-case"."1.1.1";
      "is-upper-case-1.1.1" = self.by-version."is-upper-case"."1.1.1";
      "lower-case-1.1.2" = self.by-version."lower-case"."1.1.2";
      "lower-case-first-1.0.0" = self.by-version."lower-case-first"."1.0.0";
      "param-case-1.1.1" = self.by-version."param-case"."1.1.1";
      "pascal-case-1.1.1" = self.by-version."pascal-case"."1.1.1";
      "path-case-1.1.1" = self.by-version."path-case"."1.1.1";
      "sentence-case-1.1.2" = self.by-version."sentence-case"."1.1.2";
      "snake-case-1.1.1" = self.by-version."snake-case"."1.1.1";
      "swap-case-1.1.1" = self.by-version."swap-case"."1.1.1";
      "title-case-1.1.1" = self.by-version."title-case"."1.1.1";
      "upper-case-1.1.2" = self.by-version."upper-case"."1.1.2";
      "upper-case-first-1.1.1" = self.by-version."upper-case-first"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chokidar"."^1.0.0" =
    self.by-version."chokidar"."1.2.0";
  by-version."chokidar"."1.2.0" = self.buildNodePackage {
    name = "chokidar-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chokidar/-/chokidar-1.2.0.tgz";
      name = "chokidar-1.2.0.tgz";
      sha1 = "d7cc02d05e94092ddfacad488ebebe588ff2ff30";
    };
    deps = {
      "anymatch-1.3.0" = self.by-version."anymatch"."1.3.0";
      "arrify-1.0.0" = self.by-version."arrify"."1.0.0";
      "async-each-0.1.6" = self.by-version."async-each"."0.1.6";
      "glob-parent-2.0.0" = self.by-version."glob-parent"."2.0.0";
      "is-binary-path-1.0.1" = self.by-version."is-binary-path"."1.0.1";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "lodash.flatten-3.0.2" = self.by-version."lodash.flatten"."3.0.2";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "readdirp-2.0.0" = self.by-version."readdirp"."2.0.0";
    };
    optionalDependencies = {
      "fsevents-1.0.2" = self.by-version."fsevents"."1.0.2";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chokidar"."^1.0.1" =
    self.by-version."chokidar"."1.2.0";
  by-spec."cipher-base"."^1.0.0" =
    self.by-version."cipher-base"."1.0.1";
  by-version."cipher-base"."1.0.1" = self.buildNodePackage {
    name = "cipher-base-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cipher-base/-/cipher-base-1.0.1.tgz";
      name = "cipher-base-1.0.1.tgz";
      sha1 = "b714888e810519106b3b039948e4fc9e2718c563";
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
    self.by-version."cipher-base"."1.0.1";
  by-spec."clean-css"."3.1.x" =
    self.by-version."clean-css"."3.1.9";
  by-version."clean-css"."3.1.9" = self.buildNodePackage {
    name = "clean-css-3.1.9";
    version = "3.1.9";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/clean-css/-/clean-css-3.1.9.tgz";
      name = "clean-css-3.1.9.tgz";
      sha1 = "dbd05a148be4943bb37ce0679e676cbc9f580266";
    };
    deps = {
      "commander-2.6.0" = self.by-version."commander"."2.6.0";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cli"."0.6.x" =
    self.by-version."cli"."0.6.6";
  by-version."cli"."0.6.6" = self.buildNodePackage {
    name = "cli-0.6.6";
    version = "0.6.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cli/-/cli-0.6.6.tgz";
      name = "cli-0.6.6.tgz";
      sha1 = "02ad44a380abf27adac5e6f0cdd7b043d74c53e3";
    };
    deps = {
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
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
      "center-align-0.1.1" = self.by-version."center-align"."0.1.1";
      "right-align-0.1.3" = self.by-version."right-align"."0.1.3";
      "wordwrap-0.0.2" = self.by-version."wordwrap"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cliui"."^3.0.2" =
    self.by-version."cliui"."3.0.2";
  by-version."cliui"."3.0.2" = self.buildNodePackage {
    name = "cliui-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cliui/-/cliui-3.0.2.tgz";
      name = "cliui-3.0.2.tgz";
      sha1 = "221d5871727c4db19440ddcfabc7a0a3ed1c16a6";
    };
    deps = {
      "string-width-1.0.1" = self.by-version."string-width"."1.0.1";
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
      "loader-utils-0.2.11" = self.by-version."loader-utils"."0.2.11";
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
  by-spec."coffee-script"."^1.8.0" =
    self.by-version."coffee-script"."1.10.0";
  by-spec."coffee-script"."^1.9.1" =
    self.by-version."coffee-script"."1.10.0";
  by-spec."coffeeify"."~1.0.0" =
    self.by-version."coffeeify"."1.0.0";
  by-version."coffeeify"."1.0.0" = self.buildNodePackage {
    name = "coffeeify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/coffeeify/-/coffeeify-1.0.0.tgz";
      name = "coffeeify-1.0.0.tgz";
      sha1 = "ec38c7f56d45fb180b9d28e65c7e5d1009b11635";
    };
    deps = {
      "coffee-script-1.10.0" = self.by-version."coffee-script"."1.10.0";
      "convert-source-map-0.4.1" = self.by-version."convert-source-map"."0.4.1";
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."coffeelint"."^1.12.1" =
    self.by-version."coffeelint"."1.13.0";
  by-version."coffeelint"."1.13.0" = self.buildNodePackage {
    name = "coffeelint-1.13.0";
    version = "1.13.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/coffeelint/-/coffeelint-1.13.0.tgz";
      name = "coffeelint-1.13.0.tgz";
      sha1 = "d6784b84b5b5370d2700d0fbb652494db6ede295";
    };
    deps = {
      "browserify-8.1.3" = self.by-version."browserify"."8.1.3";
      "coffee-script-1.10.0" = self.by-version."coffee-script"."1.10.0";
      "coffeeify-1.0.0" = self.by-version."coffeeify"."1.0.0";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "ignore-2.2.18" = self.by-version."ignore"."2.2.18";
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
  "coffeelint" = self.by-version."coffeelint"."1.13.0";
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
  by-spec."colr-convert"."^1.0.5" =
    self.by-version."colr-convert"."1.0.5";
  by-version."colr-convert"."1.0.5" = self.buildNodePackage {
    name = "colr-convert-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/colr-convert/-/colr-convert-1.0.5.tgz";
      name = "colr-convert-1.0.5.tgz";
      sha1 = "b4a22c9322dfa238d2a80aa90736c11271841b71";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combine-source-map"."~0.3.0" =
    self.by-version."combine-source-map"."0.3.0";
  by-version."combine-source-map"."0.3.0" = self.buildNodePackage {
    name = "combine-source-map-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combine-source-map/-/combine-source-map-0.3.0.tgz";
      name = "combine-source-map-0.3.0.tgz";
      sha1 = "d9e74f593d9cd43807312cb5d846d451efaa9eb7";
    };
    deps = {
      "inline-source-map-0.3.1" = self.by-version."inline-source-map"."0.3.1";
      "convert-source-map-0.3.5" = self.by-version."convert-source-map"."0.3.5";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combine-source-map"."~0.6.1" =
    self.by-version."combine-source-map"."0.6.1";
  by-version."combine-source-map"."0.6.1" = self.buildNodePackage {
    name = "combine-source-map-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combine-source-map/-/combine-source-map-0.6.1.tgz";
      name = "combine-source-map-0.6.1.tgz";
      sha1 = "9b4a09c316033d768e0f11e029fa2730e079ad96";
    };
    deps = {
      "convert-source-map-1.1.1" = self.by-version."convert-source-map"."1.1.1";
      "inline-source-map-0.5.0" = self.by-version."inline-source-map"."0.5.0";
      "lodash.memoize-3.0.4" = self.by-version."lodash.memoize"."3.0.4";
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."commander"."2.6.x" =
    self.by-version."commander"."2.6.0";
  by-version."commander"."2.6.0" = self.buildNodePackage {
    name = "commander-2.6.0";
    version = "2.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.6.0.tgz";
      name = "commander-2.6.0.tgz";
      sha1 = "9df7e52fb2a0cb0fb89058ee80c3104225f37e1d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commander"."^2.8.1" =
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
  by-spec."commander"."~2.5.0" =
    self.by-version."commander"."2.5.1";
  by-version."commander"."2.5.1" = self.buildNodePackage {
    name = "commander-2.5.1";
    version = "2.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.5.1.tgz";
      name = "commander-2.5.1.tgz";
      sha1 = "23c61f6e47be143cc02e7ad4bb1c47f5cd5a2883";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commondir"."0.0.1" =
    self.by-version."commondir"."0.0.1";
  by-version."commondir"."0.0.1" = self.buildNodePackage {
    name = "commondir-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commondir/-/commondir-0.0.1.tgz";
      name = "commondir-0.0.1.tgz";
      sha1 = "89f00fdcd51b519c578733fec563e6a6da7f5be2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commoner"."~0.10.0" =
    self.by-version."commoner"."0.10.3";
  by-version."commoner"."0.10.3" = self.buildNodePackage {
    name = "commoner-0.10.3";
    version = "0.10.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/commoner/-/commoner-0.10.3.tgz";
      name = "commoner-0.10.3.tgz";
      sha1 = "8d407fbca042d1258672998a206ec1d525c92b2a";
    };
    deps = {
      "q-1.1.2" = self.by-version."q"."1.1.2";
      "recast-0.10.33" = self.by-version."recast"."0.10.33";
      "commander-2.5.1" = self.by-version."commander"."2.5.1";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "glob-4.2.2" = self.by-version."glob"."4.2.2";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "private-0.1.6" = self.by-version."private"."0.1.6";
      "install-0.1.8" = self.by-version."install"."0.1.8";
      "iconv-lite-0.4.13" = self.by-version."iconv-lite"."0.4.13";
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
  by-spec."compressible"."~2.0.6" =
    self.by-version."compressible"."2.0.6";
  by-version."compressible"."2.0.6" = self.buildNodePackage {
    name = "compressible-2.0.6";
    version = "2.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/compressible/-/compressible-2.0.6.tgz";
      name = "compressible-2.0.6.tgz";
      sha1 = "9e4aa9321ffcf9cc4d81954f7aafa9f35767d5ea";
    };
    deps = {
      "mime-db-1.19.0" = self.by-version."mime-db"."1.19.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."compression"."^1.5.2" =
    self.by-version."compression"."1.6.0";
  by-version."compression"."1.6.0" = self.buildNodePackage {
    name = "compression-1.6.0";
    version = "1.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/compression/-/compression-1.6.0.tgz";
      name = "compression-1.6.0.tgz";
      sha1 = "886465ffa4a19f9b73b41682db77d28179b30920";
    };
    deps = {
      "accepts-1.3.0" = self.by-version."accepts"."1.3.0";
      "bytes-2.1.0" = self.by-version."bytes"."2.1.0";
      "compressible-2.0.6" = self.by-version."compressible"."2.0.6";
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
  by-spec."concat-stream"."1.4.x" =
    self.by-version."concat-stream"."1.4.10";
  by-version."concat-stream"."1.4.10" = self.buildNodePackage {
    name = "concat-stream-1.4.10";
    version = "1.4.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-stream/-/concat-stream-1.4.10.tgz";
      name = "concat-stream-1.4.10.tgz";
      sha1 = "acc3bbf5602cb8cc980c6ac840fa7d8603e3ef36";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "typedarray-0.0.6" = self.by-version."typedarray"."0.0.6";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-stream"."^1.4.7" =
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
      "readable-stream-2.0.2" = self.by-version."readable-stream"."2.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-stream"."~1.4.1" =
    self.by-version."concat-stream"."1.4.10";
  by-spec."concat-stream"."~1.4.5" =
    self.by-version."concat-stream"."1.4.10";
  by-spec."config-chain"."~1.1.8" =
    self.by-version."config-chain"."1.1.9";
  by-version."config-chain"."1.1.9" = self.buildNodePackage {
    name = "config-chain-1.1.9";
    version = "1.1.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/config-chain/-/config-chain-1.1.9.tgz";
      name = "config-chain-1.1.9.tgz";
      sha1 = "39ac7d4dca84faad926124c54cff25a53aa8bf6e";
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
    self.by-version."connect"."3.4.0";
  by-version."connect"."3.4.0" = self.buildNodePackage {
    name = "connect-3.4.0";
    version = "3.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect/-/connect-3.4.0.tgz";
      name = "connect-3.4.0.tgz";
      sha1 = "ee8789a3bd4604bfda39dbcf1d3bb482dfe6cf24";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "finalhandler-0.4.0" = self.by-version."finalhandler"."0.4.0";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
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
    self.by-version."constant-case"."1.1.1";
  by-version."constant-case"."1.1.1" = self.buildNodePackage {
    name = "constant-case-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/constant-case/-/constant-case-1.1.1.tgz";
      name = "constant-case-1.1.1.tgz";
      sha1 = "5798b36fb26dc26ec21e67f65473efadc4825cf6";
    };
    deps = {
      "snake-case-1.1.1" = self.by-version."snake-case"."1.1.1";
      "upper-case-1.1.2" = self.by-version."upper-case"."1.1.2";
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
  by-spec."constants-browserify"."~0.0.1" =
    self.by-version."constants-browserify"."0.0.1";
  by-spec."content-disposition"."0.5.0" =
    self.by-version."content-disposition"."0.5.0";
  by-version."content-disposition"."0.5.0" = self.buildNodePackage {
    name = "content-disposition-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/content-disposition/-/content-disposition-0.5.0.tgz";
      name = "content-disposition-0.5.0.tgz";
      sha1 = "4284fe6ae0630874639e44e80a418c2934135e9e";
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
  by-spec."convert-source-map"."^0.4.1" =
    self.by-version."convert-source-map"."0.4.1";
  by-version."convert-source-map"."0.4.1" = self.buildNodePackage {
    name = "convert-source-map-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/convert-source-map/-/convert-source-map-0.4.1.tgz";
      name = "convert-source-map-0.4.1.tgz";
      sha1 = "f919a0099fe31f80fc5a1d0eb303161b394070c7";
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
    self.by-version."convert-source-map"."1.1.1";
  by-version."convert-source-map"."1.1.1" = self.buildNodePackage {
    name = "convert-source-map-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/convert-source-map/-/convert-source-map-1.1.1.tgz";
      name = "convert-source-map-1.1.1.tgz";
      sha1 = "74e5182473058413b090dd73777acbc4a0fff3cc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."convert-source-map"."~0.3.0" =
    self.by-version."convert-source-map"."0.3.5";
  by-version."convert-source-map"."0.3.5" = self.buildNodePackage {
    name = "convert-source-map-0.3.5";
    version = "0.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/convert-source-map/-/convert-source-map-0.3.5.tgz";
      name = "convert-source-map-0.3.5.tgz";
      sha1 = "f1d802950af7dd2631a1febe0596550c86ab3190";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."convert-source-map"."~1.1.0" =
    self.by-version."convert-source-map"."1.1.1";
  by-spec."cookie"."0.1.3" =
    self.by-version."cookie"."0.1.3";
  by-version."cookie"."0.1.3" = self.buildNodePackage {
    name = "cookie-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie/-/cookie-0.1.3.tgz";
      name = "cookie-0.1.3.tgz";
      sha1 = "e734a5c1417fce472d5aef82c381cabb64d1a435";
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
  by-spec."cookiejar"."2.0.1" =
    self.by-version."cookiejar"."2.0.1";
  by-version."cookiejar"."2.0.1" = self.buildNodePackage {
    name = "cookiejar-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookiejar/-/cookiejar-2.0.1.tgz";
      name = "cookiejar-2.0.1.tgz";
      sha1 = "3d12752f6adf68a892f332433492bd5812bb668f";
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
    self.by-version."core-js"."1.2.2";
  by-version."core-js"."1.2.2" = self.buildNodePackage {
    name = "core-js-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-js/-/core-js-1.2.2.tgz";
      name = "core-js-1.2.2.tgz";
      sha1 = "f45eede52485579b6026c8a8628472b9f7960cae";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-js"."^1.0.1" =
    self.by-version."core-js"."1.2.2";
  by-spec."core-util-is"."~1.0.0" =
    self.by-version."core-util-is"."1.0.1";
  by-version."core-util-is"."1.0.1" = self.buildNodePackage {
    name = "core-util-is-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-util-is/-/core-util-is-1.0.1.tgz";
      name = "core-util-is-1.0.1.tgz";
      sha1 = "6b07085aef9a3ccac6ee53bf9d3df0c1521a5538";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."create-ecdh"."^2.0.0" =
    self.by-version."create-ecdh"."2.0.2";
  by-version."create-ecdh"."2.0.2" = self.buildNodePackage {
    name = "create-ecdh-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/create-ecdh/-/create-ecdh-2.0.2.tgz";
      name = "create-ecdh-2.0.2.tgz";
      sha1 = "5b0dc9e1241944a29973f8cd2ecf1ba0cadb6255";
    };
    deps = {
      "bn.js-2.2.0" = self.by-version."bn.js"."2.2.0";
      "elliptic-3.1.0" = self.by-version."elliptic"."3.1.0";
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
      url = "http://registry.npmjs.org/create-hash/-/create-hash-1.1.2.tgz";
      name = "create-hash-1.1.2.tgz";
      sha1 = "51210062d7bb7479f6c65bb41a92208b1d61abad";
    };
    deps = {
      "cipher-base-1.0.1" = self.by-version."cipher-base"."1.0.1";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "ripemd160-1.0.1" = self.by-version."ripemd160"."1.0.1";
      "sha.js-2.4.4" = self.by-version."sha.js"."2.4.4";
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
      url = "http://registry.npmjs.org/create-hmac/-/create-hmac-1.1.4.tgz";
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
  by-spec."cross-spawn"."^2.0.0" =
    self.by-version."cross-spawn"."2.0.0";
  by-version."cross-spawn"."2.0.0" = self.buildNodePackage {
    name = "cross-spawn-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cross-spawn/-/cross-spawn-2.0.0.tgz";
      name = "cross-spawn-2.0.0.tgz";
      sha1 = "32dc93907e8f80e39830aa3f0bd9f32538b3bcf1";
    };
    deps = {
      "cross-spawn-async-2.0.0" = self.by-version."cross-spawn-async"."2.0.0";
      "spawn-sync-1.0.13" = self.by-version."spawn-sync"."1.0.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cross-spawn-async"."^2.0.0" =
    self.by-version."cross-spawn-async"."2.0.0";
  by-version."cross-spawn-async"."2.0.0" = self.buildNodePackage {
    name = "cross-spawn-async-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cross-spawn-async/-/cross-spawn-async-2.0.0.tgz";
      name = "cross-spawn-async-2.0.0.tgz";
      sha1 = "4af143df4156900d012be41cabf4da3abfc797c0";
    };
    deps = {
      "lru-cache-2.7.0" = self.by-version."lru-cache"."2.7.0";
      "which-1.2.0" = self.by-version."which"."1.2.0";
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
      "boom-2.9.0" = self.by-version."boom"."2.9.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."crypto-browserify"."^3.0.0" =
    self.by-version."crypto-browserify"."3.10.0";
  by-version."crypto-browserify"."3.10.0" = self.buildNodePackage {
    name = "crypto-browserify-3.10.0";
    version = "3.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/crypto-browserify/-/crypto-browserify-3.10.0.tgz";
      name = "crypto-browserify-3.10.0.tgz";
      sha1 = "bfe70d7987b4abb8e551ea964307767c3b5d56bf";
    };
    deps = {
      "browserify-cipher-1.0.0" = self.by-version."browserify-cipher"."1.0.0";
      "browserify-sign-3.0.8" = self.by-version."browserify-sign"."3.0.8";
      "create-ecdh-2.0.2" = self.by-version."create-ecdh"."2.0.2";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "create-hmac-1.1.4" = self.by-version."create-hmac"."1.1.4";
      "diffie-hellman-3.0.2" = self.by-version."diffie-hellman"."3.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "pbkdf2-3.0.4" = self.by-version."pbkdf2"."3.0.4";
      "public-encrypt-2.0.1" = self.by-version."public-encrypt"."2.0.1";
      "randombytes-2.0.1" = self.by-version."randombytes"."2.0.1";
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
  by-spec."css-color-names"."0.0.2" =
    self.by-version."css-color-names"."0.0.2";
  by-version."css-color-names"."0.0.2" = self.buildNodePackage {
    name = "css-color-names-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/css-color-names/-/css-color-names-0.0.2.tgz";
      name = "css-color-names-0.0.2.tgz";
      sha1 = "fba18e8cff86579572d749c146c47ee83f0ea955";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."css-loader"."^0.19.0" =
    self.by-version."css-loader"."0.19.0";
  by-version."css-loader"."0.19.0" = self.buildNodePackage {
    name = "css-loader-0.19.0";
    version = "0.19.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/css-loader/-/css-loader-0.19.0.tgz";
      name = "css-loader-0.19.0.tgz";
      sha1 = "7383db6a20fcc42395bada4b8abc25c2735577b8";
    };
    deps = {
      "css-selector-tokenizer-0.5.4" = self.by-version."css-selector-tokenizer"."0.5.4";
      "cssnano-3.3.1" = self.by-version."cssnano"."3.3.1";
      "loader-utils-0.2.11" = self.by-version."loader-utils"."0.2.11";
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-modules-extract-imports-1.0.0-beta2" = self.by-version."postcss-modules-extract-imports"."1.0.0-beta2";
      "postcss-modules-local-by-default-1.0.0-beta1" = self.by-version."postcss-modules-local-by-default"."1.0.0-beta1";
      "postcss-modules-scope-1.0.0-beta2" = self.by-version."postcss-modules-scope"."1.0.0-beta2";
      "source-list-map-0.1.5" = self.by-version."source-list-map"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "css-loader" = self.by-version."css-loader"."0.19.0";
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
    self.by-version."cssnano"."3.3.1";
  by-version."cssnano"."3.3.1" = self.buildNodePackage {
    name = "cssnano-3.3.1";
    version = "3.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cssnano/-/cssnano-3.3.1.tgz";
      name = "cssnano-3.3.1.tgz";
      sha1 = "653b8fdb1825e43462918e82bff7eb2f474cc13c";
    };
    deps = {
      "autoprefixer-6.0.3" = self.by-version."autoprefixer"."6.0.3";
      "decamelize-1.0.0" = self.by-version."decamelize"."1.0.0";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "indexes-of-1.0.1" = self.by-version."indexes-of"."1.0.1";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-calc-5.0.0" = self.by-version."postcss-calc"."5.0.0";
      "postcss-colormin-2.1.7" = self.by-version."postcss-colormin"."2.1.7";
      "postcss-convert-values-2.3.4" = self.by-version."postcss-convert-values"."2.3.4";
      "postcss-discard-comments-2.0.2" = self.by-version."postcss-discard-comments"."2.0.2";
      "postcss-discard-duplicates-2.0.0" = self.by-version."postcss-discard-duplicates"."2.0.0";
      "postcss-discard-empty-2.0.0" = self.by-version."postcss-discard-empty"."2.0.0";
      "postcss-discard-unused-2.1.0" = self.by-version."postcss-discard-unused"."2.1.0";
      "postcss-filter-plugins-2.0.0" = self.by-version."postcss-filter-plugins"."2.0.0";
      "postcss-merge-idents-2.1.1" = self.by-version."postcss-merge-idents"."2.1.1";
      "postcss-merge-longhand-2.0.1" = self.by-version."postcss-merge-longhand"."2.0.1";
      "postcss-merge-rules-2.0.1" = self.by-version."postcss-merge-rules"."2.0.1";
      "postcss-minify-font-values-1.0.2" = self.by-version."postcss-minify-font-values"."1.0.2";
      "postcss-minify-params-1.0.4" = self.by-version."postcss-minify-params"."1.0.4";
      "postcss-minify-selectors-2.0.1" = self.by-version."postcss-minify-selectors"."2.0.1";
      "postcss-normalize-charset-1.1.0" = self.by-version."postcss-normalize-charset"."1.1.0";
      "postcss-normalize-url-3.0.3" = self.by-version."postcss-normalize-url"."3.0.3";
      "postcss-ordered-values-2.0.2" = self.by-version."postcss-ordered-values"."2.0.2";
      "postcss-reduce-idents-2.2.1" = self.by-version."postcss-reduce-idents"."2.2.1";
      "postcss-reduce-transforms-1.0.3" = self.by-version."postcss-reduce-transforms"."1.0.3";
      "postcss-svgo-2.0.4" = self.by-version."postcss-svgo"."2.0.4";
      "postcss-unique-selectors-2.0.1" = self.by-version."postcss-unique-selectors"."2.0.1";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
      "postcss-zindex-2.0.0" = self.by-version."postcss-zindex"."2.0.0";
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
  by-spec."debug"."1.0.2" =
    self.by-version."debug"."1.0.2";
  by-version."debug"."1.0.2" = self.buildNodePackage {
    name = "debug-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-1.0.2.tgz";
      name = "debug-1.0.2.tgz";
      sha1 = "3849591c10cce648476c3c7c2e2e3416db5963c4";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."1.0.3" =
    self.by-version."debug"."1.0.3";
  by-version."debug"."1.0.3" = self.buildNodePackage {
    name = "debug-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-1.0.3.tgz";
      name = "debug-1.0.3.tgz";
      sha1 = "fc8c6b2d6002804b4081c0208e0f6460ba1fa3e4";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."1.0.4" =
    self.by-version."debug"."1.0.4";
  by-version."debug"."1.0.4" = self.buildNodePackage {
    name = "debug-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-1.0.4.tgz";
      name = "debug-1.0.4.tgz";
      sha1 = "5b9c256bd54b6ec02283176fa8a0ede6d154cbf8";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."2" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."2.0.0" =
    self.by-version."debug"."2.0.0";
  by-version."debug"."2.0.0" = self.buildNodePackage {
    name = "debug-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.0.0.tgz";
      name = "debug-2.0.0.tgz";
      sha1 = "89bd9df6732b51256bc6705342bba02ed12131ef";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."2.1.0" =
    self.by-version."debug"."2.1.0";
  by-version."debug"."2.1.0" = self.buildNodePackage {
    name = "debug-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.1.0.tgz";
      name = "debug-2.1.0.tgz";
      sha1 = "33ab915659d8c2cc8a41443d94d6ebd37697ed21";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."^2.1.1" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."~0.7.2" =
    self.by-version."debug"."0.7.4";
  by-spec."debug"."~2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."decamelize"."^1.0.0" =
    self.by-version."decamelize"."1.0.0";
  by-version."decamelize"."1.0.0" = self.buildNodePackage {
    name = "decamelize-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/decamelize/-/decamelize-1.0.0.tgz";
      name = "decamelize-1.0.0.tgz";
      sha1 = "5287122f71691d4505b18ff2258dc400a5b23847";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."deep-equal"."~0.2.1" =
    self.by-version."deep-equal"."0.2.2";
  by-version."deep-equal"."0.2.2" = self.buildNodePackage {
    name = "deep-equal-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-equal/-/deep-equal-0.2.2.tgz";
      name = "deep-equal-0.2.2.tgz";
      sha1 = "84b745896f34c684e98f2ce0e42abaf43bba017d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deep-extend"."~0.2.5" =
    self.by-version."deep-extend"."0.2.11";
  by-version."deep-extend"."0.2.11" = self.buildNodePackage {
    name = "deep-extend-0.2.11";
    version = "0.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-extend/-/deep-extend-0.2.11.tgz";
      name = "deep-extend-0.2.11.tgz";
      sha1 = "7a16ba69729132340506170494bc83f7076fe08f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deep-is"."~0.1.2" =
    self.by-version."deep-is"."0.1.3";
  by-version."deep-is"."0.1.3" = self.buildNodePackage {
    name = "deep-is-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-is/-/deep-is-0.1.3.tgz";
      name = "deep-is-0.1.3.tgz";
      sha1 = "b369d6fb5dbc13eecf524f91b070feedc357cf34";
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
  by-spec."defined"."~0.0.0" =
    self.by-version."defined"."0.0.0";
  by-version."defined"."0.0.0" = self.buildNodePackage {
    name = "defined-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/defined/-/defined-0.0.0.tgz";
      name = "defined-0.0.0.tgz";
      sha1 = "f35eea7d705e933baf13b2f03b3f83d921403b3e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."defs"."~1.1.0" =
    self.by-version."defs"."1.1.1";
  by-version."defs"."1.1.1" = self.buildNodePackage {
    name = "defs-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/defs/-/defs-1.1.1.tgz";
      name = "defs-1.1.1.tgz";
      sha1 = "b22609f2c7a11ba7a3db116805c139b1caffa9d2";
    };
    deps = {
      "alter-0.2.0" = self.by-version."alter"."0.2.0";
      "ast-traverse-0.1.1" = self.by-version."ast-traverse"."0.1.1";
      "breakable-1.0.0" = self.by-version."breakable"."1.0.0";
      "esprima-fb-15001.1001.0-dev-harmony-fb" = self.by-version."esprima-fb"."15001.1001.0-dev-harmony-fb";
      "simple-fmt-0.1.0" = self.by-version."simple-fmt"."0.1.0";
      "simple-is-0.2.0" = self.by-version."simple-is"."0.2.0";
      "stringmap-0.2.2" = self.by-version."stringmap"."0.2.2";
      "stringset-0.2.1" = self.by-version."stringset"."0.2.1";
      "tryor-0.1.2" = self.by-version."tryor"."0.1.2";
      "yargs-3.27.0" = self.by-version."yargs"."3.27.0";
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
  by-spec."depd"."~1.0.1" =
    self.by-version."depd"."1.0.1";
  by-version."depd"."1.0.1" = self.buildNodePackage {
    name = "depd-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/depd/-/depd-1.0.1.tgz";
      name = "depd-1.0.1.tgz";
      sha1 = "80aec64c9d6d97e65cc2a9caa93c0aa6abf73aaa";
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
  by-spec."deps-sort"."^1.3.5" =
    self.by-version."deps-sort"."1.3.9";
  by-version."deps-sort"."1.3.9" = self.buildNodePackage {
    name = "deps-sort-1.3.9";
    version = "1.3.9";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/deps-sort/-/deps-sort-1.3.9.tgz";
      name = "deps-sort-1.3.9.tgz";
      sha1 = "29dfff53e17b36aecae7530adbbbf622c2ed1a71";
    };
    deps = {
      "JSONStream-1.0.6" = self.by-version."JSONStream"."1.0.6";
      "shasum-1.0.2" = self.by-version."shasum"."1.0.2";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
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
      url = "http://registry.npmjs.org/des.js/-/des.js-1.0.0.tgz";
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
  by-spec."destroy"."1.0.3" =
    self.by-version."destroy"."1.0.3";
  by-version."destroy"."1.0.3" = self.buildNodePackage {
    name = "destroy-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/destroy/-/destroy-1.0.3.tgz";
      name = "destroy-1.0.3.tgz";
      sha1 = "b433b4724e71fd8551d9885174851c5fc377e2c9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."detect-indent"."^3.0.0" =
    self.by-version."detect-indent"."3.0.1";
  by-version."detect-indent"."3.0.1" = self.buildNodePackage {
    name = "detect-indent-3.0.1";
    version = "3.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/detect-indent/-/detect-indent-3.0.1.tgz";
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
  by-spec."detective"."^4.0.0" =
    self.by-version."detective"."4.2.0";
  by-version."detective"."4.2.0" = self.buildNodePackage {
    name = "detective-4.2.0";
    version = "4.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/detective/-/detective-4.2.0.tgz";
      name = "detective-4.2.0.tgz";
      sha1 = "1617d85a5a526c0e6ed6e460b9daee84f72ce9b4";
    };
    deps = {
      "acorn-1.2.2" = self.by-version."acorn"."1.2.2";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "escodegen-1.7.0" = self.by-version."escodegen"."1.7.0";
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
  by-spec."diffie-hellman"."^3.0.1" =
    self.by-version."diffie-hellman"."3.0.2";
  by-version."diffie-hellman"."3.0.2" = self.buildNodePackage {
    name = "diffie-hellman-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/diffie-hellman/-/diffie-hellman-3.0.2.tgz";
      name = "diffie-hellman-3.0.2.tgz";
      sha1 = "2a565afb1e03589cd284c010d6ebf8077b2886d7";
    };
    deps = {
      "bn.js-2.2.0" = self.by-version."bn.js"."2.2.0";
      "miller-rabin-2.0.1" = self.by-version."miller-rabin"."2.0.1";
      "randombytes-2.0.1" = self.by-version."randombytes"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dom-serialize"."^2.2.0" =
    self.by-version."dom-serialize"."2.2.0";
  by-version."dom-serialize"."2.2.0" = self.buildNodePackage {
    name = "dom-serialize-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dom-serialize/-/dom-serialize-2.2.0.tgz";
      name = "dom-serialize-2.2.0.tgz";
      sha1 = "cc607ba627bd6104b89190da0978d58ba2e08471";
    };
    deps = {
      "custom-event-1.0.0" = self.by-version."custom-event"."1.0.0";
      "ent-2.2.0" = self.by-version."ent"."2.2.0";
      "extend-2.0.1" = self.by-version."extend"."2.0.1";
      "void-elements-1.0.0" = self.by-version."void-elements"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domain-browser"."^1.1.1" =
    self.by-version."domain-browser"."1.1.4";
  by-version."domain-browser"."1.1.4" = self.buildNodePackage {
    name = "domain-browser-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domain-browser/-/domain-browser-1.1.4.tgz";
      name = "domain-browser-1.1.4.tgz";
      sha1 = "90b42769333e909ce3f13bf3e1023ba4a6d6b723";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domain-browser"."~1.1.0" =
    self.by-version."domain-browser"."1.1.4";
  by-spec."dot-case"."^1.1.0" =
    self.by-version."dot-case"."1.1.1";
  by-version."dot-case"."1.1.1" = self.buildNodePackage {
    name = "dot-case-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dot-case/-/dot-case-1.1.1.tgz";
      name = "dot-case-1.1.1.tgz";
      sha1 = "9c183e7aa0fac8cdb71c55db78340aa805f01d71";
    };
    deps = {
      "sentence-case-1.1.2" = self.by-version."sentence-case"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."duplexer2"."0.0.2" =
    self.by-version."duplexer2"."0.0.2";
  by-version."duplexer2"."0.0.2" = self.buildNodePackage {
    name = "duplexer2-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/duplexer2/-/duplexer2-0.0.2.tgz";
      name = "duplexer2-0.0.2.tgz";
      sha1 = "c614dcf67e2fb14995a91711e5a617e8a60a31db";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."duplexer2"."~0.0.2" =
    self.by-version."duplexer2"."0.0.2";
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
  by-spec."elliptic"."^3.0.0" =
    self.by-version."elliptic"."3.1.0";
  by-version."elliptic"."3.1.0" = self.buildNodePackage {
    name = "elliptic-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/elliptic/-/elliptic-3.1.0.tgz";
      name = "elliptic-3.1.0.tgz";
      sha1 = "c21682ef762769b56a74201609105da11d5f60cc";
    };
    deps = {
      "bn.js-2.2.0" = self.by-version."bn.js"."2.2.0";
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
  by-spec."engine.io"."1.5.4" =
    self.by-version."engine.io"."1.5.4";
  by-version."engine.io"."1.5.4" = self.buildNodePackage {
    name = "engine.io-1.5.4";
    version = "1.5.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io/-/engine.io-1.5.4.tgz";
      name = "engine.io-1.5.4.tgz";
      sha1 = "c6141012911c350631c1b390f5324eb4202e29f2";
    };
    deps = {
      "base64id-0.1.0" = self.by-version."base64id"."0.1.0";
      "debug-1.0.3" = self.by-version."debug"."1.0.3";
      "engine.io-parser-1.2.2" = self.by-version."engine.io-parser"."1.2.2";
      "ws-0.8.0" = self.by-version."ws"."0.8.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."engine.io-client"."1.5.4" =
    self.by-version."engine.io-client"."1.5.4";
  by-version."engine.io-client"."1.5.4" = self.buildNodePackage {
    name = "engine.io-client-1.5.4";
    version = "1.5.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io-client/-/engine.io-client-1.5.4.tgz";
      name = "engine.io-client-1.5.4.tgz";
      sha1 = "c6ad65a65752a29cb930c6911e579d2b28d1106c";
    };
    deps = {
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "component-inherit-0.0.3" = self.by-version."component-inherit"."0.0.3";
      "debug-1.0.4" = self.by-version."debug"."1.0.4";
      "engine.io-parser-1.2.2" = self.by-version."engine.io-parser"."1.2.2";
      "has-cors-1.0.3" = self.by-version."has-cors"."1.0.3";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
      "parsejson-0.0.1" = self.by-version."parsejson"."0.0.1";
      "parseqs-0.0.2" = self.by-version."parseqs"."0.0.2";
      "parseuri-0.0.4" = self.by-version."parseuri"."0.0.4";
      "ws-0.8.0" = self.by-version."ws"."0.8.0";
      "xmlhttprequest-1.5.0" = self.by-version."xmlhttprequest"."1.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."engine.io-parser"."1.2.2" =
    self.by-version."engine.io-parser"."1.2.2";
  by-version."engine.io-parser"."1.2.2" = self.buildNodePackage {
    name = "engine.io-parser-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io-parser/-/engine.io-parser-1.2.2.tgz";
      name = "engine.io-parser-1.2.2.tgz";
      sha1 = "cd081041feea39c64323ff79b82a90a72afcccdd";
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
    self.by-version."enhanced-resolve"."0.9.0";
  by-version."enhanced-resolve"."0.9.0" = self.buildNodePackage {
    name = "enhanced-resolve-0.9.0";
    version = "0.9.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-0.9.0.tgz";
      name = "enhanced-resolve-0.9.0.tgz";
      sha1 = "2354591f240649669f830e33ec5c3f2e5d80d400";
    };
    deps = {
      "tapable-0.1.9" = self.by-version."tapable"."0.1.9";
      "memory-fs-0.2.0" = self.by-version."memory-fs"."0.2.0";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
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
  by-spec."error-ex"."^1.2.0" =
    self.by-version."error-ex"."1.2.0";
  by-version."error-ex"."1.2.0" = self.buildNodePackage {
    name = "error-ex-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/error-ex/-/error-ex-1.2.0.tgz";
      name = "error-ex-1.2.0.tgz";
      sha1 = "95d5183be6047a32a9755639662d2b737b22a76a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es5-shim"."^4.1.13" =
    self.by-version."es5-shim"."4.1.15";
  by-version."es5-shim"."4.1.15" = self.buildNodePackage {
    name = "es5-shim-4.1.15";
    version = "4.1.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es5-shim/-/es5-shim-4.1.15.tgz";
      name = "es5-shim-4.1.15.tgz";
      sha1 = "0e72e12caddaed60d913a2ab6cc0a3b57c8f512e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "es5-shim" = self.by-version."es5-shim"."4.1.15";
  by-spec."escape-html"."1.0.2" =
    self.by-version."escape-html"."1.0.2";
  by-version."escape-html"."1.0.2" = self.buildNodePackage {
    name = "escape-html-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-html/-/escape-html-1.0.2.tgz";
      name = "escape-html-1.0.2.tgz";
      sha1 = "d77d32fa98e38c2f41ae85e9278e0e0e6ba1022c";
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
    self.by-version."escape-string-regexp"."1.0.3";
  by-version."escape-string-regexp"."1.0.3" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.3.tgz";
      name = "escape-string-regexp-1.0.3.tgz";
      sha1 = "9e2d8b25bc2555c3336723750e03f099c2735bb5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escodegen"."^1.4.1" =
    self.by-version."escodegen"."1.7.0";
  by-version."escodegen"."1.7.0" = self.buildNodePackage {
    name = "escodegen-1.7.0";
    version = "1.7.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/escodegen/-/escodegen-1.7.0.tgz";
      name = "escodegen-1.7.0.tgz";
      sha1 = "4e299d8cc33087b7f29c19e2b9e84362abe35453";
    };
    deps = {
      "estraverse-1.9.3" = self.by-version."estraverse"."1.9.3";
      "esutils-2.0.2" = self.by-version."esutils"."2.0.2";
      "esprima-1.2.5" = self.by-version."esprima"."1.2.5";
      "optionator-0.5.0" = self.by-version."optionator"."0.5.0";
    };
    optionalDependencies = {
      "source-map-0.2.0" = self.by-version."source-map"."0.2.0";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima"."^1.2.2" =
    self.by-version."esprima"."1.2.5";
  by-version."esprima"."1.2.5" = self.buildNodePackage {
    name = "esprima-1.2.5";
    version = "1.2.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima/-/esprima-1.2.5.tgz";
      name = "esprima-1.2.5.tgz";
      sha1 = "0993502feaf668138325756f30f9a51feeec11e9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima"."^2.5.0" =
    self.by-version."esprima"."2.6.0";
  by-version."esprima"."2.6.0" = self.buildNodePackage {
    name = "esprima-2.6.0";
    version = "2.6.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima/-/esprima-2.6.0.tgz";
      name = "esprima-2.6.0.tgz";
      sha1 = "eddae7cccd7c4d6f3058b7f3823718aaaef7527f";
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
    self.by-version."esprima"."2.6.0";
  by-spec."esprima"."~2.2.0" =
    self.by-version."esprima"."2.2.0";
  by-version."esprima"."2.2.0" = self.buildNodePackage {
    name = "esprima-2.2.0";
    version = "2.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima/-/esprima-2.2.0.tgz";
      name = "esprima-2.2.0.tgz";
      sha1 = "4292c1d68e4173d815fa2290dc7afc96d81fcd83";
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
  by-spec."esprima-fb"."~15001.1.0-dev-harmony-fb" =
    self.by-version."esprima-fb"."15001.1.0-dev-harmony-fb";
  by-version."esprima-fb"."15001.1.0-dev-harmony-fb" = self.buildNodePackage {
    name = "esprima-fb-15001.1.0-dev-harmony-fb";
    version = "15001.1.0-dev-harmony-fb";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima-fb/-/esprima-fb-15001.1.0-dev-harmony-fb.tgz";
      name = "esprima-fb-15001.1.0-dev-harmony-fb.tgz";
      sha1 = "30a947303c6b8d5e955bee2b99b1d233206a6901";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima-fb"."~15001.1001.0-dev-harmony-fb" =
    self.by-version."esprima-fb"."15001.1001.0-dev-harmony-fb";
  by-version."esprima-fb"."15001.1001.0-dev-harmony-fb" = self.buildNodePackage {
    name = "esprima-fb-15001.1001.0-dev-harmony-fb";
    version = "15001.1001.0-dev-harmony-fb";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima-fb/-/esprima-fb-15001.1001.0-dev-harmony-fb.tgz";
      name = "esprima-fb-15001.1001.0-dev-harmony-fb.tgz";
      sha1 = "43beb57ec26e8cf237d3dd8b33e42533577f2659";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."estraverse"."^1.9.1" =
    self.by-version."estraverse"."1.9.3";
  by-version."estraverse"."1.9.3" = self.buildNodePackage {
    name = "estraverse-1.9.3";
    version = "1.9.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/estraverse/-/estraverse-1.9.3.tgz";
      name = "estraverse-1.9.3.tgz";
      sha1 = "af67f2dc922582415950926091a4005d29c9bb44";
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
      url = "http://registry.npmjs.org/esutils/-/esutils-2.0.2.tgz";
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
  by-spec."events"."~1.0.0" =
    self.by-version."events"."1.0.2";
  by-version."events"."1.0.2" = self.buildNodePackage {
    name = "events-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/events/-/events-1.0.2.tgz";
      name = "events-1.0.2.tgz";
      sha1 = "75849dcfe93d10fb057c30055afdbd51d06a8e24";
    };
    deps = {
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
      url = "http://registry.npmjs.org/evp_bytestokey/-/evp_bytestokey-1.0.0.tgz";
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
    self.by-version."expand-braces"."0.1.1";
  by-version."expand-braces"."0.1.1" = self.buildNodePackage {
    name = "expand-braces-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-braces/-/expand-braces-0.1.1.tgz";
      name = "expand-braces-0.1.1.tgz";
      sha1 = "83f2b897a16abebd406abad10949c2e03cae55d4";
    };
    deps = {
      "array-slice-0.2.3" = self.by-version."array-slice"."0.2.3";
      "array-uniq-1.0.2" = self.by-version."array-uniq"."1.0.2";
      "braces-0.1.5" = self.by-version."braces"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-brackets"."^0.1.1" =
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
      "fill-range-2.2.2" = self.by-version."fill-range"."2.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."express"."^4.13.3" =
    self.by-version."express"."4.13.3";
  by-version."express"."4.13.3" = self.buildNodePackage {
    name = "express-4.13.3";
    version = "4.13.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/express/-/express-4.13.3.tgz";
      name = "express-4.13.3.tgz";
      sha1 = "ddb2f1fb4502bf33598d2b032b037960ca6c80a3";
    };
    deps = {
      "accepts-1.2.13" = self.by-version."accepts"."1.2.13";
      "array-flatten-1.1.1" = self.by-version."array-flatten"."1.1.1";
      "content-disposition-0.5.0" = self.by-version."content-disposition"."0.5.0";
      "content-type-1.0.1" = self.by-version."content-type"."1.0.1";
      "cookie-0.1.3" = self.by-version."cookie"."0.1.3";
      "cookie-signature-1.0.6" = self.by-version."cookie-signature"."1.0.6";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "finalhandler-0.4.0" = self.by-version."finalhandler"."0.4.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "merge-descriptors-1.0.0" = self.by-version."merge-descriptors"."1.0.0";
      "methods-1.1.1" = self.by-version."methods"."1.1.1";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "path-to-regexp-0.1.7" = self.by-version."path-to-regexp"."0.1.7";
      "proxy-addr-1.0.8" = self.by-version."proxy-addr"."1.0.8";
      "qs-4.0.0" = self.by-version."qs"."4.0.0";
      "range-parser-1.0.2" = self.by-version."range-parser"."1.0.2";
      "send-0.13.0" = self.by-version."send"."0.13.0";
      "serve-static-1.10.0" = self.by-version."serve-static"."1.10.0";
      "type-is-1.6.9" = self.by-version."type-is"."1.6.9";
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
  by-spec."extend"."~2.0.0" =
    self.by-version."extend"."2.0.1";
  by-version."extend"."2.0.1" = self.buildNodePackage {
    name = "extend-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extend/-/extend-2.0.1.tgz";
      name = "extend-2.0.1.tgz";
      sha1 = "1ee8010689e7395ff9448241c98652bc759a8260";
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
  by-spec."extglob"."^0.3.0" =
    self.by-version."extglob"."0.3.1";
  by-version."extglob"."0.3.1" = self.buildNodePackage {
    name = "extglob-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extglob/-/extglob-0.3.1.tgz";
      name = "extglob-0.3.1.tgz";
      sha1 = "4f31241c0dddc90ac8c729cb6d7c872dee77c8f5";
    };
    deps = {
      "ansi-green-0.1.1" = self.by-version."ansi-green"."0.1.1";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "success-symbol-0.1.0" = self.by-version."success-symbol"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fast-levenshtein"."~1.0.0" =
    self.by-version."fast-levenshtein"."1.0.7";
  by-version."fast-levenshtein"."1.0.7" = self.buildNodePackage {
    name = "fast-levenshtein-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fast-levenshtein/-/fast-levenshtein-1.0.7.tgz";
      name = "fast-levenshtein-1.0.7.tgz";
      sha1 = "0178dcdee023b92905193af0959e8a7639cfdcb9";
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
  by-spec."fbjs"."^0.3.1" =
    self.by-version."fbjs"."0.3.2";
  by-version."fbjs"."0.3.2" = self.buildNodePackage {
    name = "fbjs-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fbjs/-/fbjs-0.3.2.tgz";
      name = "fbjs-0.3.2.tgz";
      sha1 = "033a540595084b5de3509a405d06f1a2a8e5b9fb";
    };
    deps = {
      "core-js-1.2.2" = self.by-version."core-js"."1.2.2";
      "loose-envify-1.1.0" = self.by-version."loose-envify"."1.1.0";
      "promise-7.0.4" = self.by-version."promise"."7.0.4";
      "ua-parser-js-0.7.9" = self.by-version."ua-parser-js"."0.7.9";
      "whatwg-fetch-0.9.0" = self.by-version."whatwg-fetch"."0.9.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."file-loader"."*" =
    self.by-version."file-loader"."0.8.4";
  by-version."file-loader"."0.8.4" = self.buildNodePackage {
    name = "file-loader-0.8.4";
    version = "0.8.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/file-loader/-/file-loader-0.8.4.tgz";
      name = "file-loader-0.8.4.tgz";
      sha1 = "36cb91a1e07fb59817432a76b8408d66fbaa69c6";
    };
    deps = {
      "loader-utils-0.2.11" = self.by-version."loader-utils"."0.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."file-loader"."^0.8.4" =
    self.by-version."file-loader"."0.8.4";
  "file-loader" = self.by-version."file-loader"."0.8.4";
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
    self.by-version."fill-range"."2.2.2";
  by-version."fill-range"."2.2.2" = self.buildNodePackage {
    name = "fill-range-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fill-range/-/fill-range-2.2.2.tgz";
      name = "fill-range-2.2.2.tgz";
      sha1 = "2ad9d158a6a666f9fb8c9f9f05345dff68d45760";
    };
    deps = {
      "is-number-1.1.2" = self.by-version."is-number"."1.1.2";
      "isobject-1.0.2" = self.by-version."isobject"."1.0.2";
      "randomatic-1.1.0" = self.by-version."randomatic"."1.1.0";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
      "repeat-string-1.5.2" = self.by-version."repeat-string"."1.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."finalhandler"."0.4.0" =
    self.by-version."finalhandler"."0.4.0";
  by-version."finalhandler"."0.4.0" = self.buildNodePackage {
    name = "finalhandler-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/finalhandler/-/finalhandler-0.4.0.tgz";
      name = "finalhandler-0.4.0.tgz";
      sha1 = "965a52d9e8d05d2b857548541fb89b53a2497d9b";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
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
    self.by-version."find-up"."1.0.0";
  by-version."find-up"."1.0.0" = self.buildNodePackage {
    name = "find-up-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/find-up/-/find-up-1.0.0.tgz";
      name = "find-up-1.0.0.tgz";
      sha1 = "df0a54abeebdf9984168fa556bd18a8f24b4d15c";
    };
    deps = {
      "path-exists-2.0.0" = self.by-version."path-exists"."2.0.0";
      "pinkie-promise-1.0.0" = self.by-version."pinkie-promise"."1.0.0";
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
  by-spec."font-awesome"."^4.4.0" =
    self.by-version."font-awesome"."4.4.0";
  by-version."font-awesome"."4.4.0" = self.buildNodePackage {
    name = "font-awesome-4.4.0";
    version = "4.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/font-awesome/-/font-awesome-4.4.0.tgz";
      name = "font-awesome-4.4.0.tgz";
      sha1 = "9fe43f82cf72726badcbdb2704407aadaca17da9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "font-awesome" = self.by-version."font-awesome"."4.4.0";
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
      "async-1.4.2" = self.by-version."async"."1.4.2";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.7" = self.by-version."mime-types"."2.1.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."formidable"."1.0.14" =
    self.by-version."formidable"."1.0.14";
  by-version."formidable"."1.0.14" = self.buildNodePackage {
    name = "formidable-1.0.14";
    version = "1.0.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/formidable/-/formidable-1.0.14.tgz";
      name = "formidable-1.0.14.tgz";
      sha1 = "2b3f4c411cbb5fdd695c44843e2a23514a43231a";
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
      "rimraf-2.4.3" = self.by-version."rimraf"."2.4.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fs-readdir-recursive"."^0.1.0" =
    self.by-version."fs-readdir-recursive"."0.1.2";
  by-version."fs-readdir-recursive"."0.1.2" = self.buildNodePackage {
    name = "fs-readdir-recursive-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fs-readdir-recursive/-/fs-readdir-recursive-0.1.2.tgz";
      name = "fs-readdir-recursive-0.1.2.tgz";
      sha1 = "315b4fb8c1ca5b8c47defef319d073dad3568059";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fsevents"."^1.0.0" =
    self.by-version."fsevents"."1.0.2";
  by-version."fsevents"."1.0.2" = self.buildNodePackage {
    name = "fsevents-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fsevents/-/fsevents-1.0.2.tgz";
      name = "fsevents-1.0.2.tgz";
      sha1 = "c846a4020ae6da07970581cd734d221345710e89";
    };
    deps = {
      "nan-2.1.0" = self.by-version."nan"."2.1.0";
      "node-pre-gyp-0.6.13" = self.by-version."node-pre-gyp"."0.6.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ "darwin" ];
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
      "rimraf-2.4.3" = self.by-version."rimraf"."2.4.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream"."^1.0.2" =
    self.by-version."fstream"."1.0.8";
  by-spec."fstream"."~0.1.17" =
    self.by-version."fstream"."0.1.31";
  by-version."fstream"."0.1.31" = self.buildNodePackage {
    name = "fstream-0.1.31";
    version = "0.1.31";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream/-/fstream-0.1.31.tgz";
      name = "fstream-0.1.31.tgz";
      sha1 = "7337f058fbbbbefa8c9f561a28cab0849202c988";
    };
    deps = {
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rimraf-2.4.3" = self.by-version."rimraf"."2.4.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream"."~0.1.22" =
    self.by-version."fstream"."0.1.31";
  by-spec."fstream"."~0.1.28" =
    self.by-version."fstream"."0.1.31";
  by-spec."fstream-ignore"."0.0.7" =
    self.by-version."fstream-ignore"."0.0.7";
  by-version."fstream-ignore"."0.0.7" = self.buildNodePackage {
    name = "fstream-ignore-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream-ignore/-/fstream-ignore-0.0.7.tgz";
      name = "fstream-ignore-0.0.7.tgz";
      sha1 = "eea3033f0c3728139de7b57ab1b0d6d89c353c63";
    };
    deps = {
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "fstream-0.1.31" = self.by-version."fstream"."0.1.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."gauge"."~1.2.0" =
    self.by-version."gauge"."1.2.2";
  by-version."gauge"."1.2.2" = self.buildNodePackage {
    name = "gauge-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gauge/-/gauge-1.2.2.tgz";
      name = "gauge-1.2.2.tgz";
      sha1 = "05b6730a19a8fcad3c340a142f0945222a3f815b";
    };
    deps = {
      "ansi-0.3.0" = self.by-version."ansi"."0.3.0";
      "has-unicode-1.0.1" = self.by-version."has-unicode"."1.0.1";
      "lodash.pad-3.1.1" = self.by-version."lodash.pad"."3.1.1";
      "lodash.padleft-3.1.1" = self.by-version."lodash.padleft"."3.1.1";
      "lodash.padright-3.1.1" = self.by-version."lodash.padright"."3.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
      "once-1.3.2" = self.by-version."once"."1.3.2";
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
  by-spec."glob"."^4.0.5" =
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
      "once-1.3.2" = self.by-version."once"."1.3.2";
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
  by-spec."glob"."~ 3.2.1" =
    self.by-version."glob"."3.2.11";
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
  by-spec."glob"."~4.2.1" =
    self.by-version."glob"."4.2.2";
  by-version."glob"."4.2.2" = self.buildNodePackage {
    name = "glob-4.2.2";
    version = "4.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-4.2.2.tgz";
      name = "glob-4.2.2.tgz";
      sha1 = "ad2b047653a58c387e15deb43a19497f83fd2a80";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "once-1.3.2" = self.by-version."once"."1.3.2";
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
  by-spec."global"."https://github.com/component/global/archive/v2.0.1.tar.gz" =
    self.by-version."global"."2.0.1";
  by-version."global"."2.0.1" = self.buildNodePackage {
    name = "global-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://github.com/component/global/archive/v2.0.1.tar.gz";
      name = "global-2.0.1.tgz";
      sha256 = "42be02b7148745447f6ba21137c972ca82d2cad92d30d63bd4fc310623901785";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."globals"."^6.4.0" =
    self.by-version."globals"."6.4.1";
  by-version."globals"."6.4.1" = self.buildNodePackage {
    name = "globals-6.4.1";
    version = "6.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/globals/-/globals-6.4.1.tgz";
      name = "globals-6.4.1.tgz";
      sha1 = "8498032b3b6d1cc81eebc5f79690d8fe29fabf4f";
    };
    deps = {
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
  by-spec."graceful-fs"."4.1" =
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
  by-spec."graceful-fs"."^3.0.2" =
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
  by-spec."graceful-fs"."^3.0.5" =
    self.by-version."graceful-fs"."3.0.8";
  by-spec."graceful-fs"."^4.1.2" =
    self.by-version."graceful-fs"."4.1.2";
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
  by-spec."graceful-fs"."~3.0.2" =
    self.by-version."graceful-fs"."3.0.8";
  by-spec."graceful-fs"."~3.0.4" =
    self.by-version."graceful-fs"."3.0.8";
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
    self.by-version."har-validator"."2.0.2";
  by-version."har-validator"."2.0.2" = self.buildNodePackage {
    name = "har-validator-2.0.2";
    version = "2.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/har-validator/-/har-validator-2.0.2.tgz";
      name = "har-validator-2.0.2.tgz";
      sha1 = "233d0fa887b98a4f345969f811a2eec70d97aed7";
    };
    deps = {
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "commander-2.9.0" = self.by-version."commander"."2.9.0";
      "is-my-json-valid-2.12.2" = self.by-version."is-my-json-valid"."2.12.2";
      "pinkie-promise-1.0.0" = self.by-version."pinkie-promise"."1.0.0";
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
  by-spec."has-binary-data"."0.1.3" =
    self.by-version."has-binary-data"."0.1.3";
  by-version."has-binary-data"."0.1.3" = self.buildNodePackage {
    name = "has-binary-data-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-binary-data/-/has-binary-data-0.1.3.tgz";
      name = "has-binary-data-0.1.3.tgz";
      sha1 = "8ebb18388b57f19a5231275a16fc18d51f379aae";
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
  by-spec."has-cors"."1.0.3" =
    self.by-version."has-cors"."1.0.3";
  by-version."has-cors"."1.0.3" = self.buildNodePackage {
    name = "has-cors-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-cors/-/has-cors-1.0.3.tgz";
      name = "has-cors-1.0.3.tgz";
      sha1 = "502acb9b3104dac33dd2630eaf2f888b0baf4cb3";
    };
    deps = {
      "global-2.0.1" = self.by-version."global"."2.0.1";
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
  by-spec."has-unicode"."^1.0.0" =
    self.by-version."has-unicode"."1.0.1";
  by-version."has-unicode"."1.0.1" = self.buildNodePackage {
    name = "has-unicode-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-unicode/-/has-unicode-1.0.1.tgz";
      name = "has-unicode-1.0.1.tgz";
      sha1 = "c46fceea053eb8ec789bffbba25fca52dfdcf38e";
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
      url = "http://registry.npmjs.org/hash.js/-/hash.js-1.0.3.tgz";
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
    self.by-version."hawk"."3.1.0";
  by-version."hawk"."3.1.0" = self.buildNodePackage {
    name = "hawk-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-3.1.0.tgz";
      name = "hawk-3.1.0.tgz";
      sha1 = "8a13ae19977ec607602f3f0b9fd676f18c384e44";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
      "boom-2.9.0" = self.by-version."boom"."2.9.0";
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
  by-spec."home-or-tmp"."^1.0.0" =
    self.by-version."home-or-tmp"."1.0.0";
  by-version."home-or-tmp"."1.0.0" = self.buildNodePackage {
    name = "home-or-tmp-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/home-or-tmp/-/home-or-tmp-1.0.0.tgz";
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
  by-spec."hosted-git-info"."^2.0.2" =
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
  by-spec."html-minifier"."^0.7.2" =
    self.by-version."html-minifier"."0.7.2";
  by-version."html-minifier"."0.7.2" = self.buildNodePackage {
    name = "html-minifier-0.7.2";
    version = "0.7.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/html-minifier/-/html-minifier-0.7.2.tgz";
      name = "html-minifier-0.7.2.tgz";
      sha1 = "2b7959b1051a481e71cd7c6e59a64272af895cfd";
    };
    deps = {
      "change-case-2.3.0" = self.by-version."change-case"."2.3.0";
      "clean-css-3.1.9" = self.by-version."clean-css"."3.1.9";
      "cli-0.6.6" = self.by-version."cli"."0.6.6";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "uglify-js-2.4.24" = self.by-version."uglify-js"."2.4.24";
      "relateurl-0.2.6" = self.by-version."relateurl"."0.2.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."html-webpack-plugin"."^1.6.1" =
    self.by-version."html-webpack-plugin"."1.6.2";
  by-version."html-webpack-plugin"."1.6.2" = self.buildNodePackage {
    name = "html-webpack-plugin-1.6.2";
    version = "1.6.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/html-webpack-plugin/-/html-webpack-plugin-1.6.2.tgz";
      name = "html-webpack-plugin-1.6.2.tgz";
      sha1 = "f912b78a38cacd7d7c022408d832c5da3dc40690";
    };
    deps = {
      "bluebird-2.10.2" = self.by-version."bluebird"."2.10.2";
      "blueimp-tmpl-2.5.5" = self.by-version."blueimp-tmpl"."2.5.5";
      "html-minifier-0.7.2" = self.by-version."html-minifier"."0.7.2";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "html-webpack-plugin" = self.by-version."html-webpack-plugin"."1.6.2";
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
  by-spec."http-browserify"."^1.4.0" =
    self.by-version."http-browserify"."1.7.0";
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
    self.by-version."http-proxy"."1.11.3";
  by-version."http-proxy"."1.11.3" = self.buildNodePackage {
    name = "http-proxy-1.11.3";
    version = "1.11.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-proxy/-/http-proxy-1.11.3.tgz";
      name = "http-proxy-1.11.3.tgz";
      sha1 = "1915dc888751e2a6bf3c2abfcb1808fa86c72353";
    };
    deps = {
      "eventemitter3-1.1.1" = self.by-version."eventemitter3"."1.1.1";
      "requires-port-0.0.1" = self.by-version."requires-port"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-proxy"."^1.11.2" =
    self.by-version."http-proxy"."1.11.3";
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
  by-spec."http-signature"."~0.11.0" =
    self.by-version."http-signature"."0.11.0";
  by-version."http-signature"."0.11.0" = self.buildNodePackage {
    name = "http-signature-0.11.0";
    version = "0.11.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-signature/-/http-signature-0.11.0.tgz";
      name = "http-signature-0.11.0.tgz";
      sha1 = "1796cf67a001ad5cd6849dca0991485f09089fe6";
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
  by-spec."https-browserify"."~0.0.0" =
    self.by-version."https-browserify"."0.0.1";
  by-version."https-browserify"."0.0.1" = self.buildNodePackage {
    name = "https-browserify-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/https-browserify/-/https-browserify-0.0.1.tgz";
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
  by-spec."iconv-lite"."0.4.12" =
    self.by-version."iconv-lite"."0.4.12";
  by-version."iconv-lite"."0.4.12" = self.buildNodePackage {
    name = "iconv-lite-0.4.12";
    version = "0.4.12";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.12.tgz";
      name = "iconv-lite-0.4.12.tgz";
      sha1 = "ef4bb2cb28f406d3c05fc89feea4504624b5ac87";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."iconv-lite"."~0.4.5" =
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
    self.by-version."ignore"."2.2.18";
  by-version."ignore"."2.2.18" = self.buildNodePackage {
    name = "ignore-2.2.18";
    version = "2.2.18";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ignore/-/ignore-2.2.18.tgz";
      name = "ignore-2.2.18.tgz";
      sha1 = "fb1d11a785613a05cfdc56c670dde24fb569ea2f";
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
      "once-1.3.2" = self.by-version."once"."1.3.2";
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
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
  by-spec."ini"."1" =
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
  by-spec."ini"."^1.2.0" =
    self.by-version."ini"."1.3.4";
  by-spec."ini"."~1.3.0" =
    self.by-version."ini"."1.3.4";
  by-spec."inline-source-map"."~0.3.0" =
    self.by-version."inline-source-map"."0.3.1";
  by-version."inline-source-map"."0.3.1" = self.buildNodePackage {
    name = "inline-source-map-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inline-source-map/-/inline-source-map-0.3.1.tgz";
      name = "inline-source-map-0.3.1.tgz";
      sha1 = "a528b514e689fce90db3089e870d92f527acb5eb";
    };
    deps = {
      "source-map-0.3.0" = self.by-version."source-map"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inline-source-map"."~0.5.0" =
    self.by-version."inline-source-map"."0.5.0";
  by-version."inline-source-map"."0.5.0" = self.buildNodePackage {
    name = "inline-source-map-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inline-source-map/-/inline-source-map-0.5.0.tgz";
      name = "inline-source-map-0.5.0.tgz";
      sha1 = "4a4c5dd8e4fb5e9b3cda60c822dfadcaee66e0af";
    };
    deps = {
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."insert-module-globals"."^6.2.0" =
    self.by-version."insert-module-globals"."6.6.3";
  by-version."insert-module-globals"."6.6.3" = self.buildNodePackage {
    name = "insert-module-globals-6.6.3";
    version = "6.6.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/insert-module-globals/-/insert-module-globals-6.6.3.tgz";
      name = "insert-module-globals-6.6.3.tgz";
      sha1 = "20638e29a30f9ed1ca2e3a825fbc2cba5246ddfc";
    };
    deps = {
      "JSONStream-1.0.6" = self.by-version."JSONStream"."1.0.6";
      "combine-source-map-0.6.1" = self.by-version."combine-source-map"."0.6.1";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "is-buffer-1.1.0" = self.by-version."is-buffer"."1.1.0";
      "lexical-scope-1.2.0" = self.by-version."lexical-scope"."1.2.0";
      "process-0.11.2" = self.by-version."process"."0.11.2";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."install"."~0.1.7" =
    self.by-version."install"."0.1.8";
  by-version."install"."0.1.8" = self.buildNodePackage {
    name = "install-0.1.8";
    version = "0.1.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/install/-/install-0.1.8.tgz";
      name = "install-0.1.8.tgz";
      sha1 = "9980ef93e30dfb534778d163bc86ddd472ad5fe8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
    self.by-version."invariant"."2.1.1";
  by-version."invariant"."2.1.1" = self.buildNodePackage {
    name = "invariant-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/invariant/-/invariant-2.1.1.tgz";
      name = "invariant-2.1.1.tgz";
      sha1 = "e0264e73ca7df84515d5487019a2ddc817bdd31d";
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
  by-spec."ipaddr.js"."1.0.1" =
    self.by-version."ipaddr.js"."1.0.1";
  by-version."ipaddr.js"."1.0.1" = self.buildNodePackage {
    name = "ipaddr.js-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.0.1.tgz";
      name = "ipaddr.js-1.0.1.tgz";
      sha1 = "5f38801dc73e0400fc7076386f6ed5215fbd8f95";
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
  by-spec."is-array"."^1.0.1" =
    self.by-version."is-array"."1.0.1";
  by-version."is-array"."1.0.1" = self.buildNodePackage {
    name = "is-array-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-array/-/is-array-1.0.1.tgz";
      name = "is-array-1.0.1.tgz";
      sha1 = "e9850cc2cc860c3bc0977e84ccf0dd464584279a";
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
      "binary-extensions-1.3.1" = self.by-version."binary-extensions"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-buffer"."^1.0.2" =
    self.by-version."is-buffer"."1.1.0";
  by-version."is-buffer"."1.1.0" = self.buildNodePackage {
    name = "is-buffer-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-buffer/-/is-buffer-1.1.0.tgz";
      name = "is-buffer-1.1.0.tgz";
      sha1 = "36f7850c0d077a71b041f3565664155f07035bd0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-buffer"."^1.1.0" =
    self.by-version."is-buffer"."1.1.0";
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
      "builtin-modules-1.1.0" = self.by-version."builtin-modules"."1.1.0";
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
  by-spec."is-glob"."^1.1.3" =
    self.by-version."is-glob"."1.1.3";
  by-version."is-glob"."1.1.3" = self.buildNodePackage {
    name = "is-glob-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-glob/-/is-glob-1.1.3.tgz";
      name = "is-glob-1.1.3.tgz";
      sha1 = "b4c64b8303d39114492a460d364ccfb0d3c0a045";
    };
    deps = {
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
  by-spec."is-integer"."^1.0.4" =
    self.by-version."is-integer"."1.0.6";
  by-version."is-integer"."1.0.6" = self.buildNodePackage {
    name = "is-integer-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-integer/-/is-integer-1.0.6.tgz";
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
    self.by-version."is-lower-case"."1.1.1";
  by-version."is-lower-case"."1.1.1" = self.buildNodePackage {
    name = "is-lower-case-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-lower-case/-/is-lower-case-1.1.1.tgz";
      name = "is-lower-case-1.1.1.tgz";
      sha1 = "a2d40aaa953f5ee3f1bf3e075f2e83ac57ad547c";
    };
    deps = {
      "lower-case-1.1.2" = self.by-version."lower-case"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-my-json-valid"."^2.12.2" =
    self.by-version."is-my-json-valid"."2.12.2";
  by-version."is-my-json-valid"."2.12.2" = self.buildNodePackage {
    name = "is-my-json-valid-2.12.2";
    version = "2.12.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.12.2.tgz";
      name = "is-my-json-valid-2.12.2.tgz";
      sha1 = "0d65859318c846ce3a134402fd3fbc504272ccc9";
    };
    deps = {
      "generate-function-2.0.0" = self.by-version."generate-function"."2.0.0";
      "generate-object-property-1.2.0" = self.by-version."generate-object-property"."1.2.0";
      "jsonpointer-2.0.0" = self.by-version."jsonpointer"."2.0.0";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
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
  by-spec."is-number"."^1.1.0" =
    self.by-version."is-number"."1.1.2";
  by-version."is-number"."1.1.2" = self.buildNodePackage {
    name = "is-number-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-number/-/is-number-1.1.2.tgz";
      name = "is-number-1.1.2.tgz";
      sha1 = "9d82409f3a8a8beecf249b1bc7dada49829966e4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^1.1.2" =
    self.by-version."is-number"."1.1.2";
  by-spec."is-plain-obj"."^1.0.0" =
    self.by-version."is-plain-obj"."1.0.0";
  by-version."is-plain-obj"."1.0.0" = self.buildNodePackage {
    name = "is-plain-obj-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-plain-obj/-/is-plain-obj-1.0.0.tgz";
      name = "is-plain-obj-1.0.0.tgz";
      sha1 = "f8d5dc92b99fa4fd077984ba30b798908a0566e7";
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
  by-spec."is-upper-case"."^1.1.0" =
    self.by-version."is-upper-case"."1.1.1";
  by-version."is-upper-case"."1.1.1" = self.buildNodePackage {
    name = "is-upper-case-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-upper-case/-/is-upper-case-1.1.1.tgz";
      name = "is-upper-case-1.1.1.tgz";
      sha1 = "93c04a6e392d76e853ff88a4a12efe9511df22db";
    };
    deps = {
      "upper-case-1.1.2" = self.by-version."upper-case"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-utf8"."^0.2.0" =
    self.by-version."is-utf8"."0.2.0";
  by-version."is-utf8"."0.2.0" = self.buildNodePackage {
    name = "is-utf8-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-utf8/-/is-utf8-0.2.0.tgz";
      name = "is-utf8-0.2.0.tgz";
      sha1 = "b8aa54125ae626bfe4e3beb965f16a89c58a1137";
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
  by-spec."isarray"."~0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-spec."isobject"."^1.0.0" =
    self.by-version."isobject"."1.0.2";
  by-version."isobject"."1.0.2" = self.buildNodePackage {
    name = "isobject-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isobject/-/isobject-1.0.2.tgz";
      name = "isobject-1.0.2.tgz";
      sha1 = "f0f9b8ce92dd540fa0740882e3835a2e022ec78a";
    };
    deps = {
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
  by-spec."js-tokens"."1.0.1" =
    self.by-version."js-tokens"."1.0.1";
  by-version."js-tokens"."1.0.1" = self.buildNodePackage {
    name = "js-tokens-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-tokens/-/js-tokens-1.0.1.tgz";
      name = "js-tokens-1.0.1.tgz";
      sha1 = "cc435a5c8b94ad15acb7983140fc80182c89aeae";
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
  by-spec."js-yaml"."~3.3.1" =
    self.by-version."js-yaml"."3.3.1";
  by-version."js-yaml"."3.3.1" = self.buildNodePackage {
    name = "js-yaml-3.3.1";
    version = "3.3.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-yaml/-/js-yaml-3.3.1.tgz";
      name = "js-yaml-3.3.1.tgz";
      sha1 = "ca1acd3423ec275d12140a7bab51db015ba0b3c0";
    };
    deps = {
      "argparse-1.0.2" = self.by-version."argparse"."1.0.2";
      "esprima-2.2.0" = self.by-version."esprima"."2.2.0";
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
      url = "http://registry.npmjs.org/jsesc/-/jsesc-0.5.0.tgz";
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
  by-spec."json-loader"."^0.5.3" =
    self.by-version."json-loader"."0.5.3";
  by-version."json-loader"."0.5.3" = self.buildNodePackage {
    name = "json-loader-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-loader/-/json-loader-0.5.3.tgz";
      name = "json-loader-0.5.3.tgz";
      sha1 = "fde8311d5c3414f608260e3d93135050d17a5593";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "json-loader" = self.by-version."json-loader"."0.5.3";
  by-spec."json-stable-stringify"."~0.0.0" =
    self.by-version."json-stable-stringify"."0.0.1";
  by-version."json-stable-stringify"."0.0.1" = self.buildNodePackage {
    name = "json-stable-stringify-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-stable-stringify/-/json-stable-stringify-0.0.1.tgz";
      name = "json-stable-stringify-0.0.1.tgz";
      sha1 = "611c23e814db375527df851193db59dd2af27f45";
    };
    deps = {
      "jsonify-0.0.0" = self.by-version."jsonify"."0.0.0";
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
  by-spec."jsonify"."~0.0.0" =
    self.by-version."jsonify"."0.0.0";
  by-version."jsonify"."0.0.0" = self.buildNodePackage {
    name = "jsonify-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonify/-/jsonify-0.0.0.tgz";
      name = "jsonify-0.0.0.tgz";
      sha1 = "2c74b6ee41d93ca51b7b5aaee8f503631d252a73";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonparse"."0.0.5" =
    self.by-version."jsonparse"."0.0.5";
  by-version."jsonparse"."0.0.5" = self.buildNodePackage {
    name = "jsonparse-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonparse/-/jsonparse-0.0.5.tgz";
      name = "jsonparse-0.0.5.tgz";
      sha1 = "330542ad3f0a654665b778f3eb2d9a9fa507ac64";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonparse"."^1.1.0" =
    self.by-version."jsonparse"."1.2.0";
  by-version."jsonparse"."1.2.0" = self.buildNodePackage {
    name = "jsonparse-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonparse/-/jsonparse-1.2.0.tgz";
      name = "jsonparse-1.2.0.tgz";
      sha1 = "5c0c5685107160e72fe7489bddea0b44c2bc67bd";
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
    self.by-version."karma"."0.13.11";
  by-version."karma"."0.13.11" = self.buildNodePackage {
    name = "karma-0.13.11";
    version = "0.13.11";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma/-/karma-0.13.11.tgz";
      name = "karma-0.13.11.tgz";
      sha1 = "1a22d292704398b618e94a4a004a7851d1c4fea2";
    };
    deps = {
      "bluebird-2.10.2" = self.by-version."bluebird"."2.10.2";
      "body-parser-1.14.1" = self.by-version."body-parser"."1.14.1";
      "chokidar-1.2.0" = self.by-version."chokidar"."1.2.0";
      "colors-1.1.2" = self.by-version."colors"."1.1.2";
      "connect-3.4.0" = self.by-version."connect"."3.4.0";
      "core-js-1.2.2" = self.by-version."core-js"."1.2.2";
      "di-0.0.1" = self.by-version."di"."0.0.1";
      "dom-serialize-2.2.0" = self.by-version."dom-serialize"."2.2.0";
      "expand-braces-0.1.1" = self.by-version."expand-braces"."0.1.1";
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "http-proxy-1.11.3" = self.by-version."http-proxy"."1.11.3";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "log4js-0.6.27" = self.by-version."log4js"."0.6.27";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "rimraf-2.4.3" = self.by-version."rimraf"."2.4.3";
      "socket.io-1.3.7" = self.by-version."socket.io"."1.3.7";
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
      "useragent-2.1.7" = self.by-version."useragent"."2.1.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."karma".">=0.9" =
    self.by-version."karma"."0.13.11";
  by-spec."karma"."^0.13.10" =
    self.by-version."karma"."0.13.11";
  "karma" = self.by-version."karma"."0.13.11";
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
      self.by-version."chai"."3.3.0"
      self.by-version."karma"."0.13.11"];
    os = [ ];
    cpu = [ ];
  };
  "karma-chai" = self.by-version."karma-chai"."0.1.0";
  by-spec."karma-mocha"."^0.2.0" =
    self.by-version."karma-mocha"."0.2.0";
  by-version."karma-mocha"."0.2.0" = self.buildNodePackage {
    name = "karma-mocha-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-mocha/-/karma-mocha-0.2.0.tgz";
      name = "karma-mocha-0.2.0.tgz";
      sha1 = "198937c2c5f710d9586aa5dfd6ab4ce7a4218751";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."mocha"."2.3.3"];
    os = [ ];
    cpu = [ ];
  };
  "karma-mocha" = self.by-version."karma-mocha"."0.2.0";
  by-spec."karma-mocha-reporter"."^1.1.1" =
    self.by-version."karma-mocha-reporter"."1.1.1";
  by-version."karma-mocha-reporter"."1.1.1" = self.buildNodePackage {
    name = "karma-mocha-reporter-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-mocha-reporter/-/karma-mocha-reporter-1.1.1.tgz";
      name = "karma-mocha-reporter-1.1.1.tgz";
      sha1 = "5be9ab16eb82763b30eb41d48800070975c56ab7";
    };
    deps = {
      "chalk-1.1.0" = self.by-version."chalk"."1.1.0";
      "karma-0.13.11" = self.by-version."karma"."0.13.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "karma-mocha-reporter" = self.by-version."karma-mocha-reporter"."1.1.1";
  by-spec."karma-phantomjs-launcher"."^0.2.1" =
    self.by-version."karma-phantomjs-launcher"."0.2.1";
  by-version."karma-phantomjs-launcher"."0.2.1" = self.buildNodePackage {
    name = "karma-phantomjs-launcher-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/karma-phantomjs-launcher/-/karma-phantomjs-launcher-0.2.1.tgz";
      name = "karma-phantomjs-launcher-0.2.1.tgz";
      sha1 = "7c15fbb82b7661b17ed19391f019d76554b654df";
    };
    deps = {
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."karma"."0.13.11"
      self.by-version."phantomjs"."1.9.18"];
    os = [ ];
    cpu = [ ];
  };
  "karma-phantomjs-launcher" = self.by-version."karma-phantomjs-launcher"."0.2.1";
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
      "loader-utils-0.2.11" = self.by-version."loader-utils"."0.2.11";
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
      "webpack-dev-middleware-1.2.0" = self.by-version."webpack-dev-middleware"."1.2.0";
      "webpack-1.12.2" = self.by-version."webpack"."1.12.2";
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
  by-spec."kind-of"."^1.0.0" =
    self.by-version."kind-of"."1.1.0";
  by-version."kind-of"."1.1.0" = self.buildNodePackage {
    name = "kind-of-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/kind-of/-/kind-of-1.1.0.tgz";
      name = "kind-of-1.1.0.tgz";
      sha1 = "140a3d2d41a36d2efcfa9377b62c24f8495a5c44";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."kind-of"."^1.1.0" =
    self.by-version."kind-of"."1.1.0";
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
      "is-buffer-1.1.0" = self.by-version."is-buffer"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."labeled-stream-splicer"."^1.0.0" =
    self.by-version."labeled-stream-splicer"."1.0.2";
  by-version."labeled-stream-splicer"."1.0.2" = self.buildNodePackage {
    name = "labeled-stream-splicer-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/labeled-stream-splicer/-/labeled-stream-splicer-1.0.2.tgz";
      name = "labeled-stream-splicer-1.0.2.tgz";
      sha1 = "4615331537784981e8fd264e1f3a434c4e0ddd65";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "stream-splicer-1.3.2" = self.by-version."stream-splicer"."1.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lazy-cache"."^0.2.3" =
    self.by-version."lazy-cache"."0.2.3";
  by-version."lazy-cache"."0.2.3" = self.buildNodePackage {
    name = "lazy-cache-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lazy-cache/-/lazy-cache-0.2.3.tgz";
      name = "lazy-cache-0.2.3.tgz";
      sha1 = "0f30be62cce1e025039f921efde5cce31f2625c8";
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
    self.by-version."leaflet"."0.7.5";
  by-version."leaflet"."0.7.5" = self.buildNodePackage {
    name = "leaflet-0.7.5";
    version = "0.7.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/leaflet/-/leaflet-0.7.5.tgz";
      name = "leaflet-0.7.5.tgz";
      sha1 = "6945476738d4c8973bb4c72e79b1d6be46a6bfc8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."leaflet"."^0.7.5" =
    self.by-version."leaflet"."0.7.5";
  "leaflet" = self.by-version."leaflet"."0.7.5";
  by-spec."left-pad"."0.0.3" =
    self.by-version."left-pad"."0.0.3";
  by-version."left-pad"."0.0.3" = self.buildNodePackage {
    name = "left-pad-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/left-pad/-/left-pad-0.0.3.tgz";
      name = "left-pad-0.0.3.tgz";
      sha1 = "04d99b4a1eaf9e5f79c05e5d745d53edd1aa8aa1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
      "request-2.65.0" = self.by-version."request"."2.65.0";
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."less"."^2.5.3" =
    self.by-version."less"."2.5.3";
  "less" = self.by-version."less"."2.5.3";
  by-spec."less-loader"."^2.2.1" =
    self.by-version."less-loader"."2.2.1";
  by-version."less-loader"."2.2.1" = self.buildNodePackage {
    name = "less-loader-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/less-loader/-/less-loader-2.2.1.tgz";
      name = "less-loader-2.2.1.tgz";
      sha1 = "b8571c9b62bae889c93cdd2c21ae6945d6571e46";
    };
    deps = {
      "loader-utils-0.2.11" = self.by-version."loader-utils"."0.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."less"."2.5.3"];
    os = [ ];
    cpu = [ ];
  };
  "less-loader" = self.by-version."less-loader"."2.2.1";
  by-spec."leven"."^1.0.2" =
    self.by-version."leven"."1.0.2";
  by-version."leven"."1.0.2" = self.buildNodePackage {
    name = "leven-1.0.2";
    version = "1.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/leven/-/leven-1.0.2.tgz";
      name = "leven-1.0.2.tgz";
      sha1 = "9144b6eebca5f1d0680169f1a6770dcea60b75c3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."levn"."~0.2.5" =
    self.by-version."levn"."0.2.5";
  by-version."levn"."0.2.5" = self.buildNodePackage {
    name = "levn-0.2.5";
    version = "0.2.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/levn/-/levn-0.2.5.tgz";
      name = "levn-0.2.5.tgz";
      sha1 = "ba8d339d0ca4a610e3a3f145b9caf48807155054";
    };
    deps = {
      "prelude-ls-1.1.2" = self.by-version."prelude-ls"."1.1.2";
      "type-check-0.3.1" = self.by-version."type-check"."0.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lexical-scope"."^1.2.0" =
    self.by-version."lexical-scope"."1.2.0";
  by-version."lexical-scope"."1.2.0" = self.buildNodePackage {
    name = "lexical-scope-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lexical-scope/-/lexical-scope-1.2.0.tgz";
      name = "lexical-scope-1.2.0.tgz";
      sha1 = "fcea5edc704a4b3a8796cdca419c3a0afaf22df4";
    };
    deps = {
      "astw-2.0.0" = self.by-version."astw"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."line-numbers"."0.2.0" =
    self.by-version."line-numbers"."0.2.0";
  by-version."line-numbers"."0.2.0" = self.buildNodePackage {
    name = "line-numbers-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/line-numbers/-/line-numbers-0.2.0.tgz";
      name = "line-numbers-0.2.0.tgz";
      sha1 = "6bc028149440e570d495ab509692aa08bd779c6e";
    };
    deps = {
      "left-pad-0.0.3" = self.by-version."left-pad"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."load-json-file"."^1.0.0" =
    self.by-version."load-json-file"."1.0.1";
  by-version."load-json-file"."1.0.1" = self.buildNodePackage {
    name = "load-json-file-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/load-json-file/-/load-json-file-1.0.1.tgz";
      name = "load-json-file-1.0.1.tgz";
      sha1 = "d24e14be27f68a6aec0f82365b23e1014603fc19";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "parse-json-2.2.0" = self.by-version."parse-json"."2.2.0";
      "pify-2.2.0" = self.by-version."pify"."2.2.0";
      "pinkie-promise-1.0.0" = self.by-version."pinkie-promise"."1.0.0";
      "strip-bom-2.0.0" = self.by-version."strip-bom"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loader-utils"."0.2.x" =
    self.by-version."loader-utils"."0.2.11";
  by-version."loader-utils"."0.2.11" = self.buildNodePackage {
    name = "loader-utils-0.2.11";
    version = "0.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/loader-utils/-/loader-utils-0.2.11.tgz";
      name = "loader-utils-0.2.11.tgz";
      sha1 = "8a0164e337c21ca099c2b1716366f0db0ec3087f";
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
  by-spec."loader-utils"."^0.2.5" =
    self.by-version."loader-utils"."0.2.11";
  by-spec."loader-utils"."^0.2.7" =
    self.by-version."loader-utils"."0.2.11";
  by-spec."loader-utils"."^0.2.9" =
    self.by-version."loader-utils"."0.2.11";
  by-spec."loader-utils"."~0.2.2" =
    self.by-version."loader-utils"."0.2.11";
  by-spec."loader-utils"."~0.2.5" =
    self.by-version."loader-utils"."0.2.11";
  by-spec."lodash".">= 3.2.0 < 4.0.0" =
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
  by-spec."lodash"."^3.0.0" =
    self.by-version."lodash"."3.10.1";
  by-spec."lodash"."^3.10.0" =
    self.by-version."lodash"."3.10.1";
  by-spec."lodash"."^3.10.1" =
    self.by-version."lodash"."3.10.1";
  "lodash" = self.by-version."lodash"."3.10.1";
  by-spec."lodash"."^3.8.0" =
    self.by-version."lodash"."3.10.1";
  by-spec."lodash"."^3.9.3" =
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
  by-spec."lodash._baseflatten"."^3.0.0" =
    self.by-version."lodash._baseflatten"."3.1.4";
  by-version."lodash._baseflatten"."3.1.4" = self.buildNodePackage {
    name = "lodash._baseflatten-3.1.4";
    version = "3.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._baseflatten/-/lodash._baseflatten-3.1.4.tgz";
      name = "lodash._baseflatten-3.1.4.tgz";
      sha1 = "0770ff80131af6e34f3b511796a7ba5214e65ff7";
    };
    deps = {
      "lodash.isarguments-3.0.4" = self.by-version."lodash.isarguments"."3.0.4";
      "lodash.isarray-3.0.4" = self.by-version."lodash.isarray"."3.0.4";
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
      "lodash.repeat-3.0.1" = self.by-version."lodash.repeat"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._isiterateecall"."^3.0.0" =
    self.by-version."lodash._isiterateecall"."3.0.9";
  by-version."lodash._isiterateecall"."3.0.9" = self.buildNodePackage {
    name = "lodash._isiterateecall-3.0.9";
    version = "3.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._isiterateecall/-/lodash._isiterateecall-3.0.9.tgz";
      name = "lodash._isiterateecall-3.0.9.tgz";
      sha1 = "5203ad7ba425fae842460e696db9cf3e6aac057c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.flatten"."^3.0.2" =
    self.by-version."lodash.flatten"."3.0.2";
  by-version."lodash.flatten"."3.0.2" = self.buildNodePackage {
    name = "lodash.flatten-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.flatten/-/lodash.flatten-3.0.2.tgz";
      name = "lodash.flatten-3.0.2.tgz";
      sha1 = "de1cf57758f8f4479319d35c3e9cc60c4501938c";
    };
    deps = {
      "lodash._baseflatten-3.1.4" = self.by-version."lodash._baseflatten"."3.1.4";
      "lodash._isiterateecall-3.0.9" = self.by-version."lodash._isiterateecall"."3.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isarguments"."^3.0.0" =
    self.by-version."lodash.isarguments"."3.0.4";
  by-version."lodash.isarguments"."3.0.4" = self.buildNodePackage {
    name = "lodash.isarguments-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.isarguments/-/lodash.isarguments-3.0.4.tgz";
      name = "lodash.isarguments-3.0.4.tgz";
      sha1 = "ebbb884c48d27366a44ea6fee57ed7b5a32a81e0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isarray"."^3.0.0" =
    self.by-version."lodash.isarray"."3.0.4";
  by-version."lodash.isarray"."3.0.4" = self.buildNodePackage {
    name = "lodash.isarray-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.isarray/-/lodash.isarray-3.0.4.tgz";
      name = "lodash.isarray-3.0.4.tgz";
      sha1 = "79e4eb88c36a8122af86f844aa9bcd851b5fbb55";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.memoize"."~3.0.3" =
    self.by-version."lodash.memoize"."3.0.4";
  by-version."lodash.memoize"."3.0.4" = self.buildNodePackage {
    name = "lodash.memoize-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.memoize/-/lodash.memoize-3.0.4.tgz";
      name = "lodash.memoize-3.0.4.tgz";
      sha1 = "2dcbd2c287cbc0a55cc42328bd0c736150d53e3f";
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
    self.by-version."lodash.pad"."3.1.1";
  by-version."lodash.pad"."3.1.1" = self.buildNodePackage {
    name = "lodash.pad-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.pad/-/lodash.pad-3.1.1.tgz";
      name = "lodash.pad-3.1.1.tgz";
      sha1 = "2e078ebc33b331d2ba34bf8732af129fd5c04624";
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
    self.by-version."lodash.repeat"."3.0.1";
  by-version."lodash.repeat"."3.0.1" = self.buildNodePackage {
    name = "lodash.repeat-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.repeat/-/lodash.repeat-3.0.1.tgz";
      name = "lodash.repeat-3.0.1.tgz";
      sha1 = "f4b98dc7ef67256ce61e7874e1865edb208e0edf";
    };
    deps = {
      "lodash._basetostring-3.0.1" = self.by-version."lodash._basetostring"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."log4js"."^0.6.25" =
    self.by-version."log4js"."0.6.27";
  by-version."log4js"."0.6.27" = self.buildNodePackage {
    name = "log4js-0.6.27";
    version = "0.6.27";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/log4js/-/log4js-0.6.27.tgz";
      name = "log4js-0.6.27.tgz";
      sha1 = "3426f9ae6237ff7303a8ba6459e0217357c9605c";
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
    self.by-version."loud-rejection"."1.0.0";
  by-version."loud-rejection"."1.0.0" = self.buildNodePackage {
    name = "loud-rejection-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/loud-rejection/-/loud-rejection-1.0.0.tgz";
      name = "loud-rejection-1.0.0.tgz";
      sha1 = "d7da07377ebe8c769c9a9dff42b226b085e83246";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lower-case"."^1.1.0" =
    self.by-version."lower-case"."1.1.2";
  by-version."lower-case"."1.1.2" = self.buildNodePackage {
    name = "lower-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lower-case/-/lower-case-1.1.2.tgz";
      name = "lower-case-1.1.2.tgz";
      sha1 = "02568a47559492fbe0a59e385ed494833ce8ca8a";
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
    self.by-version."lower-case"."1.1.2";
  by-spec."lower-case"."^1.1.2" =
    self.by-version."lower-case"."1.1.2";
  by-spec."lower-case-first"."^1.0.0" =
    self.by-version."lower-case-first"."1.0.0";
  by-version."lower-case-first"."1.0.0" = self.buildNodePackage {
    name = "lower-case-first-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lower-case-first/-/lower-case-first-1.0.0.tgz";
      name = "lower-case-first-1.0.0.tgz";
      sha1 = "a1f626f4c3fdfab38648d806a07ea8aa753aa86a";
    };
    deps = {
      "lower-case-1.1.2" = self.by-version."lower-case"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."2" =
    self.by-version."lru-cache"."2.7.0";
  by-version."lru-cache"."2.7.0" = self.buildNodePackage {
    name = "lru-cache-2.7.0";
    version = "2.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.7.0.tgz";
      name = "lru-cache-2.7.0.tgz";
      sha1 = "aaa376a4cd970f9cebf5ec1909566ec034f07ee6";
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
  by-spec."lru-cache"."^2.6.5" =
    self.by-version."lru-cache"."2.7.0";
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
  by-spec."memory-fs"."~0.2.0" =
    self.by-version."memory-fs"."0.2.0";
  by-spec."meow"."^3.3.0" =
    self.by-version."meow"."3.4.2";
  by-version."meow"."3.4.2" = self.buildNodePackage {
    name = "meow-3.4.2";
    version = "3.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/meow/-/meow-3.4.2.tgz";
      name = "meow-3.4.2.tgz";
      sha1 = "5f11a00596301d7adc352d1b86fc8573df0b93f0";
    };
    deps = {
      "camelcase-keys-1.0.0" = self.by-version."camelcase-keys"."1.0.0";
      "loud-rejection-1.0.0" = self.by-version."loud-rejection"."1.0.0";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "normalize-package-data-2.3.4" = self.by-version."normalize-package-data"."2.3.4";
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
  by-spec."merge-descriptors"."1.0.0" =
    self.by-version."merge-descriptors"."1.0.0";
  by-version."merge-descriptors"."1.0.0" = self.buildNodePackage {
    name = "merge-descriptors-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.0.tgz";
      name = "merge-descriptors-1.0.0.tgz";
      sha1 = "2169cf7538e1b0cc87fb88e1502d8474bbf79864";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."methods"."1.0.1" =
    self.by-version."methods"."1.0.1";
  by-version."methods"."1.0.1" = self.buildNodePackage {
    name = "methods-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/methods/-/methods-1.0.1.tgz";
      name = "methods-1.0.1.tgz";
      sha1 = "75bc91943dffd7da037cf3eeb0ed73a0037cd14b";
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
    self.by-version."methods"."1.1.1";
  by-version."methods"."1.1.1" = self.buildNodePackage {
    name = "methods-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/methods/-/methods-1.1.1.tgz";
      name = "methods-1.1.1.tgz";
      sha1 = "17ea6366066d00c58e375b8ec7dfd0453c89822a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."micromatch"."^2.1.5" =
    self.by-version."micromatch"."2.2.0";
  by-version."micromatch"."2.2.0" = self.buildNodePackage {
    name = "micromatch-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/micromatch/-/micromatch-2.2.0.tgz";
      name = "micromatch-2.2.0.tgz";
      sha1 = "e7281bf971100827b890e375d994f12034898ff5";
    };
    deps = {
      "arr-diff-1.1.0" = self.by-version."arr-diff"."1.1.0";
      "array-unique-0.2.1" = self.by-version."array-unique"."0.2.1";
      "braces-1.8.2" = self.by-version."braces"."1.8.2";
      "expand-brackets-0.1.4" = self.by-version."expand-brackets"."0.1.4";
      "extglob-0.3.1" = self.by-version."extglob"."0.3.1";
      "filename-regex-2.0.0" = self.by-version."filename-regex"."2.0.0";
      "is-glob-1.1.3" = self.by-version."is-glob"."1.1.3";
      "kind-of-1.1.0" = self.by-version."kind-of"."1.1.0";
      "object.omit-1.1.0" = self.by-version."object.omit"."1.1.0";
      "parse-glob-3.0.4" = self.by-version."parse-glob"."3.0.4";
      "regex-cache-0.4.2" = self.by-version."regex-cache"."0.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."miller-rabin"."^2.0.0" =
    self.by-version."miller-rabin"."2.0.1";
  by-version."miller-rabin"."2.0.1" = self.buildNodePackage {
    name = "miller-rabin-2.0.1";
    version = "2.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/miller-rabin/-/miller-rabin-2.0.1.tgz";
      name = "miller-rabin-2.0.1.tgz";
      sha1 = "8c0e07fef1bc24900a78895434d39ce4024d4648";
    };
    deps = {
      "bn.js-2.2.0" = self.by-version."bn.js"."2.2.0";
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
  by-spec."mime-db".">= 1.19.0 < 2" =
    self.by-version."mime-db"."1.19.0";
  by-version."mime-db"."1.19.0" = self.buildNodePackage {
    name = "mime-db-1.19.0";
    version = "1.19.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-db/-/mime-db-1.19.0.tgz";
      name = "mime-db-1.19.0.tgz";
      sha1 = "496a18198a7ce8244534e25bb102b74fb420fd56";
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
  by-spec."mime-db"."~1.19.0" =
    self.by-version."mime-db"."1.19.0";
  by-spec."mime-types"."^2.1.3" =
    self.by-version."mime-types"."2.1.7";
  by-version."mime-types"."2.1.7" = self.buildNodePackage {
    name = "mime-types-2.1.7";
    version = "2.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-2.1.7.tgz";
      name = "mime-types-2.1.7.tgz";
      sha1 = "ff603970e3c731ef6f7f4df3c9a0f463a13c2755";
    };
    deps = {
      "mime-db-1.19.0" = self.by-version."mime-db"."1.19.0";
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
  by-spec."mime-types"."~2.1.4" =
    self.by-version."mime-types"."2.1.7";
  by-spec."mime-types"."~2.1.6" =
    self.by-version."mime-types"."2.1.7";
  by-spec."mime-types"."~2.1.7" =
    self.by-version."mime-types"."2.1.7";
  by-spec."minimalistic-assert"."^1.0.0" =
    self.by-version."minimalistic-assert"."1.0.0";
  by-version."minimalistic-assert"."1.0.0" = self.buildNodePackage {
    name = "minimalistic-assert-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimalistic-assert/-/minimalistic-assert-1.0.0.tgz";
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
      url = "http://registry.npmjs.org/minimatch/-/minimatch-0.3.0.tgz";
      name = "minimatch-0.3.0.tgz";
      sha1 = "275d8edaac4f1bb3326472089e7949c8394699dd";
    };
    deps = {
      "lru-cache-2.7.0" = self.by-version."lru-cache"."2.7.0";
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
      "lru-cache-2.7.0" = self.by-version."lru-cache"."2.7.0";
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
      "brace-expansion-1.1.1" = self.by-version."brace-expansion"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^1.0.0" =
    self.by-version."minimatch"."1.0.0";
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
      "brace-expansion-1.1.1" = self.by-version."brace-expansion"."1.1.1";
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
  by-spec."minimatch"."^2.0.7" =
    self.by-version."minimatch"."2.0.10";
  by-spec."minimatch"."~0.2.0" =
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
      "lru-cache-2.7.0" = self.by-version."lru-cache"."2.7.0";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."~0.2.11" =
    self.by-version."minimatch"."0.2.14";
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
  by-spec."minimist"."^1.1.0" =
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
  by-spec."minimist"."^1.1.2" =
    self.by-version."minimist"."1.2.0";
  by-spec."minimist"."^1.1.3" =
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
  by-spec."mkdirp"."0.5" =
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
    self.by-version."mocha"."2.3.3";
  by-version."mocha"."2.3.3" = self.buildNodePackage {
    name = "mocha-2.3.3";
    version = "2.3.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mocha/-/mocha-2.3.3.tgz";
      name = "mocha-2.3.3.tgz";
      sha1 = "96488c49bfd71d86a518cb941e291a83f48d8856";
    };
    deps = {
      "commander-2.3.0" = self.by-version."commander"."2.3.0";
      "debug-2.0.0" = self.by-version."debug"."2.0.0";
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
  by-spec."mocha"."^2.3.2" =
    self.by-version."mocha"."2.3.3";
  "mocha" = self.by-version."mocha"."2.3.3";
  by-spec."module-deps"."^3.6.3" =
    self.by-version."module-deps"."3.9.1";
  by-version."module-deps"."3.9.1" = self.buildNodePackage {
    name = "module-deps-3.9.1";
    version = "3.9.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/module-deps/-/module-deps-3.9.1.tgz";
      name = "module-deps-3.9.1.tgz";
      sha1 = "ea75caf9199090d25b0d5512b5acacb96e7f87f3";
    };
    deps = {
      "JSONStream-1.0.6" = self.by-version."JSONStream"."1.0.6";
      "browser-resolve-1.10.0" = self.by-version."browser-resolve"."1.10.0";
      "concat-stream-1.4.10" = self.by-version."concat-stream"."1.4.10";
      "defined-1.0.0" = self.by-version."defined"."1.0.0";
      "detective-4.2.0" = self.by-version."detective"."4.2.0";
      "duplexer2-0.0.2" = self.by-version."duplexer2"."0.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "parents-1.0.1" = self.by-version."parents"."1.0.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
      "stream-combiner2-1.0.2" = self.by-version."stream-combiner2"."1.0.2";
      "subarg-1.0.0" = self.by-version."subarg"."1.0.0";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ms"."0.6.2" =
    self.by-version."ms"."0.6.2";
  by-version."ms"."0.6.2" = self.buildNodePackage {
    name = "ms-0.6.2";
    version = "0.6.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.6.2.tgz";
      name = "ms-0.6.2.tgz";
      sha1 = "d89c2124c6fdc1353d65a8b77bf1aac4b193708c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."nan"."^2.0.2" =
    self.by-version."nan"."2.1.0";
  by-version."nan"."2.1.0" = self.buildNodePackage {
    name = "nan-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-2.1.0.tgz";
      name = "nan-2.1.0.tgz";
      sha1 = "020a7ccedc63fdee85f85967d5607849e74abbe8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nan"."^2.0.5" =
    self.by-version."nan"."2.1.0";
  by-spec."nan"."^2.0.8" =
    self.by-version."nan"."2.1.0";
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
    self.by-version."node-gyp"."3.0.3";
  by-version."node-gyp"."3.0.3" = self.buildNodePackage {
    name = "node-gyp-3.0.3";
    version = "3.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-gyp/-/node-gyp-3.0.3.tgz";
      name = "node-gyp-3.0.3.tgz";
      sha1 = "9b004219f4fa9efbfd78c5fc674aa12e58fb8694";
    };
    deps = {
      "fstream-1.0.8" = self.by-version."fstream"."1.0.8";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.4" = self.by-version."nopt"."3.0.4";
      "npmlog-1.2.1" = self.by-version."npmlog"."1.2.1";
      "osenv-0.1.3" = self.by-version."osenv"."0.1.3";
      "path-array-1.0.0" = self.by-version."path-array"."1.0.0";
      "request-2.65.0" = self.by-version."request"."2.65.0";
      "rimraf-2.4.3" = self.by-version."rimraf"."2.4.3";
      "semver-5.0.3" = self.by-version."semver"."5.0.3";
      "tar-1.0.3" = self.by-version."tar"."1.0.3";
      "which-1.2.0" = self.by-version."which"."1.2.0";
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
      "buffer-3.5.1" = self.by-version."buffer"."3.5.1";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "constants-browserify-0.0.1" = self.by-version."constants-browserify"."0.0.1";
      "crypto-browserify-3.2.8" = self.by-version."crypto-browserify"."3.2.8";
      "domain-browser-1.1.4" = self.by-version."domain-browser"."1.1.4";
      "events-1.1.0" = self.by-version."events"."1.1.0";
      "http-browserify-1.7.0" = self.by-version."http-browserify"."1.7.0";
      "https-browserify-0.0.0" = self.by-version."https-browserify"."0.0.0";
      "os-browserify-0.1.2" = self.by-version."os-browserify"."0.1.2";
      "path-browserify-0.0.0" = self.by-version."path-browserify"."0.0.0";
      "process-0.11.2" = self.by-version."process"."0.11.2";
      "punycode-1.3.2" = self.by-version."punycode"."1.3.2";
      "querystring-es3-0.2.1" = self.by-version."querystring-es3"."0.2.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "stream-browserify-1.0.0" = self.by-version."stream-browserify"."1.0.0";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "timers-browserify-1.4.1" = self.by-version."timers-browserify"."1.4.1";
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
  by-spec."node-pre-gyp"."^0.6.12" =
    self.by-version."node-pre-gyp"."0.6.13";
  by-version."node-pre-gyp"."0.6.13" = self.buildNodePackage {
    name = "node-pre-gyp-0.6.13";
    version = "0.6.13";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-pre-gyp/-/node-pre-gyp-0.6.13.tgz";
      name = "node-pre-gyp-0.6.13.tgz";
      sha1 = "aad6eef246a05daa92a7746f1e1ddd07dc2207a2";
    };
    deps = {
      "nopt-3.0.4" = self.by-version."nopt"."3.0.4";
      "npmlog-1.2.1" = self.by-version."npmlog"."1.2.1";
      "request-2.65.0" = self.by-version."request"."2.65.0";
      "semver-5.0.3" = self.by-version."semver"."5.0.3";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "tar-pack-2.0.1" = self.by-version."tar-pack"."2.0.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rc-1.1.2" = self.by-version."rc"."1.1.2";
      "rimraf-2.4.3" = self.by-version."rimraf"."2.4.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-sass"."^3.2.0" =
    self.by-version."node-sass"."3.3.3";
  by-version."node-sass"."3.3.3" = self.buildNodePackage {
    name = "node-sass-3.3.3";
    version = "3.3.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-sass/-/node-sass-3.3.3.tgz";
      name = "node-sass-3.3.3.tgz";
      sha1 = "620fe2e3149993405ec1b517f8487b6e643b228a";
    };
    deps = {
      "async-foreach-0.1.3" = self.by-version."async-foreach"."0.1.3";
      "chalk-1.1.1" = self.by-version."chalk"."1.1.1";
      "cross-spawn-2.0.0" = self.by-version."cross-spawn"."2.0.0";
      "gaze-0.5.2" = self.by-version."gaze"."0.5.2";
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
      "meow-3.4.2" = self.by-version."meow"."3.4.2";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nan-2.1.0" = self.by-version."nan"."2.1.0";
      "npmconf-2.1.2" = self.by-version."npmconf"."2.1.2";
      "node-gyp-3.0.3" = self.by-version."node-gyp"."3.0.3";
      "request-2.65.0" = self.by-version."request"."2.65.0";
      "sass-graph-2.0.1" = self.by-version."sass-graph"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-sass"."^3.3.3" =
    self.by-version."node-sass"."3.3.3";
  "node-sass" = self.by-version."node-sass"."3.3.3";
  by-spec."node-uuid"."~1.4.0" =
    self.by-version."node-uuid"."1.4.3";
  by-version."node-uuid"."1.4.3" = self.buildNodePackage {
    name = "node-uuid-1.4.3";
    version = "1.4.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-uuid/-/node-uuid-1.4.3.tgz";
      name = "node-uuid-1.4.3.tgz";
      sha1 = "319bb7a56e7cb63f00b5c0cd7851cd4b4ddf1df9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-uuid"."~1.4.3" =
    self.by-version."node-uuid"."1.4.3";
  by-spec."nopt"."2 || 3" =
    self.by-version."nopt"."3.0.4";
  by-version."nopt"."3.0.4" = self.buildNodePackage {
    name = "nopt-3.0.4";
    version = "3.0.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nopt/-/nopt-3.0.4.tgz";
      name = "nopt-3.0.4.tgz";
      sha1 = "dd63bc9c72a6e4e85b85cdc0ca314598facede5e";
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
    self.by-version."nopt"."3.0.4";
  by-spec."normalize-package-data"."^2.3.2" =
    self.by-version."normalize-package-data"."2.3.4";
  by-version."normalize-package-data"."2.3.4" = self.buildNodePackage {
    name = "normalize-package-data-2.3.4";
    version = "2.3.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/normalize-package-data/-/normalize-package-data-2.3.4.tgz";
      name = "normalize-package-data-2.3.4.tgz";
      sha1 = "b92233ce6ef04fbd6bc0c05dead155af33a623e0";
    };
    deps = {
      "hosted-git-info-2.1.4" = self.by-version."hosted-git-info"."2.1.4";
      "is-builtin-module-1.0.0" = self.by-version."is-builtin-module"."1.0.0";
      "semver-5.0.3" = self.by-version."semver"."5.0.3";
      "validate-npm-package-license-3.0.1" = self.by-version."validate-npm-package-license"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."normalize-package-data"."^2.3.4" =
    self.by-version."normalize-package-data"."2.3.4";
  by-spec."normalize-url"."^1.3.1" =
    self.by-version."normalize-url"."1.3.1";
  by-version."normalize-url"."1.3.1" = self.buildNodePackage {
    name = "normalize-url-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/normalize-url/-/normalize-url-1.3.1.tgz";
      name = "normalize-url-1.3.1.tgz";
      sha1 = "28f605629aad3a14ce356ae9937a76ff072886a7";
    };
    deps = {
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "prepend-http-1.0.3" = self.by-version."prepend-http"."1.0.3";
      "query-string-2.4.2" = self.by-version."query-string"."2.4.2";
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
      "config-chain-1.1.9" = self.by-version."config-chain"."1.1.9";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.4" = self.by-version."nopt"."3.0.4";
      "once-1.3.2" = self.by-version."once"."1.3.2";
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
      "config-chain-1.1.9" = self.by-version."config-chain"."1.1.9";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.4" = self.by-version."nopt"."3.0.4";
      "once-1.3.2" = self.by-version."once"."1.3.2";
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
      "ansi-0.3.0" = self.by-version."ansi"."0.3.0";
      "are-we-there-yet-1.0.4" = self.by-version."are-we-there-yet"."1.0.4";
      "gauge-1.2.2" = self.by-version."gauge"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."npmlog"."~1.2.0" =
    self.by-version."npmlog"."1.2.1";
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
  by-spec."object-assign"."^2.0.0" =
    self.by-version."object-assign"."2.1.1";
  by-version."object-assign"."2.1.1" = self.buildNodePackage {
    name = "object-assign-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-2.1.1.tgz";
      name = "object-assign-2.1.1.tgz";
      sha1 = "43c36e5d569ff8e4816c4efa8be02d26967c18aa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^3.0.0" =
    self.by-version."object-assign"."3.0.0";
  by-version."object-assign"."3.0.0" = self.buildNodePackage {
    name = "object-assign-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-3.0.0.tgz";
      name = "object-assign-3.0.0.tgz";
      sha1 = "9bedd5ca0897949bca47e7ff408062d549f587f2";
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
  by-spec."object-keys"."1.0.1" =
    self.by-version."object-keys"."1.0.1";
  by-version."object-keys"."1.0.1" = self.buildNodePackage {
    name = "object-keys-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-keys/-/object-keys-1.0.1.tgz";
      name = "object-keys-1.0.1.tgz";
      sha1 = "55802e85842c26bbb5ebbc157abf3be302569ba8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object.omit"."^1.1.0" =
    self.by-version."object.omit"."1.1.0";
  by-version."object.omit"."1.1.0" = self.buildNodePackage {
    name = "object.omit-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object.omit/-/object.omit-1.1.0.tgz";
      name = "object.omit-1.1.0.tgz";
      sha1 = "9d17ea16778e5057deba7752c6f55f1496829e94";
    };
    deps = {
      "for-own-0.1.3" = self.by-version."for-own"."0.1.3";
      "isobject-1.0.2" = self.by-version."isobject"."1.0.2";
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
    self.by-version."once"."1.3.2";
  by-version."once"."1.3.2" = self.buildNodePackage {
    name = "once-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/once/-/once-1.3.2.tgz";
      name = "once-1.3.2.tgz";
      sha1 = "d8feeca93b039ec1dcdee7741c92bdac5e28081b";
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
    self.by-version."once"."1.3.2";
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
  by-spec."optimist"."~0.3.5" =
    self.by-version."optimist"."0.3.7";
  by-version."optimist"."0.3.7" = self.buildNodePackage {
    name = "optimist-0.3.7";
    version = "0.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.3.7.tgz";
      name = "optimist-0.3.7.tgz";
      sha1 = "c90941ad59e4273328923074d2cf2e7cbc6ec0d9";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."~0.6.0" =
    self.by-version."optimist"."0.6.1";
  by-spec."optionator"."^0.5.0" =
    self.by-version."optionator"."0.5.0";
  by-version."optionator"."0.5.0" = self.buildNodePackage {
    name = "optionator-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optionator/-/optionator-0.5.0.tgz";
      name = "optionator-0.5.0.tgz";
      sha1 = "b75a8995a2d417df25b6e4e3862f50aa88651368";
    };
    deps = {
      "prelude-ls-1.1.2" = self.by-version."prelude-ls"."1.1.2";
      "deep-is-0.1.3" = self.by-version."deep-is"."0.1.3";
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
      "type-check-0.3.1" = self.by-version."type-check"."0.3.1";
      "levn-0.2.5" = self.by-version."levn"."0.2.5";
      "fast-levenshtein-1.0.7" = self.by-version."fast-levenshtein"."1.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."os-browserify"."~0.1.1" =
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
  by-spec."os-browserify"."~0.1.2" =
    self.by-version."os-browserify"."0.1.2";
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
  by-spec."os-tmpdir"."^1.0.1" =
    self.by-version."os-tmpdir"."1.0.1";
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
  by-spec."output-file-sync"."^1.1.0" =
    self.by-version."output-file-sync"."1.1.1";
  by-version."output-file-sync"."1.1.1" = self.buildNodePackage {
    name = "output-file-sync-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/output-file-sync/-/output-file-sync-1.1.1.tgz";
      name = "output-file-sync-1.1.1.tgz";
      sha1 = "a4653997c2df63c9811f7f1d7a1208404ed32e9e";
    };
    deps = {
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
    self.by-version."param-case"."1.1.1";
  by-version."param-case"."1.1.1" = self.buildNodePackage {
    name = "param-case-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/param-case/-/param-case-1.1.1.tgz";
      name = "param-case-1.1.1.tgz";
      sha1 = "ee5be71ddb7f5c932dd7dc09b91a77730eac560d";
    };
    deps = {
      "sentence-case-1.1.2" = self.by-version."sentence-case"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parents"."^1.0.0" =
    self.by-version."parents"."1.0.1";
  by-version."parents"."1.0.1" = self.buildNodePackage {
    name = "parents-1.0.1";
    version = "1.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/parents/-/parents-1.0.1.tgz";
      name = "parents-1.0.1.tgz";
      sha1 = "fedd4d2bf193a77745fe71e371d73c3307d9c751";
    };
    deps = {
      "path-platform-0.11.15" = self.by-version."path-platform"."0.11.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parents"."^1.0.1" =
    self.by-version."parents"."1.0.1";
  by-spec."parse-asn1"."^3.0.0" =
    self.by-version."parse-asn1"."3.0.2";
  by-version."parse-asn1"."3.0.2" = self.buildNodePackage {
    name = "parse-asn1-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parse-asn1/-/parse-asn1-3.0.2.tgz";
      name = "parse-asn1-3.0.2.tgz";
      sha1 = "b42431beba32e08eac6d9153a54430bfd95d2d5e";
    };
    deps = {
      "asn1.js-2.2.1" = self.by-version."asn1.js"."2.2.1";
      "browserify-aes-1.0.5" = self.by-version."browserify-aes"."1.0.5";
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
  by-spec."parse-glob"."^3.0.1" =
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
      "error-ex-1.2.0" = self.by-version."error-ex"."1.2.0";
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
  by-spec."parseuri"."0.0.2" =
    self.by-version."parseuri"."0.0.2";
  by-version."parseuri"."0.0.2" = self.buildNodePackage {
    name = "parseuri-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseuri/-/parseuri-0.0.2.tgz";
      name = "parseuri-0.0.2.tgz";
      sha1 = "db41878f2d6964718be870b3140973d8093be156";
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
  by-spec."parseurl"."~1.3.0" =
    self.by-version."parseurl"."1.3.0";
  by-version."parseurl"."1.3.0" = self.buildNodePackage {
    name = "parseurl-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseurl/-/parseurl-1.3.0.tgz";
      name = "parseurl-1.3.0.tgz";
      sha1 = "b58046db4223e145afa76009e61bac87cc2281b3";
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
    self.by-version."pascal-case"."1.1.1";
  by-version."pascal-case"."1.1.1" = self.buildNodePackage {
    name = "pascal-case-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pascal-case/-/pascal-case-1.1.1.tgz";
      name = "pascal-case-1.1.1.tgz";
      sha1 = "460d7d112e34228d344e1e66372668404e776e73";
    };
    deps = {
      "camel-case-1.1.2" = self.by-version."camel-case"."1.1.2";
      "upper-case-first-1.1.1" = self.by-version."upper-case-first"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-array"."^1.0.0" =
    self.by-version."path-array"."1.0.0";
  by-version."path-array"."1.0.0" = self.buildNodePackage {
    name = "path-array-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-array/-/path-array-1.0.0.tgz";
      name = "path-array-1.0.0.tgz";
      sha1 = "6c14130c33084f0150553c657b38397ab67aaa4e";
    };
    deps = {
      "array-index-0.1.1" = self.by-version."array-index"."0.1.1";
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
  by-spec."path-browserify"."~0.0.0" =
    self.by-version."path-browserify"."0.0.0";
  by-spec."path-case"."^1.1.0" =
    self.by-version."path-case"."1.1.1";
  by-version."path-case"."1.1.1" = self.buildNodePackage {
    name = "path-case-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-case/-/path-case-1.1.1.tgz";
      name = "path-case-1.1.1.tgz";
      sha1 = "fbc81d59d317e95157fedee9b224a328acb68ffe";
    };
    deps = {
      "sentence-case-1.1.2" = self.by-version."sentence-case"."1.1.2";
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
      url = "http://registry.npmjs.org/path-exists/-/path-exists-1.0.0.tgz";
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
    self.by-version."path-exists"."2.0.0";
  by-version."path-exists"."2.0.0" = self.buildNodePackage {
    name = "path-exists-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-exists/-/path-exists-2.0.0.tgz";
      name = "path-exists-2.0.0.tgz";
      sha1 = "c4efe37d7fdc792f9a029ce7906e095e169f9be1";
    };
    deps = {
      "pinkie-promise-1.0.0" = self.by-version."pinkie-promise"."1.0.0";
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
  by-spec."path-platform"."~0.11.15" =
    self.by-version."path-platform"."0.11.15";
  by-version."path-platform"."0.11.15" = self.buildNodePackage {
    name = "path-platform-0.11.15";
    version = "0.11.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-platform/-/path-platform-0.11.15.tgz";
      name = "path-platform-0.11.15.tgz";
      sha1 = "e864217f74c36850f0852b78dc7bf7d4a5721bf2";
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
    self.by-version."path-type"."1.0.0";
  by-version."path-type"."1.0.0" = self.buildNodePackage {
    name = "path-type-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-type/-/path-type-1.0.0.tgz";
      name = "path-type-1.0.0.tgz";
      sha1 = "51b127d4884100f5808256e45d471716ba16f62d";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "pify-2.2.0" = self.by-version."pify"."2.2.0";
      "pinkie-promise-1.0.0" = self.by-version."pinkie-promise"."1.0.0";
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
      url = "http://registry.npmjs.org/pbkdf2/-/pbkdf2-3.0.4.tgz";
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
    self.by-version."phantomjs"."1.9.18";
  by-version."phantomjs"."1.9.18" = self.buildNodePackage {
    name = "phantomjs-1.9.18";
    version = "1.9.18";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/phantomjs/-/phantomjs-1.9.18.tgz";
      name = "phantomjs-1.9.18.tgz";
      sha1 = "e876fce89b143a6c01c24e0332ef3822851cace1";
    };
    deps = {
      "adm-zip-0.4.4" = self.by-version."adm-zip"."0.4.4";
      "fs-extra-0.23.1" = self.by-version."fs-extra"."0.23.1";
      "kew-0.4.0" = self.by-version."kew"."0.4.0";
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
  by-spec."phantomjs"."^1.9.18" =
    self.by-version."phantomjs"."1.9.18";
  "phantomjs" = self.by-version."phantomjs"."1.9.18";
  by-spec."pify"."^2.0.0" =
    self.by-version."pify"."2.2.0";
  by-version."pify"."2.2.0" = self.buildNodePackage {
    name = "pify-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pify/-/pify-2.2.0.tgz";
      name = "pify-2.2.0.tgz";
      sha1 = "c65e870246c78b5a4ce6c0a6f35048c9aecd6cff";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie"."^1.0.0" =
    self.by-version."pinkie"."1.0.0";
  by-version."pinkie"."1.0.0" = self.buildNodePackage {
    name = "pinkie-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pinkie/-/pinkie-1.0.0.tgz";
      name = "pinkie-1.0.0.tgz";
      sha1 = "5a47f28ba1015d0201bda7bf0f358e47bec8c7e4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie-promise"."^1.0.0" =
    self.by-version."pinkie-promise"."1.0.0";
  by-version."pinkie-promise"."1.0.0" = self.buildNodePackage {
    name = "pinkie-promise-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pinkie-promise/-/pinkie-promise-1.0.0.tgz";
      name = "pinkie-promise-1.0.0.tgz";
      sha1 = "d1da67f5482563bb7cf57f286ae2822ecfbf3670";
    };
    deps = {
      "pinkie-1.0.0" = self.by-version."pinkie"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss"."^5.0.2" =
    self.by-version."postcss"."5.0.10";
  by-version."postcss"."5.0.10" = self.buildNodePackage {
    name = "postcss-5.0.10";
    version = "5.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss/-/postcss-5.0.10.tgz";
      name = "postcss-5.0.10.tgz";
      sha1 = "86eacc9036c5c063e27138bf9503e1de26ab69fe";
    };
    deps = {
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "source-map-0.5.1" = self.by-version."source-map"."0.5.1";
      "js-base64-2.1.9" = self.by-version."js-base64"."2.1.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss"."^5.0.4" =
    self.by-version."postcss"."5.0.10";
  by-spec."postcss"."^5.0.5" =
    self.by-version."postcss"."5.0.10";
  by-spec."postcss"."^5.0.6" =
    self.by-version."postcss"."5.0.10";
  by-spec."postcss"."^5.0.8" =
    self.by-version."postcss"."5.0.10";
  by-spec."postcss"."^5.0.9" =
    self.by-version."postcss"."5.0.10";
  by-spec."postcss-calc"."^5.0.0" =
    self.by-version."postcss-calc"."5.0.0";
  by-version."postcss-calc"."5.0.0" = self.buildNodePackage {
    name = "postcss-calc-5.0.0";
    version = "5.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-calc/-/postcss-calc-5.0.0.tgz";
      name = "postcss-calc-5.0.0.tgz";
      sha1 = "234f0600e3ded531f016ad045ed46b89aef552c1";
    };
    deps = {
      "postcss-message-helpers-2.0.0" = self.by-version."postcss-message-helpers"."2.0.0";
      "reduce-css-calc-1.2.0" = self.by-version."reduce-css-calc"."1.2.0";
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-colormin"."^2.1.5" =
    self.by-version."postcss-colormin"."2.1.7";
  by-version."postcss-colormin"."2.1.7" = self.buildNodePackage {
    name = "postcss-colormin-2.1.7";
    version = "2.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-colormin/-/postcss-colormin-2.1.7.tgz";
      name = "postcss-colormin-2.1.7.tgz";
      sha1 = "b9e30b04d6826be6858c124c19abf4135518d1e4";
    };
    deps = {
      "colr-convert-1.0.5" = self.by-version."colr-convert"."1.0.5";
      "css-color-names-0.0.2" = self.by-version."css-color-names"."0.0.2";
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-convert-values"."^2.3.3" =
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-discard-comments"."^2.0.1" =
    self.by-version."postcss-discard-comments"."2.0.2";
  by-version."postcss-discard-comments"."2.0.2" = self.buildNodePackage {
    name = "postcss-discard-comments-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-discard-comments/-/postcss-discard-comments-2.0.2.tgz";
      name = "postcss-discard-comments-2.0.2.tgz";
      sha1 = "9899744aad1321f9f13ffb8c6727606afeca50f8";
    };
    deps = {
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "uniqid-1.0.0" = self.by-version."uniqid"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-merge-idents"."^2.1.1" =
    self.by-version."postcss-merge-idents"."2.1.1";
  by-version."postcss-merge-idents"."2.1.1" = self.buildNodePackage {
    name = "postcss-merge-idents-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-merge-idents/-/postcss-merge-idents-2.1.1.tgz";
      name = "postcss-merge-idents-2.1.1.tgz";
      sha1 = "52aa80fd035a837bb10c0fa46e218444766e8b48";
    };
    deps = {
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-merge-rules"."^2.0.0" =
    self.by-version."postcss-merge-rules"."2.0.1";
  by-version."postcss-merge-rules"."2.0.1" = self.buildNodePackage {
    name = "postcss-merge-rules-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-merge-rules/-/postcss-merge-rules-2.0.1.tgz";
      name = "postcss-merge-rules-2.0.1.tgz";
      sha1 = "4cf0a193468d30a1ddcaa11ae0fddee1d6df5236";
    };
    deps = {
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
      "uniqs-2.0.0" = self.by-version."uniqs"."2.0.0";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
      "uniqs-2.0.0" = self.by-version."uniqs"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-minify-selectors"."^2.0.1" =
    self.by-version."postcss-minify-selectors"."2.0.1";
  by-version."postcss-minify-selectors"."2.0.1" = self.buildNodePackage {
    name = "postcss-minify-selectors-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-minify-selectors/-/postcss-minify-selectors-2.0.1.tgz";
      name = "postcss-minify-selectors-2.0.1.tgz";
      sha1 = "15e6b99fc0a6197654912174ea834437a18b1382";
    };
    deps = {
      "alphanum-sort-1.0.2" = self.by-version."alphanum-sort"."1.0.2";
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-selector-parser-1.3.0" = self.by-version."postcss-selector-parser"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-modules-extract-imports"."1.0.0-beta2" =
    self.by-version."postcss-modules-extract-imports"."1.0.0-beta2";
  by-version."postcss-modules-extract-imports"."1.0.0-beta2" = self.buildNodePackage {
    name = "postcss-modules-extract-imports-1.0.0-beta2";
    version = "1.0.0-beta2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-modules-extract-imports/-/postcss-modules-extract-imports-1.0.0-beta2.tgz";
      name = "postcss-modules-extract-imports-1.0.0-beta2.tgz";
      sha1 = "f1d3533eea3fe79dffa97a2371cc916393401dc5";
    };
    deps = {
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-modules-local-by-default"."1.0.0-beta1" =
    self.by-version."postcss-modules-local-by-default"."1.0.0-beta1";
  by-version."postcss-modules-local-by-default"."1.0.0-beta1" = self.buildNodePackage {
    name = "postcss-modules-local-by-default-1.0.0-beta1";
    version = "1.0.0-beta1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-modules-local-by-default/-/postcss-modules-local-by-default-1.0.0-beta1.tgz";
      name = "postcss-modules-local-by-default-1.0.0-beta1.tgz";
      sha1 = "89b3ad65f669973386804953948aad23b7330d5f";
    };
    deps = {
      "css-selector-tokenizer-0.5.4" = self.by-version."css-selector-tokenizer"."0.5.4";
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-modules-scope"."1.0.0-beta2" =
    self.by-version."postcss-modules-scope"."1.0.0-beta2";
  by-version."postcss-modules-scope"."1.0.0-beta2" = self.buildNodePackage {
    name = "postcss-modules-scope-1.0.0-beta2";
    version = "1.0.0-beta2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-modules-scope/-/postcss-modules-scope-1.0.0-beta2.tgz";
      name = "postcss-modules-scope-1.0.0-beta2.tgz";
      sha1 = "76af8b0008ede646bb9db675e27bc4ee3aa044bc";
    };
    deps = {
      "css-selector-tokenizer-0.5.4" = self.by-version."css-selector-tokenizer"."0.5.4";
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-normalize-url"."^3.0.3" =
    self.by-version."postcss-normalize-url"."3.0.3";
  by-version."postcss-normalize-url"."3.0.3" = self.buildNodePackage {
    name = "postcss-normalize-url-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-normalize-url/-/postcss-normalize-url-3.0.3.tgz";
      name = "postcss-normalize-url-3.0.3.tgz";
      sha1 = "075da07b7f1ba7688359bffae80256224b9222e0";
    };
    deps = {
      "is-absolute-url-2.0.0" = self.by-version."is-absolute-url"."2.0.0";
      "normalize-url-1.3.1" = self.by-version."normalize-url"."1.3.1";
      "object-assign-4.0.1" = self.by-version."object-assign"."4.0.1";
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-selector-parser"."^1.1.4" =
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
    self.by-version."postcss-svgo"."2.0.4";
  by-version."postcss-svgo"."2.0.4" = self.buildNodePackage {
    name = "postcss-svgo-2.0.4";
    version = "2.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-svgo/-/postcss-svgo-2.0.4.tgz";
      name = "postcss-svgo-2.0.4.tgz";
      sha1 = "20dd275b09e93e7c860adbd9d93d556d3b08c9e0";
    };
    deps = {
      "is-svg-1.1.1" = self.by-version."is-svg"."1.1.1";
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "postcss-value-parser-3.1.1" = self.by-version."postcss-value-parser"."3.1.1";
      "svgo-0.5.6" = self.by-version."svgo"."0.5.6";
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
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
      "uniqs-2.0.0" = self.by-version."uniqs"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."postcss-value-parser"."^3.0.1" =
    self.by-version."postcss-value-parser"."3.1.1";
  by-version."postcss-value-parser"."3.1.1" = self.buildNodePackage {
    name = "postcss-value-parser-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-value-parser/-/postcss-value-parser-3.1.1.tgz";
      name = "postcss-value-parser-3.1.1.tgz";
      sha1 = "274968355c74c06e8af43312f8dd89c2a5eeb905";
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
    self.by-version."postcss-value-parser"."3.1.1";
  by-spec."postcss-value-parser"."^3.0.3" =
    self.by-version."postcss-value-parser"."3.1.1";
  by-spec."postcss-zindex"."^2.0.0" =
    self.by-version."postcss-zindex"."2.0.0";
  by-version."postcss-zindex"."2.0.0" = self.buildNodePackage {
    name = "postcss-zindex-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/postcss-zindex/-/postcss-zindex-2.0.0.tgz";
      name = "postcss-zindex-2.0.0.tgz";
      sha1 = "636dde2b07ef4a2b6d7ad8b034e237f535efd2b9";
    };
    deps = {
      "postcss-5.0.10" = self.by-version."postcss"."5.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."prelude-ls"."~1.1.0" =
    self.by-version."prelude-ls"."1.1.2";
  by-version."prelude-ls"."1.1.2" = self.buildNodePackage {
    name = "prelude-ls-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/prelude-ls/-/prelude-ls-1.1.2.tgz";
      name = "prelude-ls-1.1.2.tgz";
      sha1 = "21932a549f5e52ffd9a827f570e04be62a97da54";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."prelude-ls"."~1.1.1" =
    self.by-version."prelude-ls"."1.1.2";
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
  by-spec."private"."^0.1.6" =
    self.by-version."private"."0.1.6";
  by-version."private"."0.1.6" = self.buildNodePackage {
    name = "private-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/private/-/private-0.1.6.tgz";
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
  by-spec."private"."~0.1.6" =
    self.by-version."private"."0.1.6";
  by-spec."process"."^0.10.0" =
    self.by-version."process"."0.10.1";
  by-version."process"."0.10.1" = self.buildNodePackage {
    name = "process-0.10.1";
    version = "0.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/process/-/process-0.10.1.tgz";
      name = "process-0.10.1.tgz";
      sha1 = "842457cc51cfed72dc775afeeafb8c6034372725";
    };
    deps = {
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
  by-spec."process-nextick-args"."~1.0.0" =
    self.by-version."process-nextick-args"."1.0.3";
  by-version."process-nextick-args"."1.0.3" = self.buildNodePackage {
    name = "process-nextick-args-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/process-nextick-args/-/process-nextick-args-1.0.3.tgz";
      name = "process-nextick-args-1.0.3.tgz";
      sha1 = "e272eed825d5e9f4ea74d8d73b1fe311c3beb630";
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
    self.by-version."promise"."7.0.4";
  by-version."promise"."7.0.4" = self.buildNodePackage {
    name = "promise-7.0.4";
    version = "7.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/promise/-/promise-7.0.4.tgz";
      name = "promise-7.0.4.tgz";
      sha1 = "363e84a4c36c8356b890fed62c91ce85d02ed539";
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
  by-spec."proxy-addr"."~1.0.8" =
    self.by-version."proxy-addr"."1.0.8";
  by-version."proxy-addr"."1.0.8" = self.buildNodePackage {
    name = "proxy-addr-1.0.8";
    version = "1.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/proxy-addr/-/proxy-addr-1.0.8.tgz";
      name = "proxy-addr-1.0.8.tgz";
      sha1 = "db54ec878bcc1053d57646609219b3715678bafe";
    };
    deps = {
      "forwarded-0.1.0" = self.by-version."forwarded"."0.1.0";
      "ipaddr.js-1.0.1" = self.by-version."ipaddr.js"."1.0.1";
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
  by-spec."public-encrypt"."^2.0.0" =
    self.by-version."public-encrypt"."2.0.1";
  by-version."public-encrypt"."2.0.1" = self.buildNodePackage {
    name = "public-encrypt-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/public-encrypt/-/public-encrypt-2.0.1.tgz";
      name = "public-encrypt-2.0.1.tgz";
      sha1 = "ef150418728a93e70700fa5c6a94016e0e596493";
    };
    deps = {
      "bn.js-2.2.0" = self.by-version."bn.js"."2.2.0";
      "browserify-rsa-2.0.1" = self.by-version."browserify-rsa"."2.0.1";
      "create-hash-1.1.2" = self.by-version."create-hash"."1.1.2";
      "parse-asn1-3.0.2" = self.by-version."parse-asn1"."3.0.2";
      "randombytes-2.0.1" = self.by-version."randombytes"."2.0.1";
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
    self.by-version."punycode"."1.3.2";
  by-spec."punycode"."~1.2.3" =
    self.by-version."punycode"."1.2.4";
  by-version."punycode"."1.2.4" = self.buildNodePackage {
    name = "punycode-1.2.4";
    version = "1.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/punycode/-/punycode-1.2.4.tgz";
      name = "punycode-1.2.4.tgz";
      sha1 = "54008ac972aec74175def9cba6df7fa9d3918740";
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
  by-spec."q"."~1.1.2" =
    self.by-version."q"."1.1.2";
  by-version."q"."1.1.2" = self.buildNodePackage {
    name = "q-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/q/-/q-1.1.2.tgz";
      name = "q-1.1.2.tgz";
      sha1 = "6357e291206701d99f197ab84e57e8ad196f2a89";
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
  by-spec."qs"."5.1.0" =
    self.by-version."qs"."5.1.0";
  by-version."qs"."5.1.0" = self.buildNodePackage {
    name = "qs-5.1.0";
    version = "5.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-5.1.0.tgz";
      name = "qs-5.1.0.tgz";
      sha1 = "4d932e5c7ea411cca76a312d39a606200fd50cd9";
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
  by-spec."query-string"."^2.1.0" =
    self.by-version."query-string"."2.4.2";
  by-version."query-string"."2.4.2" = self.buildNodePackage {
    name = "query-string-2.4.2";
    version = "2.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/query-string/-/query-string-2.4.2.tgz";
      name = "query-string-2.4.2.tgz";
      sha1 = "7db0666420804baa92ae9f268962855a76143dfb";
    };
    deps = {
      "strict-uri-encode-1.0.2" = self.by-version."strict-uri-encode"."1.0.2";
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
  by-spec."randomatic"."^1.1.0" =
    self.by-version."randomatic"."1.1.0";
  by-version."randomatic"."1.1.0" = self.buildNodePackage {
    name = "randomatic-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/randomatic/-/randomatic-1.1.0.tgz";
      name = "randomatic-1.1.0.tgz";
      sha1 = "2ca36b9f93747aac985eb242749af88b45d5d42d";
    };
    deps = {
      "is-number-1.1.2" = self.by-version."is-number"."1.1.2";
      "kind-of-1.1.0" = self.by-version."kind-of"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."randombytes"."^2.0.0" =
    self.by-version."randombytes"."2.0.1";
  by-version."randombytes"."2.0.1" = self.buildNodePackage {
    name = "randombytes-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/randombytes/-/randombytes-2.0.1.tgz";
      name = "randombytes-2.0.1.tgz";
      sha1 = "18f4a9ba0dd07bdb1580bc9156091fcf90eabc6f";
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
    self.by-version."randombytes"."2.0.1";
  by-spec."range-parser"."~1.0.2" =
    self.by-version."range-parser"."1.0.2";
  by-version."range-parser"."1.0.2" = self.buildNodePackage {
    name = "range-parser-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/range-parser/-/range-parser-1.0.2.tgz";
      name = "range-parser-1.0.2.tgz";
      sha1 = "06a12a42e5131ba8e457cd892044867f2344e549";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."raw-body"."~2.1.4" =
    self.by-version."raw-body"."2.1.4";
  by-version."raw-body"."2.1.4" = self.buildNodePackage {
    name = "raw-body-2.1.4";
    version = "2.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/raw-body/-/raw-body-2.1.4.tgz";
      name = "raw-body-2.1.4.tgz";
      sha1 = "dcc3afe2e1fdfc620a812376f8e0fc3d2e62cb50";
    };
    deps = {
      "bytes-2.1.0" = self.by-version."bytes"."2.1.0";
      "iconv-lite-0.4.12" = self.by-version."iconv-lite"."0.4.12";
      "unpipe-1.0.0" = self.by-version."unpipe"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rc"."~1.1.0" =
    self.by-version."rc"."1.1.2";
  by-version."rc"."1.1.2" = self.buildNodePackage {
    name = "rc-1.1.2";
    version = "1.1.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rc/-/rc-1.1.2.tgz";
      name = "rc-1.1.2.tgz";
      sha1 = "8828cab62d8054602c063d9e5572686988c1c468";
    };
    deps = {
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "deep-extend-0.2.11" = self.by-version."deep-extend"."0.2.11";
      "strip-json-comments-0.1.3" = self.by-version."strip-json-comments"."0.1.3";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react".">=0.11.0 || ^0.14.0-rc" =
    self.by-version."react"."0.14.0";
  by-version."react"."0.14.0" = self.buildNodePackage {
    name = "react-0.14.0";
    version = "0.14.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react/-/react-0.14.0.tgz";
      name = "react-0.14.0.tgz";
      sha1 = "72e7c69233b082e37e1bbd3674a943db72d8f407";
    };
    deps = {
      "envify-3.4.0" = self.by-version."envify"."3.4.0";
      "fbjs-0.3.2" = self.by-version."fbjs"."0.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react".">=0.13.3 || ^0.14.0-beta3" =
    self.by-version."react"."0.14.0";
  by-spec."react"."^0.13.0" =
    self.by-version."react"."0.13.3";
  by-version."react"."0.13.3" = self.buildNodePackage {
    name = "react-0.13.3";
    version = "0.13.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react/-/react-0.13.3.tgz";
      name = "react-0.13.3.tgz";
      sha1 = "a2dfa85335d7dc02b82b482f089582e64cc13356";
    };
    deps = {
      "envify-3.4.0" = self.by-version."envify"."3.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react"."^0.13.3" =
    self.by-version."react"."0.13.3";
  "react" = self.by-version."react"."0.13.3";
  by-spec."react"."^0.14.0" =
    self.by-version."react"."0.14.0";
  by-spec."react-dom"."^0.14.0-rc1" =
    self.by-version."react-dom"."0.14.0";
  by-version."react-dom"."0.14.0" = self.buildNodePackage {
    name = "react-dom-0.14.0";
    version = "0.14.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-dom/-/react-dom-0.14.0.tgz";
      name = "react-dom-0.14.0.tgz";
      sha1 = "fc2e792ab27d88db009a76ecbcfd5611368a849e";
    };
    deps = {
      "react-0.14.0" = self.by-version."react"."0.14.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "react-dom" = self.by-version."react-dom"."0.14.0";
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
      self.by-version."react"."0.14.0"];
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
      "react-0.14.0" = self.by-version."react"."0.14.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "react-hot-loader" = self.by-version."react-hot-loader"."1.3.0";
  by-spec."react-json-tree"."^0.1.9" =
    self.by-version."react-json-tree"."0.1.9";
  by-version."react-json-tree"."0.1.9" = self.buildNodePackage {
    name = "react-json-tree-0.1.9";
    version = "0.1.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-json-tree/-/react-json-tree-0.1.9.tgz";
      name = "react-json-tree-0.1.9.tgz";
      sha1 = "497cbceec7956dc88065b92a4704910b7df8729b";
    };
    deps = {
      "babel-runtime-5.8.25" = self.by-version."babel-runtime"."5.8.25";
      "react-mixin-1.7.0" = self.by-version."react-mixin"."1.7.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react"."0.14.0"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-leaflet"."^0.7.0" =
    self.by-version."react-leaflet"."0.7.0";
  by-version."react-leaflet"."0.7.0" = self.buildNodePackage {
    name = "react-leaflet-0.7.0";
    version = "0.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-leaflet/-/react-leaflet-0.7.0.tgz";
      name = "react-leaflet-0.7.0.tgz";
      sha1 = "da7704817ce6696449156bc52cae58a001a7830b";
    };
    deps = {
      "lodash-3.10.1" = self.by-version."lodash"."3.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."leaflet"."0.7.5"
      self.by-version."react"."0.13.3"];
    os = [ ];
    cpu = [ ];
  };
  "react-leaflet" = self.by-version."react-leaflet"."0.7.0";
  by-spec."react-mixin"."^1.7.0" =
    self.by-version."react-mixin"."1.7.0";
  by-version."react-mixin"."1.7.0" = self.buildNodePackage {
    name = "react-mixin-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-mixin/-/react-mixin-1.7.0.tgz";
      name = "react-mixin-1.7.0.tgz";
      sha1 = "38c22c3eb02064f08f2c25878a60dac3e956f44c";
    };
    deps = {
      "object-assign-2.1.1" = self.by-version."object-assign"."2.1.1";
      "smart-mixin-1.2.1" = self.by-version."smart-mixin"."1.2.1";
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
  by-spec."react-redux".">=1.0.0 >=2.0.0" =
    self.by-version."react-redux"."4.0.0";
  by-version."react-redux"."4.0.0" = self.buildNodePackage {
    name = "react-redux-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-redux/-/react-redux-4.0.0.tgz";
      name = "react-redux-4.0.0.tgz";
      sha1 = "fc32f6aa16922ef1a914ffc3dc04f613f6bc4346";
    };
    deps = {
      "hoist-non-react-statics-1.0.3" = self.by-version."hoist-non-react-statics"."1.0.3";
      "invariant-2.1.1" = self.by-version."invariant"."2.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."react"."0.14.0"
      self.by-version."redux"."3.0.3"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react-redux"."^2.1.2" =
    self.by-version."react-redux"."2.1.2";
  by-version."react-redux"."2.1.2" = self.buildNodePackage {
    name = "react-redux-2.1.2";
    version = "2.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-redux/-/react-redux-2.1.2.tgz";
      name = "react-redux-2.1.2.tgz";
      sha1 = "4b26e02a7e049d1dc8ba5200999a3e153b28afc7";
    };
    deps = {
      "invariant-2.1.1" = self.by-version."invariant"."2.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."redux"."3.0.3"];
    os = [ ];
    cpu = [ ];
  };
  "react-redux" = self.by-version."react-redux"."2.1.2";
  by-spec."react-redux"."^3.0.0" =
    self.by-version."react-redux"."3.1.0";
  by-version."react-redux"."3.1.0" = self.buildNodePackage {
    name = "react-redux-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/react-redux/-/react-redux-3.1.0.tgz";
      name = "react-redux-3.1.0.tgz";
      sha1 = "04597ba448ad79237c412e7644769ff5921ce53a";
    };
    deps = {
      "hoist-non-react-statics-1.0.3" = self.by-version."hoist-non-react-statics"."1.0.3";
      "invariant-2.1.1" = self.by-version."invariant"."2.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."redux"."3.0.3"];
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
      url = "http://registry.npmjs.org/read-pkg/-/read-pkg-1.1.0.tgz";
      name = "read-pkg-1.1.0.tgz";
      sha1 = "f5ffaa5ecd29cb31c0474bca7d756b6bb29e3f28";
    };
    deps = {
      "load-json-file-1.0.1" = self.by-version."load-json-file"."1.0.1";
      "normalize-package-data-2.3.4" = self.by-version."normalize-package-data"."2.3.4";
      "path-type-1.0.0" = self.by-version."path-type"."1.0.0";
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
      "find-up-1.0.0" = self.by-version."find-up"."1.0.0";
      "read-pkg-1.1.0" = self.by-version."read-pkg"."1.1.0";
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
      "core-util-is-1.0.1" = self.by-version."core-util-is"."1.0.1";
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
  by-spec."readable-stream".">=1.1.13-1 <1.2.0-0" =
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
      "core-util-is-1.0.1" = self.by-version."core-util-is"."1.0.1";
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
  by-spec."readable-stream"."^1.0.33-1" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^1.1.13" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^1.1.13-1" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^2.0.2" =
    self.by-version."readable-stream"."2.0.2";
  by-version."readable-stream"."2.0.2" = self.buildNodePackage {
    name = "readable-stream-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-2.0.2.tgz";
      name = "readable-stream-2.0.2.tgz";
      sha1 = "bec81beae8cf455168bc2e5b2b31f5bcfaed9b1b";
    };
    deps = {
      "core-util-is-1.0.1" = self.by-version."core-util-is"."1.0.1";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "process-nextick-args-1.0.3" = self.by-version."process-nextick-args"."1.0.3";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "util-deprecate-1.0.2" = self.by-version."util-deprecate"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."~1.0.17" =
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
      "core-util-is-1.0.1" = self.by-version."core-util-is"."1.0.1";
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
  by-spec."readable-stream"."~1.0.2" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.26" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.1.9" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."~2.0.0" =
    self.by-version."readable-stream"."2.0.2";
  by-spec."readable-wrap"."^1.0.0" =
    self.by-version."readable-wrap"."1.0.0";
  by-version."readable-wrap"."1.0.0" = self.buildNodePackage {
    name = "readable-wrap-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-wrap/-/readable-wrap-1.0.0.tgz";
      name = "readable-wrap-1.0.0.tgz";
      sha1 = "3b5a211c631e12303a54991c806c17e7ae206bff";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
      "readable-stream-2.0.2" = self.by-version."readable-stream"."2.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."recast"."0.10.24" =
    self.by-version."recast"."0.10.24";
  by-version."recast"."0.10.24" = self.buildNodePackage {
    name = "recast-0.10.24";
    version = "0.10.24";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/recast/-/recast-0.10.24.tgz";
      name = "recast-0.10.24.tgz";
      sha1 = "ec347812322ac895ae1b12e306b67f084f02277a";
    };
    deps = {
      "esprima-fb-15001.1.0-dev-harmony-fb" = self.by-version."esprima-fb"."15001.1.0-dev-harmony-fb";
      "source-map-0.4.4" = self.by-version."source-map"."0.4.4";
      "private-0.1.6" = self.by-version."private"."0.1.6";
      "ast-types-0.8.5" = self.by-version."ast-types"."0.8.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."recast"."^0.10.10" =
    self.by-version."recast"."0.10.33";
  by-version."recast"."0.10.33" = self.buildNodePackage {
    name = "recast-0.10.33";
    version = "0.10.33";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/recast/-/recast-0.10.33.tgz";
      name = "recast-0.10.33.tgz";
      sha1 = "942808f7aa016f1fa7142c461d7e5704aaa8d697";
    };
    deps = {
      "esprima-fb-15001.1001.0-dev-harmony-fb" = self.by-version."esprima-fb"."15001.1001.0-dev-harmony-fb";
      "source-map-0.5.1" = self.by-version."source-map"."0.5.1";
      "private-0.1.6" = self.by-version."private"."0.1.6";
      "ast-types-0.8.12" = self.by-version."ast-types"."0.8.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."recast"."~0.10.0" =
    self.by-version."recast"."0.10.33";
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
  by-spec."redux".">=1.0.0" =
    self.by-version."redux"."3.0.3";
  by-version."redux"."3.0.3" = self.buildNodePackage {
    name = "redux-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redux/-/redux-3.0.3.tgz";
      name = "redux-3.0.3.tgz";
      sha1 = "cf60cc323ca00fcd15fe76197232df3dc32f568f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."redux".">=2.0.0 >=1.0.0||>=3.0.0 >=1.0.0" =
    self.by-version."redux"."3.0.3";
  by-spec."redux".">=2.0.0 >=2.0.0 <3.0.0||>=2.0.0 >=3.0.0 <4.0.0||>=3.0.0 >=2.0.0 <3.0.0||>=3.0.0 >=3.0.0 <4.0.0" =
    self.by-version."redux"."3.0.3";
  by-spec."redux"."^2.0.0 || ^3.0.0" =
    self.by-version."redux"."3.0.3";
  by-spec."redux"."^3.0.0" =
    self.by-version."redux"."3.0.3";
  "redux" = self.by-version."redux"."3.0.3";
  by-spec."redux-devtools"."^2.1.3" =
    self.by-version."redux-devtools"."2.1.5";
  by-version."redux-devtools"."2.1.5" = self.buildNodePackage {
    name = "redux-devtools-2.1.5";
    version = "2.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redux-devtools/-/redux-devtools-2.1.5.tgz";
      name = "redux-devtools-2.1.5.tgz";
      sha1 = "70a31958097ee1fa846ee83fa63a778f102f59a7";
    };
    deps = {
      "react-json-tree-0.1.9" = self.by-version."react-json-tree"."0.1.9";
      "react-mixin-1.7.0" = self.by-version."react-mixin"."1.7.0";
      "react-redux-3.1.0" = self.by-version."react-redux"."3.1.0";
      "redux-3.0.3" = self.by-version."redux"."3.0.3";
      "react-0.14.0" = self.by-version."react"."0.14.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "redux-devtools" = self.by-version."redux-devtools"."2.1.5";
  by-spec."redux-form"."^1.7.0" =
    self.by-version."redux-form"."1.7.0";
  by-version."redux-form"."1.7.0" = self.buildNodePackage {
    name = "redux-form-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redux-form/-/redux-form-1.7.0.tgz";
      name = "redux-form-1.7.0.tgz";
      sha1 = "880f74917da06968723936cabab3f337efb8b7a0";
    };
    deps = {
      "react-redux-4.0.0" = self.by-version."react-redux"."4.0.0";
      "redux-3.0.3" = self.by-version."redux"."3.0.3";
      "react-0.14.0" = self.by-version."react"."0.14.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "redux-form" = self.by-version."redux-form"."1.7.0";
  by-spec."redux-logger"."^1.0.8" =
    self.by-version."redux-logger"."1.0.9";
  by-version."redux-logger"."1.0.9" = self.buildNodePackage {
    name = "redux-logger-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redux-logger/-/redux-logger-1.0.9.tgz";
      name = "redux-logger-1.0.9.tgz";
      sha1 = "144ff2c7c201a259ac71ca922b1ee215c9363478";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "redux-logger" = self.by-version."redux-logger"."1.0.9";
  by-spec."redux-thunk"."^1.0.0" =
    self.by-version."redux-thunk"."1.0.0";
  by-version."redux-thunk"."1.0.0" = self.buildNodePackage {
    name = "redux-thunk-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redux-thunk/-/redux-thunk-1.0.0.tgz";
      name = "redux-thunk-1.0.0.tgz";
      sha1 = "e35544a10fcd9c9e3ba96083ac16c702394f4009";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "redux-thunk" = self.by-version."redux-thunk"."1.0.0";
  by-spec."regenerate"."^1.2.1" =
    self.by-version."regenerate"."1.2.1";
  by-version."regenerate"."1.2.1" = self.buildNodePackage {
    name = "regenerate-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/regenerate/-/regenerate-1.2.1.tgz";
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
  by-spec."regenerator"."0.8.35" =
    self.by-version."regenerator"."0.8.35";
  by-version."regenerator"."0.8.35" = self.buildNodePackage {
    name = "regenerator-0.8.35";
    version = "0.8.35";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/regenerator/-/regenerator-0.8.35.tgz";
      name = "regenerator-0.8.35.tgz";
      sha1 = "d0bcaeb251a50901b416a7c6bcf5215d26c681db";
    };
    deps = {
      "commoner-0.10.3" = self.by-version."commoner"."0.10.3";
      "defs-1.1.1" = self.by-version."defs"."1.1.1";
      "esprima-fb-15001.1.0-dev-harmony-fb" = self.by-version."esprima-fb"."15001.1.0-dev-harmony-fb";
      "private-0.1.6" = self.by-version."private"."0.1.6";
      "recast-0.10.24" = self.by-version."recast"."0.10.24";
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."regexpu"."^1.1.2" =
    self.by-version."regexpu"."1.3.0";
  by-version."regexpu"."1.3.0" = self.buildNodePackage {
    name = "regexpu-1.3.0";
    version = "1.3.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/regexpu/-/regexpu-1.3.0.tgz";
      name = "regexpu-1.3.0.tgz";
      sha1 = "e534dc991a9e5846050c98de6d7dd4a55c9ea16d";
    };
    deps = {
      "esprima-2.6.0" = self.by-version."esprima"."2.6.0";
      "recast-0.10.33" = self.by-version."recast"."0.10.33";
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
      url = "http://registry.npmjs.org/regjsgen/-/regjsgen-0.2.0.tgz";
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
      url = "http://registry.npmjs.org/regjsparser/-/regjsparser-0.1.5.tgz";
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
  by-spec."repeat-element"."^1.1.0" =
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
  by-spec."repeat-element"."^1.1.2" =
    self.by-version."repeat-element"."1.1.2";
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
  by-spec."repeating"."^1.1.0" =
    self.by-version."repeating"."1.1.3";
  by-version."repeating"."1.1.3" = self.buildNodePackage {
    name = "repeating-1.1.3";
    version = "1.1.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeating/-/repeating-1.1.3.tgz";
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
  by-spec."repeating"."^1.1.2" =
    self.by-version."repeating"."1.1.3";
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
    self.by-version."request"."2.65.0";
  by-version."request"."2.65.0" = self.buildNodePackage {
    name = "request-2.65.0";
    version = "2.65.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.65.0.tgz";
      name = "request-2.65.0.tgz";
      sha1 = "cc1a3bc72b96254734fc34296da322f9486ddeba";
    };
    deps = {
      "bl-1.0.0" = self.by-version."bl"."1.0.0";
      "caseless-0.11.0" = self.by-version."caseless"."0.11.0";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-1.0.0-rc3" = self.by-version."form-data"."1.0.0-rc3";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.1.7" = self.by-version."mime-types"."2.1.7";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
      "qs-5.2.0" = self.by-version."qs"."5.2.0";
      "tunnel-agent-0.4.1" = self.by-version."tunnel-agent"."0.4.1";
      "tough-cookie-2.2.0" = self.by-version."tough-cookie"."2.2.0";
      "http-signature-0.11.0" = self.by-version."http-signature"."0.11.0";
      "oauth-sign-0.8.0" = self.by-version."oauth-sign"."0.8.0";
      "hawk-3.1.0" = self.by-version."hawk"."3.1.0";
      "aws-sign2-0.6.0" = self.by-version."aws-sign2"."0.6.0";
      "stringstream-0.0.4" = self.by-version."stringstream"."0.0.4";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "har-validator-2.0.2" = self.by-version."har-validator"."2.0.2";
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
      "bl-0.9.4" = self.by-version."bl"."0.9.4";
      "caseless-0.6.0" = self.by-version."caseless"."0.6.0";
      "forever-agent-0.5.2" = self.by-version."forever-agent"."0.5.2";
      "qs-1.2.2" = self.by-version."qs"."1.2.2";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-1.0.2" = self.by-version."mime-types"."1.0.2";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
      "tunnel-agent-0.4.1" = self.by-version."tunnel-agent"."0.4.1";
    };
    optionalDependencies = {
      "tough-cookie-2.2.0" = self.by-version."tough-cookie"."2.2.0";
      "form-data-0.1.4" = self.by-version."form-data"."0.1.4";
      "http-signature-0.10.1" = self.by-version."http-signature"."0.10.1";
      "oauth-sign-0.4.0" = self.by-version."oauth-sign"."0.4.0";
      "hawk-1.1.1" = self.by-version."hawk"."1.1.1";
      "aws-sign2-0.5.0" = self.by-version."aws-sign2"."0.5.0";
      "stringstream-0.0.4" = self.by-version."stringstream"."0.0.4";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2.x" =
    self.by-version."request"."2.65.0";
  by-spec."request"."^2.51.0" =
    self.by-version."request"."2.65.0";
  by-spec."request"."^2.61.0" =
    self.by-version."request"."2.65.0";
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
  by-spec."requires-port"."0.x.x" =
    self.by-version."requires-port"."0.0.1";
  by-version."requires-port"."0.0.1" = self.buildNodePackage {
    name = "requires-port-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/requires-port/-/requires-port-0.0.1.tgz";
      name = "requires-port-0.0.1.tgz";
      sha1 = "4b4414411d9df7c855995dd899a8c78a2951c16d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."resolve"."1.1.6" =
    self.by-version."resolve"."1.1.6";
  by-version."resolve"."1.1.6" = self.buildNodePackage {
    name = "resolve-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/resolve/-/resolve-1.1.6.tgz";
      name = "resolve-1.1.6.tgz";
      sha1 = "d3492ad054ca800f5befa612e61beac1eec98f8f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."resolve"."^1.1.3" =
    self.by-version."resolve"."1.1.6";
  by-spec."resolve"."^1.1.6" =
    self.by-version."resolve"."1.1.6";
  by-spec."resolve"."~0.3.0" =
    self.by-version."resolve"."0.3.1";
  by-version."resolve"."0.3.1" = self.buildNodePackage {
    name = "resolve-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/resolve/-/resolve-0.3.1.tgz";
      name = "resolve-0.3.1.tgz";
      sha1 = "34c63447c664c70598d1c9b126fc43b2a24310a4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."resolve"."~0.7.1" =
    self.by-version."resolve"."0.7.4";
  by-version."resolve"."0.7.4" = self.buildNodePackage {
    name = "resolve-0.7.4";
    version = "0.7.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/resolve/-/resolve-0.7.4.tgz";
      name = "resolve-0.7.4.tgz";
      sha1 = "395a9ef9e873fbfe12bd14408bd91bb936003d69";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rfile"."~1.0" =
    self.by-version."rfile"."1.0.0";
  by-version."rfile"."1.0.0" = self.buildNodePackage {
    name = "rfile-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/rfile/-/rfile-1.0.0.tgz";
      name = "rfile-1.0.0.tgz";
      sha1 = "59708cf90ca1e74c54c3cfc5c36fdb9810435261";
    };
    deps = {
      "callsite-1.0.0" = self.by-version."callsite"."1.0.0";
      "resolve-0.3.1" = self.by-version."resolve"."0.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rfile"."~1.0.0" =
    self.by-version."rfile"."1.0.0";
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
    self.by-version."rimraf"."2.4.3";
  by-version."rimraf"."2.4.3" = self.buildNodePackage {
    name = "rimraf-2.4.3";
    version = "2.4.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.4.3.tgz";
      name = "rimraf-2.4.3.tgz";
      sha1 = "e5b51c9437a4c582adb955e9f28cf8d945e272af";
    };
    deps = {
      "glob-5.0.15" = self.by-version."glob"."5.0.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."^2.2.8" =
    self.by-version."rimraf"."2.4.3";
  by-spec."rimraf"."^2.3.3" =
    self.by-version."rimraf"."2.4.3";
  by-spec."rimraf"."~2.2.0" =
    self.by-version."rimraf"."2.2.8";
  by-version."rimraf"."2.2.8" = self.buildNodePackage {
    name = "rimraf-2.2.8";
    version = "2.2.8";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.2.8.tgz";
      name = "rimraf-2.2.8.tgz";
      sha1 = "e439be2aaee327321952730f99a8929e4fc50582";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."~2.4.0" =
    self.by-version."rimraf"."2.4.3";
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
  by-spec."ripemd160"."^1.0.0" =
    self.by-version."ripemd160"."1.0.1";
  by-version."ripemd160"."1.0.1" = self.buildNodePackage {
    name = "ripemd160-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ripemd160/-/ripemd160-1.0.1.tgz";
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
  by-spec."ruglify"."~1.0.0" =
    self.by-version."ruglify"."1.0.0";
  by-version."ruglify"."1.0.0" = self.buildNodePackage {
    name = "ruglify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ruglify/-/ruglify-1.0.0.tgz";
      name = "ruglify-1.0.0.tgz";
      sha1 = "dc8930e2a9544a274301cc9972574c0d0986b675";
    };
    deps = {
      "rfile-1.0.0" = self.by-version."rfile"."1.0.0";
      "uglify-js-2.2.5" = self.by-version."uglify-js"."2.2.5";
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
      "yargs-3.28.0" = self.by-version."yargs"."3.28.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sass-loader"."^2.0.1" =
    self.by-version."sass-loader"."2.0.1";
  by-version."sass-loader"."2.0.1" = self.buildNodePackage {
    name = "sass-loader-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sass-loader/-/sass-loader-2.0.1.tgz";
      name = "sass-loader-2.0.1.tgz";
      sha1 = "82d8e05c48a54ac3de7d3acda521708d13f58d8f";
    };
    deps = {
      "async-1.4.2" = self.by-version."async"."1.4.2";
      "loader-utils-0.2.11" = self.by-version."loader-utils"."0.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."node-sass"."3.3.3"];
    os = [ ];
    cpu = [ ];
  };
  "sass-loader" = self.by-version."sass-loader"."2.0.1";
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
  by-spec."sax"."~1.1.1" =
    self.by-version."sax"."1.1.3";
  by-version."sax"."1.1.3" = self.buildNodePackage {
    name = "sax-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sax/-/sax-1.1.3.tgz";
      name = "sax-1.1.3.tgz";
      sha1 = "02fab475938311117f0e84a033380750da1a049e";
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
    self.by-version."semver"."5.0.3";
  by-version."semver"."5.0.3" = self.buildNodePackage {
    name = "semver-5.0.3";
    version = "5.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-5.0.3.tgz";
      name = "semver-5.0.3.tgz";
      sha1 = "77466de589cd5d3c95f138aa78bc569a3cb5d27a";
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
    self.by-version."semver"."5.0.3";
  by-spec."semver"."~4.3.3" =
    self.by-version."semver"."4.3.6";
  by-spec."semver"."~5.0.1" =
    self.by-version."semver"."5.0.3";
  by-spec."send"."0.13.0" =
    self.by-version."send"."0.13.0";
  by-version."send"."0.13.0" = self.buildNodePackage {
    name = "send-0.13.0";
    version = "0.13.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/send/-/send-0.13.0.tgz";
      name = "send-0.13.0.tgz";
      sha1 = "518f921aeb0560aec7dcab2990b14cf6f3cce5de";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "destroy-1.0.3" = self.by-version."destroy"."1.0.3";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "range-parser-1.0.2" = self.by-version."range-parser"."1.0.2";
      "statuses-1.2.1" = self.by-version."statuses"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sentence-case"."^1.1.1" =
    self.by-version."sentence-case"."1.1.2";
  by-version."sentence-case"."1.1.2" = self.buildNodePackage {
    name = "sentence-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sentence-case/-/sentence-case-1.1.2.tgz";
      name = "sentence-case-1.1.2.tgz";
      sha1 = "19948e73f3e3b18cd3434dd52de75a86182194f9";
    };
    deps = {
      "lower-case-1.1.2" = self.by-version."lower-case"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sentence-case"."^1.1.2" =
    self.by-version."sentence-case"."1.1.2";
  by-spec."serve-index"."^1.7.2" =
    self.by-version."serve-index"."1.7.2";
  by-version."serve-index"."1.7.2" = self.buildNodePackage {
    name = "serve-index-1.7.2";
    version = "1.7.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-index/-/serve-index-1.7.2.tgz";
      name = "serve-index-1.7.2.tgz";
      sha1 = "9a155d9c4f9d391e463970e7b4eb16c7672141c0";
    };
    deps = {
      "accepts-1.2.13" = self.by-version."accepts"."1.2.13";
      "batch-0.5.2" = self.by-version."batch"."0.5.2";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-types-2.1.7" = self.by-version."mime-types"."2.1.7";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."serve-static"."~1.10.0" =
    self.by-version."serve-static"."1.10.0";
  by-version."serve-static"."1.10.0" = self.buildNodePackage {
    name = "serve-static-1.10.0";
    version = "1.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-static/-/serve-static-1.10.0.tgz";
      name = "serve-static-1.10.0.tgz";
      sha1 = "be632faa685820e4a43ed3df1379135cc4f370d7";
    };
    deps = {
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "send-0.13.0" = self.by-version."send"."0.13.0";
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
  by-spec."sha.js"."^2.3.6" =
    self.by-version."sha.js"."2.4.4";
  by-version."sha.js"."2.4.4" = self.buildNodePackage {
    name = "sha.js-2.4.4";
    version = "2.4.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/sha.js/-/sha.js-2.4.4.tgz";
      name = "sha.js-2.4.4.tgz";
      sha1 = "da1b088fde46c9ed4f17e6d29f29f4928e98e251";
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
  by-spec."sha.js"."~2.4.4" =
    self.by-version."sha.js"."2.4.4";
  by-spec."shallow-copy"."0.0.1" =
    self.by-version."shallow-copy"."0.0.1";
  by-version."shallow-copy"."0.0.1" = self.buildNodePackage {
    name = "shallow-copy-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/shallow-copy/-/shallow-copy-0.0.1.tgz";
      name = "shallow-copy-0.0.1.tgz";
      sha1 = "415f42702d73d810330292cc5ee86eae1a11a170";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."shasum"."^1.0.0" =
    self.by-version."shasum"."1.0.2";
  by-version."shasum"."1.0.2" = self.buildNodePackage {
    name = "shasum-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/shasum/-/shasum-1.0.2.tgz";
      name = "shasum-1.0.2.tgz";
      sha1 = "e7012310d8f417f4deb5712150e5678b87ae565f";
    };
    deps = {
      "json-stable-stringify-0.0.1" = self.by-version."json-stable-stringify"."0.0.1";
      "sha.js-2.4.4" = self.by-version."sha.js"."2.4.4";
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
      url = "http://registry.npmjs.org/shebang-regex/-/shebang-regex-1.0.0.tgz";
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
  by-spec."shell-quote"."~0.0.1" =
    self.by-version."shell-quote"."0.0.1";
  by-version."shell-quote"."0.0.1" = self.buildNodePackage {
    name = "shell-quote-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/shell-quote/-/shell-quote-0.0.1.tgz";
      name = "shell-quote-0.0.1.tgz";
      sha1 = "1a41196f3c0333c482323593d6886ecf153dd986";
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
  by-spec."simple-fmt"."~0.1.0" =
    self.by-version."simple-fmt"."0.1.0";
  by-version."simple-fmt"."0.1.0" = self.buildNodePackage {
    name = "simple-fmt-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/simple-fmt/-/simple-fmt-0.1.0.tgz";
      name = "simple-fmt-0.1.0.tgz";
      sha1 = "191bf566a59e6530482cb25ab53b4a8dc85c3a6b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."simple-is"."~0.2.0" =
    self.by-version."simple-is"."0.2.0";
  by-version."simple-is"."0.2.0" = self.buildNodePackage {
    name = "simple-is-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/simple-is/-/simple-is-0.2.0.tgz";
      name = "simple-is-0.2.0.tgz";
      sha1 = "2abb75aade39deb5cc815ce10e6191164850baf0";
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
      url = "http://registry.npmjs.org/slash/-/slash-1.0.0.tgz";
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
  by-spec."smart-mixin"."^1.2.0" =
    self.by-version."smart-mixin"."1.2.1";
  by-version."smart-mixin"."1.2.1" = self.buildNodePackage {
    name = "smart-mixin-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/smart-mixin/-/smart-mixin-1.2.1.tgz";
      name = "smart-mixin-1.2.1.tgz";
      sha1 = "11a2b3e4628dfee16ac9cb51edd301be21be1452";
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
    self.by-version."snake-case"."1.1.1";
  by-version."snake-case"."1.1.1" = self.buildNodePackage {
    name = "snake-case-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/snake-case/-/snake-case-1.1.1.tgz";
      name = "snake-case-1.1.1.tgz";
      sha1 = "e21d68bcf05577614058efff53e9d460cc4696e2";
    };
    deps = {
      "sentence-case-1.1.2" = self.by-version."sentence-case"."1.1.2";
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
  by-spec."socket.io"."^1.3.6" =
    self.by-version."socket.io"."1.3.7";
  by-version."socket.io"."1.3.7" = self.buildNodePackage {
    name = "socket.io-1.3.7";
    version = "1.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io/-/socket.io-1.3.7.tgz";
      name = "socket.io-1.3.7.tgz";
      sha1 = "93747a29bcab6266f0fbe19112cca5e1388cf7ad";
    };
    deps = {
      "engine.io-1.5.4" = self.by-version."engine.io"."1.5.4";
      "socket.io-parser-2.2.4" = self.by-version."socket.io-parser"."2.2.4";
      "socket.io-client-1.3.7" = self.by-version."socket.io-client"."1.3.7";
      "socket.io-adapter-0.3.1" = self.by-version."socket.io-adapter"."0.3.1";
      "has-binary-data-0.1.3" = self.by-version."has-binary-data"."0.1.3";
      "debug-2.1.0" = self.by-version."debug"."2.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io"."^1.3.7" =
    self.by-version."socket.io"."1.3.7";
  by-spec."socket.io-adapter"."0.3.1" =
    self.by-version."socket.io-adapter"."0.3.1";
  by-version."socket.io-adapter"."0.3.1" = self.buildNodePackage {
    name = "socket.io-adapter-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-adapter/-/socket.io-adapter-0.3.1.tgz";
      name = "socket.io-adapter-0.3.1.tgz";
      sha1 = "df81f970b4df6493902d93e519c7b72755c3a958";
    };
    deps = {
      "debug-1.0.2" = self.by-version."debug"."1.0.2";
      "socket.io-parser-2.2.2" = self.by-version."socket.io-parser"."2.2.2";
      "object-keys-1.0.1" = self.by-version."object-keys"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-client"."1.3.7" =
    self.by-version."socket.io-client"."1.3.7";
  by-version."socket.io-client"."1.3.7" = self.buildNodePackage {
    name = "socket.io-client-1.3.7";
    version = "1.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-client/-/socket.io-client-1.3.7.tgz";
      name = "socket.io-client-1.3.7.tgz";
      sha1 = "7ab7c069b8d50425eb265f031f84a97e6ebe719c";
    };
    deps = {
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "engine.io-client-1.5.4" = self.by-version."engine.io-client"."1.5.4";
      "component-bind-1.0.0" = self.by-version."component-bind"."1.0.0";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "object-component-0.0.3" = self.by-version."object-component"."0.0.3";
      "socket.io-parser-2.2.4" = self.by-version."socket.io-parser"."2.2.4";
      "has-binary-0.1.6" = self.by-version."has-binary"."0.1.6";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
      "parseuri-0.0.2" = self.by-version."parseuri"."0.0.2";
      "to-array-0.1.3" = self.by-version."to-array"."0.1.3";
      "backo2-1.0.2" = self.by-version."backo2"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-client"."^1.3.6" =
    self.by-version."socket.io-client"."1.3.7";
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
  by-spec."socket.io-parser"."2.2.4" =
    self.by-version."socket.io-parser"."2.2.4";
  by-version."socket.io-parser"."2.2.4" = self.buildNodePackage {
    name = "socket.io-parser-2.2.4";
    version = "2.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-parser/-/socket.io-parser-2.2.4.tgz";
      name = "socket.io-parser-2.2.4.tgz";
      sha1 = "f9ce19bf1909608ceb15d97721e23bfdd1e7cf65";
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
      "is-plain-obj-1.0.0" = self.by-version."is-plain-obj"."1.0.0";
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
  by-spec."source-map"."0.1.32" =
    self.by-version."source-map"."0.1.32";
  by-version."source-map"."0.1.32" = self.buildNodePackage {
    name = "source-map-0.1.32";
    version = "0.1.32";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.1.32.tgz";
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
  by-spec."source-map"."0.1.34" =
    self.by-version."source-map"."0.1.34";
  by-version."source-map"."0.1.34" = self.buildNodePackage {
    name = "source-map-0.1.34";
    version = "0.1.34";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.1.34.tgz";
      name = "source-map-0.1.34.tgz";
      sha1 = "a7cfe89aec7b1682c3b198d0acfb47d7d090566b";
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
  by-spec."source-map".">=0.1.43 <0.2" =
    self.by-version."source-map"."0.1.43";
  by-spec."source-map"."^0.1.41" =
    self.by-version."source-map"."0.1.43";
  by-spec."source-map"."^0.4.0" =
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
  by-spec."source-map"."^0.4.2" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."^0.4.4" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."^0.5.1" =
    self.by-version."source-map"."0.5.1";
  by-version."source-map"."0.5.1" = self.buildNodePackage {
    name = "source-map-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.5.1.tgz";
      name = "source-map-0.5.1.tgz";
      sha1 = "5fbd40a1cde485feab4d36460b8f496edb362ecf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."~0.1.31" =
    self.by-version."source-map"."0.1.43";
  by-spec."source-map"."~0.1.7" =
    self.by-version."source-map"."0.1.43";
  by-spec."source-map"."~0.2.0" =
    self.by-version."source-map"."0.2.0";
  by-version."source-map"."0.2.0" = self.buildNodePackage {
    name = "source-map-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.2.0.tgz";
      name = "source-map-0.2.0.tgz";
      sha1 = "dab73fbcfc2ba819b4de03bd6f6eaa48164b3f9d";
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
  by-spec."source-map"."~0.3.0" =
    self.by-version."source-map"."0.3.0";
  by-version."source-map"."0.3.0" = self.buildNodePackage {
    name = "source-map-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.3.0.tgz";
      name = "source-map-0.3.0.tgz";
      sha1 = "8586fb9a5a005e5b501e21cd18b6f21b457ad1f9";
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
  by-spec."source-map"."~0.4.0" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."~0.4.1" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."~0.4.2" =
    self.by-version."source-map"."0.4.4";
  by-spec."source-map"."~0.5.0" =
    self.by-version."source-map"."0.5.1";
  by-spec."source-map-support"."^0.2.10" =
    self.by-version."source-map-support"."0.2.10";
  by-version."source-map-support"."0.2.10" = self.buildNodePackage {
    name = "source-map-support-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map-support/-/source-map-support-0.2.10.tgz";
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
  by-spec."spawn-sync"."^1.0.13" =
    self.by-version."spawn-sync"."1.0.13";
  by-version."spawn-sync"."1.0.13" = self.buildNodePackage {
    name = "spawn-sync-1.0.13";
    version = "1.0.13";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/spawn-sync/-/spawn-sync-1.0.13.tgz";
      name = "spawn-sync-1.0.13.tgz";
      sha1 = "904091b9ad48a0f3afb0e84752154c01e82fd8d8";
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
    self.by-version."spdx-correct"."1.0.1";
  by-version."spdx-correct"."1.0.1" = self.buildNodePackage {
    name = "spdx-correct-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/spdx-correct/-/spdx-correct-1.0.1.tgz";
      name = "spdx-correct-1.0.1.tgz";
      sha1 = "ac075f5f2f6a06c0bfdd1c847eb3dde3dd8221ea";
    };
    deps = {
      "spdx-license-ids-1.1.0" = self.by-version."spdx-license-ids"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-exceptions"."^1.0.0" =
    self.by-version."spdx-exceptions"."1.0.3";
  by-version."spdx-exceptions"."1.0.3" = self.buildNodePackage {
    name = "spdx-exceptions-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/spdx-exceptions/-/spdx-exceptions-1.0.3.tgz";
      name = "spdx-exceptions-1.0.3.tgz";
      sha1 = "39ec5ed2cebddf08d180555d7e99c3aff9b4764a";
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
    self.by-version."spdx-expression-parse"."1.0.0";
  by-version."spdx-expression-parse"."1.0.0" = self.buildNodePackage {
    name = "spdx-expression-parse-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/spdx-expression-parse/-/spdx-expression-parse-1.0.0.tgz";
      name = "spdx-expression-parse-1.0.0.tgz";
      sha1 = "4fbb7e738c9e98fa0b0914dfd961ac6629fbcdef";
    };
    deps = {
      "spdx-exceptions-1.0.3" = self.by-version."spdx-exceptions"."1.0.3";
      "spdx-license-ids-1.1.0" = self.by-version."spdx-license-ids"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."spdx-license-ids"."^1.0.0" =
    self.by-version."spdx-license-ids"."1.1.0";
  by-version."spdx-license-ids"."1.1.0" = self.buildNodePackage {
    name = "spdx-license-ids-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/spdx-license-ids/-/spdx-license-ids-1.1.0.tgz";
      name = "spdx-license-ids-1.1.0.tgz";
      sha1 = "28694acdf39fe27de45143fff81f21f6c66d44ac";
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
    self.by-version."spdx-license-ids"."1.1.0";
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
  by-spec."stable"."~0.1.3" =
    self.by-version."stable"."0.1.5";
  by-version."stable"."0.1.5" = self.buildNodePackage {
    name = "stable-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stable/-/stable-0.1.5.tgz";
      name = "stable-0.1.5.tgz";
      sha1 = "08232f60c732e9890784b5bed0734f8b32a887b9";
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
  by-spec."stream-combiner2"."~1.0.0" =
    self.by-version."stream-combiner2"."1.0.2";
  by-version."stream-combiner2"."1.0.2" = self.buildNodePackage {
    name = "stream-combiner2-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-combiner2/-/stream-combiner2-1.0.2.tgz";
      name = "stream-combiner2-1.0.2.tgz";
      sha1 = "ba72a6b50cbfabfa950fc8bc87604bd01eb60671";
    };
    deps = {
      "duplexer2-0.0.2" = self.by-version."duplexer2"."0.0.2";
      "through2-0.5.1" = self.by-version."through2"."0.5.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-splicer"."^1.1.0" =
    self.by-version."stream-splicer"."1.3.2";
  by-version."stream-splicer"."1.3.2" = self.buildNodePackage {
    name = "stream-splicer-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-splicer/-/stream-splicer-1.3.2.tgz";
      name = "stream-splicer-1.3.2.tgz";
      sha1 = "3c0441be15b9bf4e226275e6dc83964745546661";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "readable-wrap-1.0.0" = self.by-version."readable-wrap"."1.0.0";
      "through2-1.1.1" = self.by-version."through2"."1.1.1";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strict-uri-encode"."^1.0.0" =
    self.by-version."strict-uri-encode"."1.0.2";
  by-version."strict-uri-encode"."1.0.2" = self.buildNodePackage {
    name = "strict-uri-encode-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/strict-uri-encode/-/strict-uri-encode-1.0.2.tgz";
      name = "strict-uri-encode-1.0.2.tgz";
      sha1 = "fd19e639d89a766256a33e611d38415df8d6058d";
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
  by-spec."string_decoder"."~0.10.0" =
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
  by-spec."string_decoder"."~0.10.25" =
    self.by-version."string_decoder"."0.10.31";
  by-spec."string_decoder"."~0.10.x" =
    self.by-version."string_decoder"."0.10.31";
  by-spec."stringmap"."~0.2.2" =
    self.by-version."stringmap"."0.2.2";
  by-version."stringmap"."0.2.2" = self.buildNodePackage {
    name = "stringmap-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringmap/-/stringmap-0.2.2.tgz";
      name = "stringmap-0.2.2.tgz";
      sha1 = "556c137b258f942b8776f5b2ef582aa069d7d1b1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stringset"."~0.2.1" =
    self.by-version."stringset"."0.2.1";
  by-version."stringset"."0.2.1" = self.buildNodePackage {
    name = "stringset-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringset/-/stringset-0.2.1.tgz";
      name = "stringset-0.2.1.tgz";
      sha1 = "ef259c4e349344377fcd1c913dd2e848c9c042b5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stringstream"."~0.0.4" =
    self.by-version."stringstream"."0.0.4";
  by-version."stringstream"."0.0.4" = self.buildNodePackage {
    name = "stringstream-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringstream/-/stringstream-0.0.4.tgz";
      name = "stringstream-0.0.4.tgz";
      sha1 = "0f0e3423f942960b5692ac324a57dd093bc41a92";
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
      "is-utf8-0.2.0" = self.by-version."is-utf8"."0.2.0";
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
  by-spec."strip-json-comments"."0.1.x" =
    self.by-version."strip-json-comments"."0.1.3";
  by-version."strip-json-comments"."0.1.3" = self.buildNodePackage {
    name = "strip-json-comments-0.1.3";
    version = "0.1.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-json-comments/-/strip-json-comments-0.1.3.tgz";
      name = "strip-json-comments-0.1.3.tgz";
      sha1 = "164c64e370a8a3cc00c9e01b539e569823f0ee54";
    };
    deps = {
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
  by-spec."style-loader"."^0.12.4" =
    self.by-version."style-loader"."0.12.4";
  by-version."style-loader"."0.12.4" = self.buildNodePackage {
    name = "style-loader-0.12.4";
    version = "0.12.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/style-loader/-/style-loader-0.12.4.tgz";
      name = "style-loader-0.12.4.tgz";
      sha1 = "ae7d0665dc4dc653daa2fe97bb90914bc1d22d9b";
    };
    deps = {
      "loader-utils-0.2.11" = self.by-version."loader-utils"."0.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "style-loader" = self.by-version."style-loader"."0.12.4";
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
  "stylus" = self.by-version."stylus"."0.52.4";
  by-spec."stylus-loader"."^1.3.0" =
    self.by-version."stylus-loader"."1.4.0";
  by-version."stylus-loader"."1.4.0" = self.buildNodePackage {
    name = "stylus-loader-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stylus-loader/-/stylus-loader-1.4.0.tgz";
      name = "stylus-loader-1.4.0.tgz";
      sha1 = "0cbc82733903c18d39491c728144fba6dfd3c7c7";
    };
    deps = {
      "loader-utils-0.2.11" = self.by-version."loader-utils"."0.2.11";
      "stylus-0.52.4" = self.by-version."stylus"."0.52.4";
      "when-3.6.4" = self.by-version."when"."3.6.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "stylus-loader" = self.by-version."stylus-loader"."1.4.0";
  by-spec."subarg"."^1.0.0" =
    self.by-version."subarg"."1.0.0";
  by-version."subarg"."1.0.0" = self.buildNodePackage {
    name = "subarg-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/subarg/-/subarg-1.0.0.tgz";
      name = "subarg-1.0.0.tgz";
      sha1 = "f62cf17581e996b48fc965699f54c06ae268b8d2";
    };
    deps = {
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."success-symbol"."^0.1.0" =
    self.by-version."success-symbol"."0.1.0";
  by-version."success-symbol"."0.1.0" = self.buildNodePackage {
    name = "success-symbol-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/success-symbol/-/success-symbol-0.1.0.tgz";
      name = "success-symbol-0.1.0.tgz";
      sha1 = "24022e486f3bf1cdca094283b769c472d3b72897";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."superagent"."^1.4.0" =
    self.by-version."superagent"."1.4.0";
  by-version."superagent"."1.4.0" = self.buildNodePackage {
    name = "superagent-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/superagent/-/superagent-1.4.0.tgz";
      name = "superagent-1.4.0.tgz";
      sha1 = "772eed5d70001bcace9397eca5515e177c6a5e8f";
    };
    deps = {
      "qs-2.3.3" = self.by-version."qs"."2.3.3";
      "formidable-1.0.14" = self.by-version."formidable"."1.0.14";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "methods-1.0.1" = self.by-version."methods"."1.0.1";
      "cookiejar-2.0.1" = self.by-version."cookiejar"."2.0.1";
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
  "superagent" = self.by-version."superagent"."1.4.0";
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
  by-spec."svgo"."^0.5.6" =
    self.by-version."svgo"."0.5.6";
  by-version."svgo"."0.5.6" = self.buildNodePackage {
    name = "svgo-0.5.6";
    version = "0.5.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/svgo/-/svgo-0.5.6.tgz";
      name = "svgo-0.5.6.tgz";
      sha1 = "9501c533cf84f74a79be1bb3f3494d912bbed119";
    };
    deps = {
      "sax-1.1.3" = self.by-version."sax"."1.1.3";
      "coa-1.0.1" = self.by-version."coa"."1.0.1";
      "js-yaml-3.3.1" = self.by-version."js-yaml"."3.3.1";
      "colors-1.1.2" = self.by-version."colors"."1.1.2";
      "whet.extend-0.9.9" = self.by-version."whet.extend"."0.9.9";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."swap-case"."^1.1.0" =
    self.by-version."swap-case"."1.1.1";
  by-version."swap-case"."1.1.1" = self.buildNodePackage {
    name = "swap-case-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/swap-case/-/swap-case-1.1.1.tgz";
      name = "swap-case-1.1.1.tgz";
      sha1 = "8e1d0ec68e8df3c133bde08c0e25b77352163672";
    };
    deps = {
      "lower-case-1.1.2" = self.by-version."lower-case"."1.1.2";
      "upper-case-1.1.2" = self.by-version."upper-case"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."syntax-error"."^1.1.1" =
    self.by-version."syntax-error"."1.1.4";
  by-version."syntax-error"."1.1.4" = self.buildNodePackage {
    name = "syntax-error-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/syntax-error/-/syntax-error-1.1.4.tgz";
      name = "syntax-error-1.1.4.tgz";
      sha1 = "1ad035e1b4f72fe16186510ac24f055c48002f6d";
    };
    deps = {
      "acorn-1.2.2" = self.by-version."acorn"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tapable"."^0.1.8" =
    self.by-version."tapable"."0.1.9";
  by-version."tapable"."0.1.9" = self.buildNodePackage {
    name = "tapable-0.1.9";
    version = "0.1.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tapable/-/tapable-0.1.9.tgz";
      name = "tapable-0.1.9.tgz";
      sha1 = "1003d9499c344ba238cb32329c8d2c8babc92e54";
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
    self.by-version."tapable"."0.1.9";
  by-spec."tar"."^1.0.0" =
    self.by-version."tar"."1.0.3";
  by-version."tar"."1.0.3" = self.buildNodePackage {
    name = "tar-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar/-/tar-1.0.3.tgz";
      name = "tar-1.0.3.tgz";
      sha1 = "15bcdab244fa4add44e4244a0176edb8aa9a2b44";
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
  by-spec."tar"."~0.1.17" =
    self.by-version."tar"."0.1.20";
  by-version."tar"."0.1.20" = self.buildNodePackage {
    name = "tar-0.1.20";
    version = "0.1.20";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar/-/tar-0.1.20.tgz";
      name = "tar-0.1.20.tgz";
      sha1 = "42940bae5b5f22c74483699126f9f3f27449cb13";
    };
    deps = {
      "block-stream-0.0.8" = self.by-version."block-stream"."0.0.8";
      "fstream-0.1.31" = self.by-version."fstream"."0.1.31";
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
  by-spec."tar-pack"."~2.0.0" =
    self.by-version."tar-pack"."2.0.1";
  by-version."tar-pack"."2.0.1" = self.buildNodePackage {
    name = "tar-pack-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar-pack/-/tar-pack-2.0.1.tgz";
      name = "tar-pack-2.0.1.tgz";
      sha1 = "3d988c089d18ff4e841fb46ab8b4eaefec541ce3";
    };
    deps = {
      "graceful-fs-4.1.2" = self.by-version."graceful-fs"."4.1.2";
      "uid-number-0.0.3" = self.by-version."uid-number"."0.0.3";
      "once-1.1.1" = self.by-version."once"."1.1.1";
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
      "fstream-0.1.31" = self.by-version."fstream"."0.1.31";
      "tar-0.1.20" = self.by-version."tar"."0.1.20";
      "fstream-ignore-0.0.7" = self.by-version."fstream-ignore"."0.0.7";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
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
  by-spec."through".">=2.2.7 <3" =
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
  by-spec."through"."^2.3.6" =
    self.by-version."through"."2.3.8";
  by-spec."through"."~2.3.4" =
    self.by-version."through"."2.3.8";
  by-spec."through"."~2.3.6" =
    self.by-version."through"."2.3.8";
  by-spec."through2"."^1.0.0" =
    self.by-version."through2"."1.1.1";
  by-version."through2"."1.1.1" = self.buildNodePackage {
    name = "through2-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through2/-/through2-1.1.1.tgz";
      name = "through2-1.1.1.tgz";
      sha1 = "0847cbc4449f3405574dbdccd9bb841b83ac3545";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through2"."~0.5.1" =
    self.by-version."through2"."0.5.1";
  by-version."through2"."0.5.1" = self.buildNodePackage {
    name = "through2-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through2/-/through2-0.5.1.tgz";
      name = "through2-0.5.1.tgz";
      sha1 = "dfdd012eb9c700e2323fd334f38ac622ab372da7";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "xtend-3.0.0" = self.by-version."xtend"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."timers-browserify"."^1.0.1" =
    self.by-version."timers-browserify"."1.4.1";
  by-version."timers-browserify"."1.4.1" = self.buildNodePackage {
    name = "timers-browserify-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/timers-browserify/-/timers-browserify-1.4.1.tgz";
      name = "timers-browserify-1.4.1.tgz";
      sha1 = "bf8afeb7b50d6c500e2b3e0a5d759c4005e985d7";
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
    self.by-version."title-case"."1.1.1";
  by-version."title-case"."1.1.1" = self.buildNodePackage {
    name = "title-case-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/title-case/-/title-case-1.1.1.tgz";
      name = "title-case-1.1.1.tgz";
      sha1 = "9b31307ad5c69f4c6711ab21375054b486ace9f2";
    };
    deps = {
      "sentence-case-1.1.2" = self.by-version."sentence-case"."1.1.2";
      "upper-case-1.1.2" = self.by-version."upper-case"."1.1.2";
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
  by-spec."to-fast-properties"."^1.0.0" =
    self.by-version."to-fast-properties"."1.0.1";
  by-version."to-fast-properties"."1.0.1" = self.buildNodePackage {
    name = "to-fast-properties-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/to-fast-properties/-/to-fast-properties-1.0.1.tgz";
      name = "to-fast-properties-1.0.1.tgz";
      sha1 = "4a41554d2b2f4bbe2d794060dc47396b10bb48a8";
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
    self.by-version."tough-cookie"."2.2.0";
  by-version."tough-cookie"."2.2.0" = self.buildNodePackage {
    name = "tough-cookie-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tough-cookie/-/tough-cookie-2.2.0.tgz";
      name = "tough-cookie-2.2.0.tgz";
      sha1 = "d4ce661075e5fddb7f20341d3f9931a6fbbadde0";
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
    self.by-version."tough-cookie"."2.2.0";
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
  by-spec."trim-right"."^1.0.0" =
    self.by-version."trim-right"."1.0.1";
  by-version."trim-right"."1.0.1" = self.buildNodePackage {
    name = "trim-right-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/trim-right/-/trim-right-1.0.1.tgz";
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
  by-spec."try-resolve"."^1.0.0" =
    self.by-version."try-resolve"."1.0.1";
  by-version."try-resolve"."1.0.1" = self.buildNodePackage {
    name = "try-resolve-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/try-resolve/-/try-resolve-1.0.1.tgz";
      name = "try-resolve-1.0.1.tgz";
      sha1 = "cfde6fabd72d63e5797cfaab873abbe8e700e912";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tryor"."~0.1.2" =
    self.by-version."tryor"."0.1.2";
  by-version."tryor"."0.1.2" = self.buildNodePackage {
    name = "tryor-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tryor/-/tryor-0.1.2.tgz";
      name = "tryor-0.1.2.tgz";
      sha1 = "8145e4ca7caff40acde3ccf946e8b8bb75b4172b";
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
  by-spec."tty-browserify"."~0.0.0" =
    self.by-version."tty-browserify"."0.0.0";
  by-spec."tunnel-agent"."~0.4.0" =
    self.by-version."tunnel-agent"."0.4.1";
  by-version."tunnel-agent"."0.4.1" = self.buildNodePackage {
    name = "tunnel-agent-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.4.1.tgz";
      name = "tunnel-agent-0.4.1.tgz";
      sha1 = "bbeecff4d679ce753db9462761a88dfcec3c5ab3";
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
    self.by-version."tunnel-agent"."0.4.1";
  by-spec."type-check"."~0.3.1" =
    self.by-version."type-check"."0.3.1";
  by-version."type-check"."0.3.1" = self.buildNodePackage {
    name = "type-check-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/type-check/-/type-check-0.3.1.tgz";
      name = "type-check-0.3.1.tgz";
      sha1 = "9233923c4da174d0ac5480ecfd6ef84c349eb58d";
    };
    deps = {
      "prelude-ls-1.1.2" = self.by-version."prelude-ls"."1.1.2";
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
  by-spec."type-is"."~1.6.6" =
    self.by-version."type-is"."1.6.9";
  by-version."type-is"."1.6.9" = self.buildNodePackage {
    name = "type-is-1.6.9";
    version = "1.6.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/type-is/-/type-is-1.6.9.tgz";
      name = "type-is-1.6.9.tgz";
      sha1 = "87f3e88b92ff5ac30fbc1acf9a9d00cbc38b3d7a";
    };
    deps = {
      "media-typer-0.3.0" = self.by-version."media-typer"."0.3.0";
      "mime-types-2.1.7" = self.by-version."mime-types"."2.1.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-is"."~1.6.9" =
    self.by-version."type-is"."1.6.9";
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
    self.by-version."ua-parser-js"."0.7.9";
  by-version."ua-parser-js"."0.7.9" = self.buildNodePackage {
    name = "ua-parser-js-0.7.9";
    version = "0.7.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ua-parser-js/-/ua-parser-js-0.7.9.tgz";
      name = "ua-parser-js-0.7.9.tgz";
      sha1 = "4d70d68f353923765d775bfd84b23028b4e11ed5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-js"."2.4.x" =
    self.by-version."uglify-js"."2.4.24";
  by-version."uglify-js"."2.4.24" = self.buildNodePackage {
    name = "uglify-js-2.4.24";
    version = "2.4.24";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-js/-/uglify-js-2.4.24.tgz";
      name = "uglify-js-2.4.24.tgz";
      sha1 = "fad5755c1e1577658bb06ff9ab6e548c95bebd6e";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "source-map-0.1.34" = self.by-version."source-map"."0.1.34";
      "uglify-to-browserify-1.0.2" = self.by-version."uglify-to-browserify"."1.0.2";
      "yargs-3.5.4" = self.by-version."yargs"."3.5.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-js"."~2.2" =
    self.by-version."uglify-js"."2.2.5";
  by-version."uglify-js"."2.2.5" = self.buildNodePackage {
    name = "uglify-js-2.2.5";
    version = "2.2.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-js/-/uglify-js-2.2.5.tgz";
      name = "uglify-js-2.2.5.tgz";
      sha1 = "a6e02a70d839792b9780488b7b8b184c095c99c7";
    };
    deps = {
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-js"."~2.4.0" =
    self.by-version."uglify-js"."2.4.24";
  by-spec."uglify-js"."~2.4.24" =
    self.by-version."uglify-js"."2.4.24";
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
  by-spec."umd"."^2.1.0" =
    self.by-version."umd"."2.1.0";
  by-version."umd"."2.1.0" = self.buildNodePackage {
    name = "umd-2.1.0";
    version = "2.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/umd/-/umd-2.1.0.tgz";
      name = "umd-2.1.0.tgz";
      sha1 = "4a6307b762f17f02d201b5fa154e673396c263cf";
    };
    deps = {
      "rfile-1.0.0" = self.by-version."rfile"."1.0.0";
      "ruglify-1.0.0" = self.by-version."ruglify"."1.0.0";
      "through-2.3.8" = self.by-version."through"."2.3.8";
      "uglify-js-2.4.24" = self.by-version."uglify-js"."2.4.24";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."umd"."~2.1.0" =
    self.by-version."umd"."2.1.0";
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
  by-spec."updeep"."^0.10.1" =
    self.by-version."updeep"."0.10.1";
  by-version."updeep"."0.10.1" = self.buildNodePackage {
    name = "updeep-0.10.1";
    version = "0.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/updeep/-/updeep-0.10.1.tgz";
      name = "updeep-0.10.1.tgz";
      sha1 = "37a98d76f21c3a7f00b3ac0e498e97ce5ac62ea4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."lodash"."3.10.1"];
    os = [ ];
    cpu = [ ];
  };
  "updeep" = self.by-version."updeep"."0.10.1";
  by-spec."upper-case"."^1.0.3" =
    self.by-version."upper-case"."1.1.2";
  by-version."upper-case"."1.1.2" = self.buildNodePackage {
    name = "upper-case-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/upper-case/-/upper-case-1.1.2.tgz";
      name = "upper-case-1.1.2.tgz";
      sha1 = "18973f566860831d5617724efd5c1b15cfd26d36";
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
    self.by-version."upper-case"."1.1.2";
  by-spec."upper-case"."^1.1.1" =
    self.by-version."upper-case"."1.1.2";
  by-spec."upper-case-first"."^1.1.0" =
    self.by-version."upper-case-first"."1.1.1";
  by-version."upper-case-first"."1.1.1" = self.buildNodePackage {
    name = "upper-case-first-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/upper-case-first/-/upper-case-first-1.1.1.tgz";
      name = "upper-case-first-1.1.1.tgz";
      sha1 = "7fa7b70da0fb683e081e687e28f33ec3b349c04b";
    };
    deps = {
      "upper-case-1.1.2" = self.by-version."upper-case"."1.1.2";
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
  by-spec."url-loader"."^0.5.6" =
    self.by-version."url-loader"."0.5.6";
  by-version."url-loader"."0.5.6" = self.buildNodePackage {
    name = "url-loader-0.5.6";
    version = "0.5.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/url-loader/-/url-loader-0.5.6.tgz";
      name = "url-loader-0.5.6.tgz";
      sha1 = "644521a5dc66b8729caab1b6ba9e580e021ded45";
    };
    deps = {
      "loader-utils-0.2.11" = self.by-version."loader-utils"."0.2.11";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."file-loader"."0.8.4"];
    os = [ ];
    cpu = [ ];
  };
  "url-loader" = self.by-version."url-loader"."0.5.6";
  by-spec."user-home"."^1.1.1" =
    self.by-version."user-home"."1.1.1";
  by-version."user-home"."1.1.1" = self.buildNodePackage {
    name = "user-home-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/user-home/-/user-home-1.1.1.tgz";
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
    self.by-version."useragent"."2.1.7";
  by-version."useragent"."2.1.7" = self.buildNodePackage {
    name = "useragent-2.1.7";
    version = "2.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/useragent/-/useragent-2.1.7.tgz";
      name = "useragent-2.1.7.tgz";
      sha1 = "2229bc0a1bc7751e0ed50b0c13184b81fcb2ec8a";
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
  by-spec."utf-8-validate"."1.2.x" =
    self.by-version."utf-8-validate"."1.2.1";
  by-version."utf-8-validate"."1.2.1" = self.buildNodePackage {
    name = "utf-8-validate-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utf-8-validate/-/utf-8-validate-1.2.1.tgz";
      name = "utf-8-validate-1.2.1.tgz";
      sha1 = "44cb7c6eead73d6b40448f71f745904357b9f72c";
    };
    deps = {
      "bindings-1.2.1" = self.by-version."bindings"."1.2.1";
      "nan-2.1.0" = self.by-version."nan"."2.1.0";
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
  by-spec."util"."~0.10.1" =
    self.by-version."util"."0.10.3";
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
      "spdx-correct-1.0.1" = self.by-version."spdx-correct"."1.0.1";
      "spdx-expression-parse-1.0.0" = self.by-version."spdx-expression-parse"."1.0.0";
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
  by-spec."vm-browserify"."~0.0.1" =
    self.by-version."vm-browserify"."0.0.4";
  by-spec."vm-leaflet-icons"."^0.0.3" =
    self.by-version."vm-leaflet-icons"."0.0.3";
  by-version."vm-leaflet-icons"."0.0.3" = self.buildNodePackage {
    name = "vm-leaflet-icons-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/vm-leaflet-icons/-/vm-leaflet-icons-0.0.3.tgz";
      name = "vm-leaflet-icons-0.0.3.tgz";
      sha1 = "21d9048d713b3b2c1044c1feedc271c84c6a4b84";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "vm-leaflet-icons" = self.by-version."vm-leaflet-icons"."0.0.3";
  by-spec."void-elements"."~1.0.0" =
    self.by-version."void-elements"."1.0.0";
  by-version."void-elements"."1.0.0" = self.buildNodePackage {
    name = "void-elements-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/void-elements/-/void-elements-1.0.0.tgz";
      name = "void-elements-1.0.0.tgz";
      sha1 = "6e5db1e35d591f5ac690ce1a340f793a817b2c2a";
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
    self.by-version."watchpack"."0.2.8";
  by-version."watchpack"."0.2.8" = self.buildNodePackage {
    name = "watchpack-0.2.8";
    version = "0.2.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/watchpack/-/watchpack-0.2.8.tgz";
      name = "watchpack-0.2.8.tgz";
      sha1 = "3234d3648e72a43f25c225fb8ff12877d3f4ac47";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "chokidar-1.2.0" = self.by-version."chokidar"."1.2.0";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack"."*" =
    self.by-version."webpack"."1.12.2";
  by-version."webpack"."1.12.2" = self.buildNodePackage {
    name = "webpack-1.12.2";
    version = "1.12.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack/-/webpack-1.12.2.tgz";
      name = "webpack-1.12.2.tgz";
      sha1 = "ef40ed5d7c54716f5fae1598a451669316434e51";
    };
    deps = {
      "async-1.4.2" = self.by-version."async"."1.4.2";
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "enhanced-resolve-0.9.0" = self.by-version."enhanced-resolve"."0.9.0";
      "esprima-2.6.0" = self.by-version."esprima"."2.6.0";
      "interpret-0.6.6" = self.by-version."interpret"."0.6.6";
      "memory-fs-0.2.0" = self.by-version."memory-fs"."0.2.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "node-libs-browser-0.5.3" = self.by-version."node-libs-browser"."0.5.3";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "tapable-0.1.9" = self.by-version."tapable"."0.1.9";
      "uglify-js-2.4.24" = self.by-version."uglify-js"."2.4.24";
      "watchpack-0.2.8" = self.by-version."watchpack"."0.2.8";
      "webpack-core-0.6.7" = self.by-version."webpack-core"."0.6.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack"."^1.0.0" =
    self.by-version."webpack"."1.12.2";
  by-spec."webpack"."^1.12.2" =
    self.by-version."webpack"."1.12.2";
  "webpack" = self.by-version."webpack"."1.12.2";
  by-spec."webpack"."^1.3.0" =
    self.by-version."webpack"."1.12.2";
  by-spec."webpack"."^1.4.0" =
    self.by-version."webpack"."1.12.2";
  by-spec."webpack-core"."~0.6.0" =
    self.by-version."webpack-core"."0.6.7";
  by-version."webpack-core"."0.6.7" = self.buildNodePackage {
    name = "webpack-core-0.6.7";
    version = "0.6.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack-core/-/webpack-core-0.6.7.tgz";
      name = "webpack-core-0.6.7.tgz";
      sha1 = "dddde72290a6697f9490abef6b8ed191c5fff952";
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
    self.by-version."webpack-dev-middleware"."1.2.0";
  by-version."webpack-dev-middleware"."1.2.0" = self.buildNodePackage {
    name = "webpack-dev-middleware-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack-dev-middleware/-/webpack-dev-middleware-1.2.0.tgz";
      name = "webpack-dev-middleware-1.2.0.tgz";
      sha1 = "13b76aa2c8476000cd6ffefeae3eef448ee474ed";
    };
    deps = {
      "memory-fs-0.2.0" = self.by-version."memory-fs"."0.2.0";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."webpack"."1.12.2"];
    os = [ ];
    cpu = [ ];
  };
  by-spec."webpack-dev-middleware"."^1.2.0" =
    self.by-version."webpack-dev-middleware"."1.2.0";
  by-spec."webpack-dev-server"."^1.12.0" =
    self.by-version."webpack-dev-server"."1.12.1";
  by-version."webpack-dev-server"."1.12.1" = self.buildNodePackage {
    name = "webpack-dev-server-1.12.1";
    version = "1.12.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/webpack-dev-server/-/webpack-dev-server-1.12.1.tgz";
      name = "webpack-dev-server-1.12.1.tgz";
      sha1 = "c6dc855520c8ee9cba9256241b3390c1348b0d5c";
    };
    deps = {
      "compression-1.6.0" = self.by-version."compression"."1.6.0";
      "connect-history-api-fallback-1.1.0" = self.by-version."connect-history-api-fallback"."1.1.0";
      "express-4.13.3" = self.by-version."express"."4.13.3";
      "http-proxy-1.11.3" = self.by-version."http-proxy"."1.11.3";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "serve-index-1.7.2" = self.by-version."serve-index"."1.7.2";
      "socket.io-1.3.7" = self.by-version."socket.io"."1.3.7";
      "socket.io-client-1.3.7" = self.by-version."socket.io-client"."1.3.7";
      "stream-cache-0.0.2" = self.by-version."stream-cache"."0.0.2";
      "strip-ansi-3.0.0" = self.by-version."strip-ansi"."3.0.0";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
      "webpack-dev-middleware-1.2.0" = self.by-version."webpack-dev-middleware"."1.2.0";
      "webpack-1.12.2" = self.by-version."webpack"."1.12.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "webpack-dev-server" = self.by-version."webpack-dev-server"."1.12.1";
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
    self.by-version."which"."1.2.0";
  by-version."which"."1.2.0" = self.buildNodePackage {
    name = "which-1.2.0";
    version = "1.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/which/-/which-1.2.0.tgz";
      name = "which-1.2.0.tgz";
      sha1 = "a5c8df5abc792f6ce9652c8d9ca8f3a91b77e59d";
    };
    deps = {
      "is-absolute-0.1.7" = self.by-version."is-absolute"."0.1.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."which"."^1.1.1" =
    self.by-version."which"."1.2.0";
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
  by-spec."window-size"."^0.1.2" =
    self.by-version."window-size"."0.1.2";
  by-version."window-size"."0.1.2" = self.buildNodePackage {
    name = "window-size-0.1.2";
    version = "0.1.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/window-size/-/window-size-0.1.2.tgz";
      name = "window-size-0.1.2.tgz";
      sha1 = "10d53f0f8ee867e3a851f0be0e3100872329db3a";
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
  by-spec."ws"."0.8.0" =
    self.by-version."ws"."0.8.0";
  by-version."ws"."0.8.0" = self.buildNodePackage {
    name = "ws-0.8.0";
    version = "0.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ws/-/ws-0.8.0.tgz";
      name = "ws-0.8.0.tgz";
      sha1 = "ac60ebad312121d01e16cc3383d7ec67ad0f0f1f";
    };
    deps = {
      "options-0.0.6" = self.by-version."options"."0.0.6";
      "ultron-1.0.2" = self.by-version."ultron"."1.0.2";
    };
    optionalDependencies = {
      "bufferutil-1.2.1" = self.by-version."bufferutil"."1.2.1";
      "utf-8-validate-1.2.1" = self.by-version."utf-8-validate"."1.2.1";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xmlhttprequest"."https://github.com/rase-/node-XMLHttpRequest/archive/a6b6f2.tar.gz" =
    self.by-version."xmlhttprequest"."1.5.0";
  by-version."xmlhttprequest"."1.5.0" = self.buildNodePackage {
    name = "xmlhttprequest-1.5.0";
    version = "1.5.0";
    bin = false;
    src = fetchurl {
      url = "https://github.com/rase-/node-XMLHttpRequest/archive/a6b6f2.tar.gz";
      name = "xmlhttprequest-1.5.0.tgz";
      sha256 = "f29574bb6dad260b7856b8dcfd432fc9ceb52161b8ee02f387440bb7f6e39f92";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xtend".">=4.0.0 <4.1.0-0" =
    self.by-version."xtend"."4.0.0";
  by-version."xtend"."4.0.0" = self.buildNodePackage {
    name = "xtend-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xtend/-/xtend-4.0.0.tgz";
      name = "xtend-4.0.0.tgz";
      sha1 = "8bc36ff87aedbe7ce9eaf0bca36b2354a743840f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xtend"."^3.0.0" =
    self.by-version."xtend"."3.0.0";
  by-version."xtend"."3.0.0" = self.buildNodePackage {
    name = "xtend-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xtend/-/xtend-3.0.0.tgz";
      name = "xtend-3.0.0.tgz";
      sha1 = "5cce7407baf642cba7becda568111c493f59665a";
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
    self.by-version."xtend"."4.0.0";
  by-spec."xtend"."~3.0.0" =
    self.by-version."xtend"."3.0.0";
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
  by-spec."yargs"."^3.26.0" =
    self.by-version."yargs"."3.28.0";
  by-version."yargs"."3.28.0" = self.buildNodePackage {
    name = "yargs-3.28.0";
    version = "3.28.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/yargs/-/yargs-3.28.0.tgz";
      name = "yargs-3.28.0.tgz";
      sha1 = "5341affb94a1565d6092a00c929802e5a547a298";
    };
    deps = {
      "camelcase-1.2.1" = self.by-version."camelcase"."1.2.1";
      "cliui-3.0.2" = self.by-version."cliui"."3.0.2";
      "decamelize-1.0.0" = self.by-version."decamelize"."1.0.0";
      "os-locale-1.4.0" = self.by-version."os-locale"."1.4.0";
      "window-size-0.1.2" = self.by-version."window-size"."0.1.2";
      "y18n-3.2.0" = self.by-version."y18n"."3.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "yargs" = self.by-version."yargs"."3.28.0";
  by-spec."yargs"."^3.8.0" =
    self.by-version."yargs"."3.28.0";
  by-spec."yargs"."~3.27.0" =
    self.by-version."yargs"."3.27.0";
  by-version."yargs"."3.27.0" = self.buildNodePackage {
    name = "yargs-3.27.0";
    version = "3.27.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/yargs/-/yargs-3.27.0.tgz";
      name = "yargs-3.27.0.tgz";
      sha1 = "21205469316e939131d59f2da0c6d7f98221ea40";
    };
    deps = {
      "camelcase-1.2.1" = self.by-version."camelcase"."1.2.1";
      "cliui-2.1.0" = self.by-version."cliui"."2.1.0";
      "decamelize-1.0.0" = self.by-version."decamelize"."1.0.0";
      "os-locale-1.4.0" = self.by-version."os-locale"."1.4.0";
      "window-size-0.1.2" = self.by-version."window-size"."0.1.2";
      "y18n-3.2.0" = self.by-version."y18n"."3.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yargs"."~3.5.4" =
    self.by-version."yargs"."3.5.4";
  by-version."yargs"."3.5.4" = self.buildNodePackage {
    name = "yargs-3.5.4";
    version = "3.5.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/yargs/-/yargs-3.5.4.tgz";
      name = "yargs-3.5.4.tgz";
      sha1 = "d8aff8f665e94c34bd259bdebd1bfaf0ddd35361";
    };
    deps = {
      "camelcase-1.2.1" = self.by-version."camelcase"."1.2.1";
      "decamelize-1.0.0" = self.by-version."decamelize"."1.0.0";
      "window-size-0.1.0" = self.by-version."window-size"."0.1.0";
      "wordwrap-0.0.2" = self.by-version."wordwrap"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
}
