{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stringbuilder";
          version = "0.3.0";
        };
        license = "MIT";
        copyright = "(c) 2011, 2012 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "A monadic builder for multi-line string literals";
        description = "<https://github.com/sol/stringbuilder#readme>";
        buildType = "Simple";
      };
      components = {
        stringbuilder = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.stringbuilder
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }