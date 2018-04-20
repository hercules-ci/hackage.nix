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
          name = "gi-javascriptcore";
          version = "3.0.6";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "JavaScriptCore bindings";
        description = "Bindings for JavaScriptCore, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-javascriptcore = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
          pkgconfig = [
            pkgconfPkgs."javascriptcoregtk-3.0"
          ];
        };
      };
    }