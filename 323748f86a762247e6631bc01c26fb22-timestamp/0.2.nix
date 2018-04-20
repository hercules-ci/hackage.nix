{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "timestamp";
          version = "0.2";
        };
        license = "MIT";
        copyright = "(c) 2018, Metrix.AI";
        maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
        author = "Oleg Shevchenko <shevchenko.cmc@gmail.com>";
        homepage = "https://github.com/metrix-ai/timestamp";
        url = "";
        synopsis = "Space-efficient Unix timestamp and utilities";
        description = "";
        buildType = "Simple";
      };
      components = {
        timestamp = {
          depends  = [
            hsPkgs.cereal
            hsPkgs.foldl
            hsPkgs.hashable
            hsPkgs.QuickCheck
            hsPkgs.time
            hsPkgs.base
            hsPkgs.generic-random
          ];
        };
      };
    }