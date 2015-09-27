let
  pkgs    = import <nixpkgs> {};
  stdenv  = pkgs.stdenv;
  lib     = pkgs.lib;

in rec {
  devEnv = stdenv.mkDerivation rec {
    name = "kvm-frontend-dev-env";
    src = ./.;
    buildInputs = with pkgs; [
      git
      nodejs
      python
      phantomjs2
    ];
    shellHook = ''
      export PHANTOMJS_BIN=${pkgs.phantomjs2}/bin/phantomjs
      '';
  };
}
