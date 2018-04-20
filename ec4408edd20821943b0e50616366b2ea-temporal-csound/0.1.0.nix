{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "temporal-csound";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "anton.kholomiov@gmail.com";
        author = "Anton Kholomiov";
        homepage = "https://github.com/anton-k/temporal-csound";
        url = "";
        synopsis = "brings together temporal-music-notation and csound-expression packages";
        description = "";
        buildType = "Simple";
      };
      components = {
        temporal-csound = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.temporal-music-notation
            hsPkgs.csound-expression
          ];
        };
      };
    }