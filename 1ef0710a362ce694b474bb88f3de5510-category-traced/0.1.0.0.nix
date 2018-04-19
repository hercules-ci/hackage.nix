{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "category-traced";
          version = "0.1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Traced monoidal categories";
        description = "";
        buildType = "Simple";
      };
      components = {
        category-traced = {
          depends  = [
            hsPkgs.base
            hsPkgs.categories
          ];
        };
      };
    }