{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "ige-mac-integration";
          version = "0.0.0.2";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@sourceforge.net";
        author = "Duncan Coutts, Peter Gavin, Axel Simon, Hamish Mackenzie";
        homepage = "http://www.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Bindings for the Gtk/OS X integration library.";
        description = "ige-mac-integration helps integrate Gtk applications with the native Mac\ndesktop and make it feel more like a Mac application.";
        buildType = "Custom";
      };
      components = {
        ige-mac-integration = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.glib
            hsPkgs.gtk
          ];
          pkgconfig = [
            pkgconfPkgs.ige-mac-integration
          ];
        };
      };
    }