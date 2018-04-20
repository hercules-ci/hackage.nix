{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      enable-overloading = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-webkit2webextension";
          version = "4.0.15";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "WebKit2-WebExtension bindings";
        description = "Bindings for WebKit2-WebExtension, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-webkit2webextension = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.gi-soup
            hsPkgs.gi-gio
            hsPkgs.gi-javascriptcore
            hsPkgs.gi-gtk
            hsPkgs.gi-gobject
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ] ++ [
            hsPkgs.haskell-gi-overloading
          ];
          pkgconfig = [
            pkgconfPkgs."webkit2gtk-web-extension-4.0"
          ];
        };
      };
    }