{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      author-test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "boring-window-switcher";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Toshio Ito <debug.ito@gmail.com>";
        author = "Toshio Ito <debug.ito@gmail.com>";
        homepage = "https://github.com/debug-ito/boring-window-switcher";
        url = "";
        synopsis = "A boring window switcher.";
        description = "A boring window switcher. See README.md";
        buildType = "Simple";
      };
      components = {
        boring-window-switcher = {
          depends  = [
            hsPkgs.base
            hsPkgs.X11
            hsPkgs.transformers
            hsPkgs.gtk
          ];
        };
        exes = {
          boring-window-switcher = {
            depends  = [
              hsPkgs.base
              hsPkgs.boring-window-switcher
            ];
          };
        };
        tests = {
          author-spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.boring-window-switcher
              hsPkgs.hspec
            ];
          };
        };
      };
    }