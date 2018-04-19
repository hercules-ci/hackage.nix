{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gtk-traymanager";
          version = "0.1.6";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "tristan@nochair.net";
        author = "Tristan Ravitch";
        homepage = "http://github.com/travitch/gtk-traymanager";
        url = "";
        synopsis = "A wrapper around the eggtraymanager library for Linux system trays";
        description = "This package provides a wrapper around the prolific eggtraymanager code.\nNote that it is *NOT* itself a system tray widget, though it is a very\nconvenient utility for implementing one.  This package adopts the style\nof gtk2hs and is designed to work well with it.";
        buildType = "Simple";
      };
      components = {
        gtk-traymanager = {
          depends  = [
            hsPkgs.gtk
            hsPkgs.glib
            hsPkgs.base
          ];
        };
      };
    }