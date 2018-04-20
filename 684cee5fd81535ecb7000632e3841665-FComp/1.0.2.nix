{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      quickcheck2 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "FComp";
          version = "1.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2014 University of Oxford";
        maintainer = "jpm@cs.ox.ac.uk";
        author = "Jose Pedro Magalhaes";
        homepage = "";
        url = "";
        synopsis = "Compose music";
        description = "Compose music";
        buildType = "Simple";
      };
      components = {
        FComp = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.array
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.ListLike
            hsPkgs.binary
            hsPkgs.uu-parsinglib
            hsPkgs.HarmTrace-Base
            hsPkgs.instant-generics
            hsPkgs.ghc-prim
            hsPkgs.haskore
            hsPkgs.midi
            hsPkgs.random
            hsPkgs.time
          ] ++ [ hsPkgs.QuickCheck ];
        };
        exes = {
          fcomp = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.array
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.ListLike
              hsPkgs.binary
              hsPkgs.uu-parsinglib
              hsPkgs.HarmTrace-Base
              hsPkgs.instant-generics
              hsPkgs.ghc-prim
              hsPkgs.haskore
              hsPkgs.midi
              hsPkgs.random
              hsPkgs.time
            ] ++ [ hsPkgs.QuickCheck ];
          };
        };
      };
    }