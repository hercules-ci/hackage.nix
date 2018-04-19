{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clifford";
          version = "0.1.0.14";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sophie@traumapony.org";
        author = "Sophie Taylor";
        homepage = "http://github.com/spacekitteh/haskell-clifford";
        url = "";
        synopsis = "A Clifford algebra library";
        description = "";
        buildType = "Simple";
      };
      components = {
        clifford = {
          depends  = [
            hsPkgs.base
            hsPkgs.numeric-prelude
            hsPkgs.permutation
            hsPkgs.data-ordlist
            hsPkgs.converge
            hsPkgs.lens
            hsPkgs.deepseq
            hsPkgs.vector
            hsPkgs.stream-fusion
            hsPkgs.criterion
            hsPkgs.derive
            hsPkgs.QuickCheck
            hsPkgs.nats
            hsPkgs.tagged
            hsPkgs.cereal
            hsPkgs.hspec
            hsPkgs.MemoTrie
            hsPkgs.semigroupoids
            hsPkgs.monoid-extras
            hsPkgs.reflection
          ];
        };
        exes = {
          pendulum = {
            depends  = [
              hsPkgs.base
              hsPkgs.clifford
              hsPkgs.numeric-prelude
              hsPkgs.gnuplot
              hsPkgs.stream-fusion
              hsPkgs.Chart
              hsPkgs.Chart-cairo
              hsPkgs.colour
              hsPkgs.lens
              hsPkgs.data-default-class
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.clifford
              hsPkgs.hspec
              hsPkgs.numeric-prelude
              hsPkgs.QuickCheck
              hsPkgs.nats
            ];
          };
        };
        benchmarks = {
          basic-ops = {
            depends  = [
              hsPkgs.base
              hsPkgs.clifford
              hsPkgs.criterion
              hsPkgs.numeric-prelude
              hsPkgs.stream-fusion
            ];
          };
        };
      };
    }