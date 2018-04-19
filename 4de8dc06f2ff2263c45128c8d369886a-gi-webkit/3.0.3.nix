{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "gi-webkit";
          version = "3.0.3";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "WebKit bindings";
        description = "Bindings for WebKit, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-webkit = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.gi-cairo
            hsPkgs.gi-soup
            hsPkgs.gi-javascriptcore
            hsPkgs.gi-gtk
            hsPkgs.gi-gio
            hsPkgs.gi-gdkpixbuf
            hsPkgs.gi-gdk
            hsPkgs.gi-gobject
            hsPkgs.gi-glib
            hsPkgs.gi-atk
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }