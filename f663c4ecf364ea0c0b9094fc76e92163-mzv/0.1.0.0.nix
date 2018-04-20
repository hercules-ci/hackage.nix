{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mzv";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tom Schrijvers, Bruno Oliveira";
        maintainer = "Ismael Figueroa <ifigueroap@gmail.com>";
        author = "Tom Schrijvers, Bruno Oliveira";
        homepage = "http://github.com/ifigueroap/mzv";
        url = "";
        synopsis = "Implementation of the \"Monads, Zippers and Views\" (Schrijvers and Oliveira, ICFP'11)";
        description = "Implementation of the \"Monads, Zippers and Views\" (Schrijvers and Oliveira, ICFP'11)";
        buildType = "Simple";
      };
      components = {
        mzv = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }