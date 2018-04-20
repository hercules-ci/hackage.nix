{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "align-text";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dhchoi@gmail.com";
        author = "Daniel Choi";
        homepage = "https://github.com/danchoi/align-text";
        url = "";
        synopsis = "A simple unix filter to align text on specified substrings";
        description = "A simple unix filter to align text on specified substrings";
        buildType = "Simple";
      };
      components = {
        exes = {
          align = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }