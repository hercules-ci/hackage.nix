{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gi-gtksource";
          version = "0.3.18.15";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "GtkSource bindings";
        description = "Bindings for GtkSource, autogenerated by haskell-gi.";
        buildType = "Simple";
      };
      components = {
        gi-gtksource = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.gi-atk
            hsPkgs.gi-glib
            hsPkgs.gi-gobject
            hsPkgs.gi-gdk
            hsPkgs.gi-gdkpixbuf
            hsPkgs.gi-gio
            hsPkgs.gi-gtk
            hsPkgs.gi-pango
            hsPkgs.gi-cairo
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
          pkgconfig = [
            pkgconfPkgs."gtksourceview-3.0"
          ];
        };
      };
    }