{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "geocalc";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gero-dev@physra.net";
        author = "Gero Kriependorf";
        homepage = "";
        url = "";
        synopsis = "Libary for calculating distances between two coordinates in WSG84";
        description = "Algorithm used embraces the earth as a perfect sphere";
        buildType = "Simple";
      };
      components = {
        geocalc = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }