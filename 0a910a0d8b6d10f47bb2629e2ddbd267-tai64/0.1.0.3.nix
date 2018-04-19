{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tai64";
          version = "0.1.0.3";
        };
        license = "MPL-2.0";
        copyright = "(c) 2015-2016 Kim Altintop";
        maintainer = "kim.altintop@gmail.com";
        author = "Kim Altintop";
        homepage = "https://github.com/kim/tai64";
        url = "";
        synopsis = "Tai64 Labels for Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        tai64 = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.QuickCheck
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.base16-bytestring
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.tai64
            ];
          };
        };
      };
    }