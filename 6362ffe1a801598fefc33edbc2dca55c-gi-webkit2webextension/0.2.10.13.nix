{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gi-webkit2webextension";
          version = "0.2.10.13";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "WebKit2WebExtension bindings";
        description = "Bindings for WebKit2WebExtension, autogenerated by haskell-gi.";
        buildType = "Simple";
      };
      components = {
        gi-webkit2webextension = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.gi-gobject
            hsPkgs.gi-gtk
            hsPkgs.gi-javascriptcore
            hsPkgs.gi-soup
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
          pkgconfig = [
            pkgconfPkgs."webkit2gtk-web-extension-4.0"
          ];
        };
      };
    }