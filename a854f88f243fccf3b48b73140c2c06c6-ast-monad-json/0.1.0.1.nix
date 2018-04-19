{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ast-monad-json";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Masato Mouri";
        maintainer = "8128jp@gmail.com";
        author = "Masato Mouri";
        homepage = "https://github.com/mouri111/ast-monad-json#readme";
        url = "";
        synopsis = "A library for writing JSON";
        description = "";
        buildType = "Simple";
      };
      components = {
        ast-monad-json = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.ast-monad
          ];
        };
        tests = {
          ast-monad-json-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ast-monad
              hsPkgs.ast-monad-json
              hsPkgs.text
              hsPkgs.hspec
            ];
          };
        };
      };
    }