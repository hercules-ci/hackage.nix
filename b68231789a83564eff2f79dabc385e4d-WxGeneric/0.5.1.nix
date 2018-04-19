{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "WxGeneric";
          version = "0.5.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
        maintainer = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
        author = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
        homepage = "";
        url = "";
        synopsis = "Library which constructing generic (SYB3-based) widgets for WxHaskell";
        description = "Constructs widgets for WxHaskell using SybWidget.";
        buildType = "Simple";
      };
      components = {
        WxGeneric = {
          depends  = [
            hsPkgs.SybWidget
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.xtc
            hsPkgs.wx
            hsPkgs.wxcore
          ];
        };
      };
    }