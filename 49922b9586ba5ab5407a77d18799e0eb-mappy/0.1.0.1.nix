{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mappy";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Michael Gilliland";
        maintainer = "mjg.py3@gmail.com";
        author = "Michael Gilliland";
        homepage = "https://github.com/PolyglotSymposium/mappy";
        url = "";
        synopsis = "A functional programming language focused around maps.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        mappy = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
          ];
        };
        exes = {
          mappy = {
            depends  = [
              hsPkgs.base
              hsPkgs.mappy
              hsPkgs.parsec
            ];
          };
        };
        tests = {
          mappy-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mappy
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }