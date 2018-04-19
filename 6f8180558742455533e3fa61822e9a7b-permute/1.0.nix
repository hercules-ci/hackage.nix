{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "permute";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "athas@sigkill.dk";
        author = "Troels Henriksen";
        homepage = "";
        url = "";
        synopsis = "Generalised permutation parser combinator";
        description = "General permutation parser combinators that will work with any\nparser combinator library.";
        buildType = "Simple";
      };
      components = {
        permute = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.base
          ];
        };
      };
    }