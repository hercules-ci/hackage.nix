{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hlibBladeRF";
          version = "0.1.0.4";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) Edward O'Callaghan, 2015";
        maintainer = "eocallaghan@alterapraxis.com";
        author = "Edward O'Callaghan";
        homepage = "https://victoredwardocallaghan.github.io/hlibBladeRF";
        url = "";
        synopsis = "Haskell binding to libBladeRF SDR library";
        description = "IO Monadic binding for libbladeRF software defined radio.";
        buildType = "Simple";
      };
      components = {
        hlibBladeRF = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.bytestring
          ];
        };
        tests = {
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }