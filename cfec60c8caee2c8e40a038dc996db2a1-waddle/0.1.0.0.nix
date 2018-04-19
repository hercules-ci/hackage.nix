{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "waddle";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Martin Grabmueller";
        maintainer = "martin@grabmueller.de";
        author = "Martin Grabmueller";
        homepage = "";
        url = "";
        synopsis = "WAD file utilities.";
        description = "Library for reading WAD files into Haskell types.";
        buildType = "Simple";
      };
      components = {
        waddle = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.case-insensitive
          ];
        };
        exes = {
          export-to-js = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.case-insensitive
              hsPkgs.waddle
            ];
          };
        };
      };
    }