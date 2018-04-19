{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ProxN";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "0slemi0@gmail.com";
        author = "Andras Slemmer";
        homepage = "https://github.com/exFalso/ProxN";
        url = "";
        synopsis = "Proximity sets in N dimensions";
        description = "";
        buildType = "Simple";
      };
      components = {
        ProxN = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }