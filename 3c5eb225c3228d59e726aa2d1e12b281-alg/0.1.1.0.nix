{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "alg";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Algebraic structures";
        description = "";
        buildType = "Simple";
      };
      components = {
        alg = {
          depends  = [ hsPkgs.base ];
        };
      };
    }