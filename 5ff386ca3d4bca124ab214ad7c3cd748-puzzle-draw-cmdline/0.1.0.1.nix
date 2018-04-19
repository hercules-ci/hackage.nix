{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      cairo = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "puzzle-draw-cmdline";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "rfvollmert@gmail.com";
        author = "Robert Vollmert";
        homepage = "";
        url = "";
        synopsis = "Creating graphics for pencil puzzles, command line tools.";
        description = "Companion executable to puzzle-draw. Separate to keep\nthe dependency on diagrams-cairo out of the library.";
        buildType = "Simple";
      };
      components = {
        puzzle-draw-cmdline = {
          depends  = [
            hsPkgs.base
            hsPkgs.diagrams-lib
            hsPkgs.optparse-applicative
            hsPkgs.filepath
          ] ++ pkgs.lib.optional _flags.cairo hsPkgs.diagrams-cairo;
        };
        exes = {
          drawpuzzle = {
            depends  = [
              hsPkgs.base
              hsPkgs.puzzle-draw
              hsPkgs.diagrams-lib
              hsPkgs.yaml
              hsPkgs.optparse-applicative
              hsPkgs.aeson
              hsPkgs.filepath
            ] ++ (if _flags.cairo
              then [ hsPkgs.diagrams-cairo ]
              else [ hsPkgs.diagrams-svg ]);
          };
        };
      };
    }