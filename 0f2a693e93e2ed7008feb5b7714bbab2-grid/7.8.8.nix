{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "grid";
          version = "7.8.8";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Amy de Buitléir 2010-2016";
        maintainer = "amy@nualeargais.ie";
        author = "Amy de Buitléir";
        homepage = "https://github.com/mhwombat/grid#readme";
        url = "";
        synopsis = "Tools for working with regular grids (graphs, lattices).";
        description = "Provides tools for working with regular arrangements\nof tiles, such as might be used in a board game or some\nother type of grid map. Currently supports triangular,\nsquare, and hexagonal tiles, with various 2D and\ntoroidal layouts.\nThe userguide is available at\n<https://github.com/mhwombat/grid/wiki>.";
        buildType = "Simple";
      };
      components = {
        grid = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.containers
          ];
        };
        tests = {
          grid-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.grid
              hsPkgs.containers
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }