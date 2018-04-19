{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "discrete-space-map";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@w3future.com";
        author = "Sjoerd Visscher";
        homepage = "https://github.com/sjoerdvisscher/discrete-space-map";
        url = "";
        synopsis = "A discrete space map.";
        description = "A discrete space map implemented as a zipper on an infinite perfect binary tree.";
        buildType = "Simple";
      };
      components = {
        discrete-space-map = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.comonads-fd
            hsPkgs.keys
            hsPkgs.semigroupoids
            hsPkgs.distributive
            hsPkgs.representable-functors
          ];
        };
      };
    }