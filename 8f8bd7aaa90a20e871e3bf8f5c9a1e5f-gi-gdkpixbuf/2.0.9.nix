{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      overloaded-methods = true;
      overloaded-properties = true;
      overloaded-signals = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-gdkpixbuf";
          version = "2.0.9";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "GdkPixbuf bindings";
        description = "Bindings for GdkPixbuf, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-gdkpixbuf = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.gi-gio
            hsPkgs.gi-gobject
            hsPkgs.gi-glib
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
          pkgconfig = [
            pkgconfPkgs."gdk-pixbuf-2.0"
          ];
        };
      };
    }