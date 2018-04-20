{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabal-test-quickcheck";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "(c) 2013 Timothy Jones";
        maintainer = "Timothy Jones <git@zimothy.com>";
        author = "Timothy Jones";
        homepage = "https://github.com/zimothy/cabal-test-quickcheck";
        url = "";
        synopsis = "QuickCheck for Cabal";
        description = "Support for QuickCheck with the 'detailed' Cabal testing interface.";
        buildType = "Simple";
      };
      components = {
        cabal-test-quickcheck = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.cabal-test-quickcheck
            ];
          };
        };
      };
    }