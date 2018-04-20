{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "extra";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2014";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "https://github.com/ndmitchell/extra#readme";
        url = "";
        synopsis = "Extra functions I use.";
        description = "A library of extra functions for the standard Haskell libraries. Most functions are new, and add missing functionality. Some are available in later versions of GHC, but this package ports them back to GHC 7.2.";
        buildType = "Simple";
      };
      components = {
        extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.time
          ];
        };
        tests = {
          extra-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }