{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "validity-scientific";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Validity instances for scientific";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        validity-scientific = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity
            hsPkgs.scientific
          ];
        };
      };
    }