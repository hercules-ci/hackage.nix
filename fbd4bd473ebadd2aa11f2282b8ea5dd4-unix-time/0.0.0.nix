{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unix-time";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "Unix time parser\\/formatter and utilities";
        description = "Fast parser\\/formatter\\/utilities for Unix time";
        buildType = "Simple";
      };
      components = {
        unix-time = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.old-time
          ];
        };
      };
    }