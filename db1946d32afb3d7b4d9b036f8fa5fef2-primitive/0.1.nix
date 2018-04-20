{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "primitive";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Roman Leshchinskiy 2009";
        maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
        author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
        homepage = "";
        url = "";
        synopsis = "Wrappers for primitive operations";
        description = "\nThis package provides wrappers for primitive array operations from\nGHC.Prim.\n";
        buildType = "Simple";
      };
      components = {
        primitive = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }