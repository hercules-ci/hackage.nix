{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-types";
          version = "0.6.9";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2011 Aristid Breitkreuz";
        maintainer = "aristidb@googlemail.com";
        author = "Aristid Breitkreuz, Michael Snoyman";
        homepage = "https://github.com/aristidb/http-types";
        url = "";
        synopsis = "Generic HTTP types for Haskell (for both client and server code).";
        description = "Generic HTTP types for Haskell (for both client and server code).";
        buildType = "Simple";
      };
      components = {
        http-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.case-insensitive
            hsPkgs.blaze-builder
            hsPkgs.text
          ];
        };
        exes = {
          runtests = {
            depends  = optionals _flags.test [
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.ascii
              hsPkgs.array
              hsPkgs.QuickCheck
              hsPkgs.hspec
            ];
          };
        };
      };
    }