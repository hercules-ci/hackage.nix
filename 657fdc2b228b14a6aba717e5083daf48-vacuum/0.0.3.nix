{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vacuum";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Matt Morrow 2008";
        maintainer = "Matt Morrow <morrow@moonpatio.com>";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "Extract graph representations of ghc heap values.";
        description = ".";
        buildType = "Simple";
      };
      components = {
        vacuum = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.ghc-prim
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.pretty
            hsPkgs.haskell-src-meta
            hsPkgs.Cabal
            hsPkgs.ghc-paths
          ];
        };
      };
    }