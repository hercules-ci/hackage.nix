{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "NMap";
          version = "0.12";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "a.castello.pas@gmail.com";
        author = "Alejandro Castello";
        homepage = "";
        url = "";
        synopsis = "A transparent nested Map structure";
        description = "";
        buildType = "Simple";
      };
      components = {
        NMap = {
          depends  = [
            hsPkgs.containers
            hsPkgs.base
          ];
        };
      };
    }