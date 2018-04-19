{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "gtksourceview2";
          version = "0.11.1";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@sourceforge.net";
        author = "Duncan Coutts, Peter Gavin, Axel Simon";
        homepage = "http://www.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the GtkSourceView library.";
        description = "GtkSourceView is a text widget that extends the standard GTK+ 2.x text widget\nGtkTextView. It improves GtkTextView by implementing syntax highlighting and\nother features typical of a source editor.";
        buildType = "Custom";
      };
      components = {
        gtksourceview2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.glib
            hsPkgs.gtk
          ];
        };
      };
    }