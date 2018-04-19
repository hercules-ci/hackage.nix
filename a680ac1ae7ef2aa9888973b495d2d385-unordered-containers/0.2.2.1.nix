{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "unordered-containers";
          version = "0.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010-2012 Johan Tibell\n2010 Edward Z. Yang";
        maintainer = "johan.tibell@gmail.com";
        author = "Johan Tibell";
        homepage = "https://github.com/tibbe/unordered-containers";
        url = "";
        synopsis = "Efficient hashing-based container types";
        description = "Efficient hashing-based container types.  The containers have been\noptimized for performance critical use, both in terms of large data\nquantities and high speed.\n\nThe declared cost of each operation is either worst-case or\namortized, but remains valid even if structures are shared.";
        buildType = "Simple";
      };
      components = {
        unordered-containers = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.hashable
          ];
        };
        tests = {
          hashmap-lazy-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.unordered-containers
            ];
          };
          hashmap-strict-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.unordered-containers
            ];
          };
          hashset-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.unordered-containers
            ];
          };
          regressions = {
            depends  = [
              hsPkgs.base
              hsPkgs.hashable
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.unordered-containers
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.random
            ];
          };
        };
      };
    }