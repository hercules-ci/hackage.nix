{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "random-class";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Class of random value generation";
        description = "";
        buildType = "Simple";
      };
      components = {
        random-class = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.transformers
            hsPkgs.util
          ];
        };
      };
    }