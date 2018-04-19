{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "test-framework-quickcheck2";
          version = "0.3.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Haskell Libraries <libraries@haskell.org>";
        author = "Max Bolingbroke <batterseapower@hotmail.com>";
        homepage = "http://haskell.github.io/test-framework/";
        url = "";
        synopsis = "QuickCheck-2 support for the test-framework package.";
        description = "Allows @QuickCheck-2@ properties to be used with the </package/test-framework test-framework package>.";
        buildType = "Simple";
      };
      components = {
        test-framework-quickcheck2 = {
          depends  = [
            hsPkgs.test-framework
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.extensible-exceptions
            hsPkgs.random
          ];
        };
      };
    }