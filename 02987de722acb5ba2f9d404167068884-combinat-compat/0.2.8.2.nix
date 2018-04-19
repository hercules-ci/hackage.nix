{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "combinat-compat";
          version = "0.2.8.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2016 Balazs Komuves";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "http://code.haskell.org/~bkomuves/";
        url = "";
        synopsis = "Generate and manipulate various combinatorial objects.";
        description = "A collection of functions to generate, count, manipulate\nand visualize all kinds of combinatorial objects like\npartitions, compositions, trees, permutations, braids,\nYoung tableaux, and so on.\nForked from the [combinat](http://hackage.haskell.org/package/combinat) package.";
        buildType = "Simple";
      };
      components = {
        combinat-compat = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.transformers
          ];
        };
        tests = {
          combinat-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.transformers
              hsPkgs.combinat-compat
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }