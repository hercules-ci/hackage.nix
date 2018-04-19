{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HueAPI";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@q42.nl";
        author = "Sjoerd Visscher";
        homepage = "https://github.com/sjoerdvisscher/HueAPI";
        url = "";
        synopsis = "API for controlling Philips Hue lights";
        description = "";
        buildType = "Simple";
      };
      components = {
        HueAPI = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
      };
    }