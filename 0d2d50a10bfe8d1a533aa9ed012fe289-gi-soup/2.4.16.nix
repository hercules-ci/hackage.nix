{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-soup";
          version = "2.4.16";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "Libsoup bindings";
        description = "Bindings for Libsoup, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-soup = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.haskell-gi-overloading
            hsPkgs.gi-gio
            hsPkgs.gi-gobject
            hsPkgs.gi-glib
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.haskell-gi-overloading;
          pkgconfig = [
            pkgconfPkgs."libsoup-2.4"
          ];
        };
      };
    }