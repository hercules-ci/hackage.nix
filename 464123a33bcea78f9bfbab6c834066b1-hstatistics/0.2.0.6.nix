{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hstatistics";
          version = "0.2.0.6";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) A.V.H. McPhail 2010";
        maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
        author = "Vivian McPhail";
        homepage = "http://code.haskell.org/hstatistics";
        url = "";
        synopsis = "Statistics";
        description = "Purely functional interface for statistics based on hmatrix and hmatrix-gsl-stats";
        buildType = "Simple";
      };
      components = {
        hstatistics = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.random
            hsPkgs.hmatrix
            hsPkgs.hmatrix-gsl-stats
          ];
        };
      };
    }