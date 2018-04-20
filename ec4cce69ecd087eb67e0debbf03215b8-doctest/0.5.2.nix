{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "doctest";
          version = "0.5.2";
        };
        license = "MIT";
        copyright = "(c) 2009-2012 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "https://github.com/sol/doctest-haskell#readme";
        url = "";
        synopsis = "Test interactive Haskell examples";
        description = "The doctest program checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).\n\nDocumentation is at\n<https://github.com/sol/doctest-haskell#readme>.";
        buildType = "Simple";
      };
      components = {
        doctest = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.ghc-paths
            hsPkgs.HUnit
          ] ++ [ hsPkgs.haddock ];
        };
        exes = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.ghc-paths
              hsPkgs.HUnit
            ] ++ [ hsPkgs.haddock ];
          };
        };
      };
    }