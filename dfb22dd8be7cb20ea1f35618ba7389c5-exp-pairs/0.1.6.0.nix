{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exp-pairs";
          version = "0.1.6.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "andrew.lelechenko@gmail.com";
        author = "Andrew Lelechenko";
        homepage = "https://github.com/Bodigrim/exp-pairs";
        url = "";
        synopsis = "Linear programming over exponent pairs";
        description = "Package implements an algorithm to minimize rational objective function over the set of exponent pairs";
        buildType = "Simple";
      };
      components = {
        exp-pairs = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.prettyprinter
            hsPkgs.deepseq
            hsPkgs.containers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.exp-pairs
              hsPkgs.matrix
              hsPkgs.random
            ];
          };
        };
      };
    }