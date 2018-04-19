{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-logger-prefork";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "A logging system for preforked WAI apps";
        description = "A logging system for preforked WAI apps";
        buildType = "Simple";
      };
      components = {
        wai-logger-prefork = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.fast-logger
            hsPkgs.http-types
            hsPkgs.unix
            hsPkgs.wai
            hsPkgs.wai-logger
          ];
        };
      };
    }