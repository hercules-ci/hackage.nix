{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bearriver";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez and Manuel Bärenz";
        homepage = "keera.co.uk";
        url = "";
        synopsis = "A Yampa replacement based on Dunai.";
        description = "BearRiver is an API compatible replacement of Yampa\nbased on Dunai.";
        buildType = "Simple";
      };
      components = {
        bearriver = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.dunai
          ];
        };
      };
    }