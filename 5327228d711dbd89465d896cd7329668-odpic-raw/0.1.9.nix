{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "odpic-raw";
          version = "0.1.9";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daniel YU";
        maintainer = "leptonyu@gmail.com";
        author = "Daniel YU";
        homepage = "https://github.com/leptonyu/odpic-raw#readme";
        url = "";
        synopsis = "";
        description = "A low-level client library for the Oracle database, implemented as\nbindings to the C ODPI API.";
        buildType = "Simple";
      };
      components = {
        odpic-raw = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.reflection
          ];
          libs = [ pkgs.odpic ];
        };
        tests = {
          odpic-raw-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.odpic-raw
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }