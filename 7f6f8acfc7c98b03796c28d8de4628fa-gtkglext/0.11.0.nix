{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "gtkglext";
          version = "0.11.0";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@sourceforge.net";
        author = "Duncan Coutts";
        homepage = "http://www.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the GTK+ OpenGL Extension";
        description = "GtkGLExt provides the GDK objects to support OpenGL rendering in GTK+,\nand GtkWidget API add-ons to make GTK+ widgets OpenGL-capable.";
        buildType = "Custom";
      };
      components = {
        gtkglext = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.glib
            hsPkgs.pango
            hsPkgs.cairo
            hsPkgs.gtk
          ];
        };
      };
    }