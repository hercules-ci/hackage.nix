{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.3";
        identifier = {
          name = "th-lift";
          version = "0.3.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Ian Lynagh, 2006";
        maintainer = "Mathieu Boespflug <mboes@tweag.net>";
        author = "Ian Lynagh";
        homepage = "";
        url = "";
        synopsis = "Derive Template Haskell's Lift class for datatypes.";
        description = "Derive Template Haskell's Lift class for datatypes.";
        buildType = "Simple";
      };
      components = {
        th-lift = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }