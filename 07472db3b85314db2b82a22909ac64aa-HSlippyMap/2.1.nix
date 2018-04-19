{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HSlippyMap";
          version = "2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "m@j4.pe";
        author = "Jean-Alexandre Peyroux";
        homepage = "https://github.com/j4/HSlippyMap";
        url = "";
        synopsis = "OpenStreetMap Slippy Map";
        description = "";
        buildType = "Simple";
      };
      components = {
        HSlippyMap = {
          depends  = [ hsPkgs.base ];
        };
      };
    }