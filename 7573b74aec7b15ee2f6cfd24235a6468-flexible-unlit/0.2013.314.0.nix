{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flexible-unlit";
          version = "0.2013.314.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rhymoid@gmail.com";
        author = "Stijn van Drongelen";
        homepage = "";
        url = "";
        synopsis = "A configurable reimplementation of unlit";
        description = "";
        buildType = "Simple";
      };
      components = {
        flexible-unlit = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
        exes = {
          funlit = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.flexible-unlit
              hsPkgs.text
            ];
          };
        };
      };
    }