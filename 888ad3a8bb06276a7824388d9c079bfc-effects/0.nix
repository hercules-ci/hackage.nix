{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "effects";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@w3future.com";
        author = "Sjoerd Visscher";
        homepage = "http://github.com/sjoerdvisscher/effects";
        url = "";
        synopsis = "Computational Effects";
        description = "An alternative to Monad Transformers.";
        buildType = "Simple";
      };
      components = {
        effects = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.void
          ];
        };
      };
    }