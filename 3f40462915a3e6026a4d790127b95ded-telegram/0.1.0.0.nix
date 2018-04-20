{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "telegram";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "gillis.san@gmail.com";
        author = "San Gillis";
        homepage = "";
        url = "";
        synopsis = "Telegram API client";
        description = "Telegram API client";
        buildType = "Simple";
      };
      components = {
        telegram = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.url
            hsPkgs.http-conduit
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.utf8-string
          ];
        };
      };
    }