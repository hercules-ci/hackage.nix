{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pqueue";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Louis Wasserman <wasserman.louis@gmail.com>";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "Reliable, persistent, fast priority queues.";
        description = "A fast, reliable priority queue implementation based on a binomial heap.";
        buildType = "Simple";
      };
      components = {
        pqueue = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
      };
    }