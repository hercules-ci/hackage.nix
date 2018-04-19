{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ansi-terminal";
          version = "0.8.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mike Pilgrem <public@pilgrem.com>, Roman Cheplyaka <roma@ro-che.info>";
        author = "Max Bolingbroke";
        homepage = "https://github.com/feuerbach/ansi-terminal";
        url = "";
        synopsis = "Simple ANSI terminal support, with Windows compatibility";
        description = "ANSI terminal support for Haskell: allows cursor movement,\nscreen clearing, color output, showing or hiding the\ncursor, and changing the title. Works on UNIX and Windows.";
        buildType = "Simple";
      };
      components = {
        ansi-terminal = {
          depends  = [
            hsPkgs.base
            hsPkgs.colour
          ] ++ optionals system.isWindows [
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.Win32
          ];
        };
        exes = {
          ansi-terminal-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }