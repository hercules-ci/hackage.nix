{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gi-cairo";
          version = "0.1.14.9";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "cairo bindings";
        description = "Bindings for cairo, autogenerated by haskell-gi.";
        buildType = "Simple";
      };
      components = {
        gi-cairo = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
          pkgconfig = [
            pkgconfPkgs.cairo-gobject
          ];
        };
      };
    }