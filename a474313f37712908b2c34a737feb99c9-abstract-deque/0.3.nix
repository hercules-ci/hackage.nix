{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      usecas = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "abstract-deque";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rrnewton@gmail.com";
        author = "Ryan R. Newton";
        homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
        url = "";
        synopsis = "Abstract, parameterized interface to mutable Deques.";
        description = "An abstract interface to highly-parameterizable queues/deques.\n\nBackground: There exists a feature space for queues that extends between:\n\n* simple, single-ended, non-concurrent, bounded queues\n\n* double-ended, threadsafe, growable queues\n\n... with important points inbetween (such as\nthe queues used for work-stealing).\n\nThis package includes an interface for Deques that allows the\nprogrammer to use a single API for all of the above, while using the\ntype-system to select an efficient implementation given the\nrequirements (using type families).\n\nThis package also includes a simple reference implementation based\non 'IORef' and \"Data.Sequence\".";
        buildType = "Simple";
      };
      components = {
        abstract-deque = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.time
          ] ++ pkgs.lib.optional (_flags.usecas && compiler.isGhc && !system.isWindows) hsPkgs.atomic-primops;
        };
      };
    }