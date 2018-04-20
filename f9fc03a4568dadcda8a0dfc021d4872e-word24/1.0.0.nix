{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "word24";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John W. Lato, jwlato@gmail.com";
        author = "John W. Lato, jwlato@gmail.com";
        homepage = "http://www.tiresiaspress.us/haskell/word24";
        url = "";
        synopsis = "24-bit word and int types for GHC";
        description = "24-bit Word and Int data types.";
        buildType = "Simple";
      };
      components = {
        word24 = {
          depends  = [
            hsPkgs.haskell98
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          testWord24 = {
            depends  = pkgs.lib.optionals _flags.buildtests [
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }