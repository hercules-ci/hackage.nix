{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "presburger";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diatchki@galois.com";
        author = "Iavor S. Diatchki";
        homepage = "http://github.com/yav/presburger";
        url = "";
        synopsis = "Cooper's decision procedure for Presburger arithmetic.";
        description = "Cooper's decision procedure for Presburger arithmetic.";
        buildType = "Simple";
      };
      components = {
        presburger = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.pretty
          ];
        };
      };
    }