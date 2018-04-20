{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Villefort";
          version = "0.1.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Chris Reuter";
        maintainer = "creuter@lsoc.org";
        author = "Chris Reuter";
        homepage = "https://github.com/Chrisr850/Villefort#readme";
        url = "";
        synopsis = "Villefort is a task manager and time tracker written in haskell.";
        description = "Villefort is a browser based time tracker.";
        buildType = "Simple";
      };
      components = {
        Villefort = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.HDBC-sqlite3
            hsPkgs.split
            hsPkgs.time
            hsPkgs.FindBin
            hsPkgs.mtl
          ];
        };
        exes = {
          Villefort = {
            depends  = [
              hsPkgs.base
              hsPkgs.Villefort
              hsPkgs.scotty
              hsPkgs.HDBC-sqlite3
              hsPkgs.HDBC
              hsPkgs.split
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
        tests = {
          Villefort-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.Villefort
            ];
          };
        };
      };
    }