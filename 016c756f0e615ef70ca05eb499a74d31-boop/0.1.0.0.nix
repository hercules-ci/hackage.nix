{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "boop";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Tobias Dammers";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "https://github.com/tdammers/boop";
        url = "";
        synopsis = "OOP primitives for Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        boop = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.mtl
          ];
        };
        tests = {
          boop-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.boop
            ];
          };
        };
      };
    }