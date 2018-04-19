{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "validated-types";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Orbital Labs";
        maintainer = "seanhess@gmail.com";
        author = "Sean Hess";
        homepage = "https://github.com/seanhess/validated-types#readme";
        url = "";
        synopsis = "Type-level constraints on strings and other input";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        validated-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.refined
            hsPkgs.text
          ];
        };
        tests = {
          validated-types-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.validated-types
            ];
          };
        };
      };
    }