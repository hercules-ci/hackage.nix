{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "one-liner";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@w3future.com";
        author = "Sjoerd Visscher";
        homepage = "https://github.com/sjoerdvisscher/one-liner";
        url = "";
        synopsis = "Constraint-based generics";
        description = "Write short and concise generic instances of type classes.";
        buildType = "Simple";
      };
      components = {
        one-liner = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.ghc-prim
          ];
        };
      };
    }