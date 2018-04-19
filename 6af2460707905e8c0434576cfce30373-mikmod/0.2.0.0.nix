{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mikmod";
          version = "0.2.0.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "evanrinehart@gmail.com";
        author = "Evan Rinehart";
        homepage = "https://github.com/evanrinehart/mikmod";
        url = "";
        synopsis = "MikMod bindings";
        description = "MikMod bindings for Haskell";
        buildType = "Simple";
      };
      components = {
        mikmod = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }