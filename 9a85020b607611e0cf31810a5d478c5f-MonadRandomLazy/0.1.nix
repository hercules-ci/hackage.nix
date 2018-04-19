{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "MonadRandomLazy";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Norman Ramsey <nr@cs.tufts.edu>";
        author = "Norman Ramsey (following Koen Claessen)";
        homepage = "";
        url = "";
        synopsis = "Lazy monad for psuedo random-number generation.";
        description = "Support for lazy computations which consume random values.";
        buildType = "Simple";
      };
      components = {
        MonadRandomLazy = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.MonadRandom
          ];
        };
      };
    }