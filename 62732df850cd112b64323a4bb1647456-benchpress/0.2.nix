{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "benchpress";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johan.tibell@gmail.com";
        author = "Johan Tibell";
        homepage = "";
        url = "";
        synopsis = "Micro-benchmarking with detailed statistics.";
        description = "Benchmarks actions and produces statistics\nsuch as min, mean, median, standard deviation,\nand max execution time.  Also computes\nexecution time percentiles.  Comes with\nfunctions to pretty-print the results.";
        buildType = "Simple";
      };
      components = {
        benchpress = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.time
          ];
        };
      };
    }