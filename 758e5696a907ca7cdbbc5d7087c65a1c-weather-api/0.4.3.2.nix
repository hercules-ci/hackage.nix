{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "weather-api";
          version = "0.4.3.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "peter@standalone.su";
        author = "Peter";
        homepage = "https://github.com/cvb/hs-weather-api#readme";
        url = "";
        synopsis = "Weather API implemented in Haskell";
        description = "This library implement generic API for retrieving weather by HTTP, and has Google weather API as example.";
        buildType = "Simple";
      };
      components = {
        weather-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.network-uri
            hsPkgs.utf8-string
            hsPkgs.vector
          ];
        };
      };
    }