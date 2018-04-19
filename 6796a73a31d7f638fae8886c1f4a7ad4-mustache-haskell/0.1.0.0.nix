{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mustache-haskell";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dhchoi@gmail.com";
        author = "Daniel Choi";
        homepage = "https://github.com/danchoi/mustache";
        url = "";
        synopsis = "straight implementation of mustache templates";
        description = "";
        buildType = "Simple";
      };
      components = {
        mustache-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.pretty-show
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.scientific
            hsPkgs.directory
            hsPkgs.bytestring
          ];
        };
        exes = {
          mus = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.mustache-haskell
              hsPkgs.parsec
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.pretty-show
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.scientific
              hsPkgs.directory
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }