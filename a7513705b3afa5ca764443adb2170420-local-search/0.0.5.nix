{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "local-search";
          version = "0.0.5";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2012 Richard Senington";
        maintainer = "sc06r2s@leeds.ac.uk";
        author = "Richard Senington & David Duke";
        homepage = "http://www.comp.leeds.ac.uk/sc06r2s/Projects/HaskellLocalSearch";
        url = "";
        synopsis = "A first attempt at generalised local search within Haskell, for applications in combinatorial optimisation.";
        description = "This library operates by representing metaheuristics as generators of solutions, or\nstreams of solutions, which are themselves the result of resolving the interactions of\nother streams of values. The library contains combinators for constructing and\nmanaging these structures.";
        buildType = "Simple";
      };
      components = {
        local-search = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.combinatorial-problems
            hsPkgs.containers
          ];
        };
      };
    }