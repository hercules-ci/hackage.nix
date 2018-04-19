{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-notify";
          version = "0.7.1";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "Libnotify bindings";
        description = "Bindings for Libnotify, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-notify = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.gi-glib
            hsPkgs.gi-gobject
            hsPkgs.gi-gdkpixbuf
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }