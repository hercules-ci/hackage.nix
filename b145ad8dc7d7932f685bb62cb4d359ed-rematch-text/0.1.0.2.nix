{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rematch-text";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tcrayford@googlemail.com";
        author = "Tom Crayford";
        homepage = "";
        url = "";
        synopsis = "`rematch` matchers for Data.Text";
        description = "";
        buildType = "Simple";
      };
      components = {
        rematch-text = {
          depends  = [
            hsPkgs.base
            hsPkgs.rematch
            hsPkgs.text
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.text
              hsPkgs.rematch
            ];
          };
        };
      };
    }