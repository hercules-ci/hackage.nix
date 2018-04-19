{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "2.0";
        identifier = {
          name = "aeson-options";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "2018 Serokell";
        maintainer = "Serokell <hi@serokell.io>";
        author = "Serokell";
        homepage = "https://github.com/serokell/aeson-options";
        url = "";
        synopsis = "Options to derive FromJSON/ToJSON instances";
        description = "Options to derive FromJSON/ToJSON instances.";
        buildType = "Simple";
      };
      components = {
        aeson-options = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
          ];
        };
      };
    }