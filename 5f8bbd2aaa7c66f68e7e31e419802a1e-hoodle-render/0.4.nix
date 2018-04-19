{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodle-render";
          version = "0.4";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "";
        url = "";
        synopsis = "Hoodle file renderer";
        description = "Rendering library using cairo for hoodle file format";
        buildType = "Simple";
      };
      components = {
        hoodle-render = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cairo
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.gd
            hsPkgs.gtk
            hsPkgs.hoodle-types
            hsPkgs.lens
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.poppler
            hsPkgs.stm
            hsPkgs.strict
            hsPkgs.svgcairo
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.uuid
          ];
        };
      };
    }