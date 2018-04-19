{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hora";
          version = "1.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Imants Cekusins";
        author = "Imants Cekusins";
        homepage = "https://github.com/ciez/hora";
        url = "";
        synopsis = "date time";
        description = "date time functions to pico precision";
        buildType = "Simple";
      };
      components = {
        hora = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.regex-do
            hsPkgs.binary
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.time
              hsPkgs.regex-do
              hsPkgs.binary
            ];
          };
        };
      };
    }