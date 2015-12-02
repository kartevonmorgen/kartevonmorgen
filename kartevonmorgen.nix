{ stdenv, buildEnv, fetchFromGitHub, callPackage }:

with stdenv.lib;

let
  pkgs = import <nixpkgs> {};
  nodePackages = callPackage "${pkgs.path}/pkgs/top-level/node-packages.nix" {
    self = nodePackages;
    generated = ./node-packages.nix;
  };

  node_env = buildEnv {
    name = "node_env";
    paths = with nodePackages;
      [
        font-awesome
        leaflet
        lodash
        nodePackages."normalize.css"
        purecss
        react
        react-dom
        react-leaflet
        react-pure-render
        react-redux
        redux
        redux-form
        redux-logger
        redux-thunk
        source-sans-pro
        superagent
        superagent-prefix
        updeep
        vm-leaflet-icons
      ] ++ [
        coffee-loader
        coffee-script
        css-loader
        file-loader
        html-webpack-plugin
        json-loader
        less
        less-loader
        nib
        node-sass
        react-hot-loader
        sass-loader
        style-loader
        stylus
        stylus-loader
        url-loader
        webpack
        yargs
    ];
    pathsToLink = [ "/lib" ];
    ignoreCollisions = true;
  };

in stdenv.mkDerivation rec {
  version = "0.0.12";
  name = "kartevonmorgen-${version}";
  src = fetchFromGitHub {
    owner = "flosse";
    repo = "kartevonmorgen";
    rev = "v${version}";
    sha256 = "0lj1v180bykhs8cqz1ccp2kvgd5ffm1rf3xq8r27klajf56pydha";
  };

  buildInputs = with pkgs; [ nodejs node_env nodePackages.webpack ];

  buildPhase = with nodePackages; ''
    export NODE_PATH=${node_env}/lib/node_modules
    npm run pack
    '';

  installPhase = ''
    mkdir -p "$out"
    cp -R dist/* $out/
    '';

  meta = {
    description = "Mapping for Good";
    homepage = http://www.kartevonmorgen.org/;
    license = licenses.agpl3;
    platforms = platforms.linux;
    maintainers = [ maintainers.flosse ];
  };
}
