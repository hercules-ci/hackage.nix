{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-structured-formatter";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "flbulgarelli@yahoo.com.ar";
        author = "Franco Leonardo Bulgarelli";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Structured formatted for hspec";
        buildType = "Simple";
      };
      components = {
        hspec-structured-formatter = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec
          ];
        };
      };
    }