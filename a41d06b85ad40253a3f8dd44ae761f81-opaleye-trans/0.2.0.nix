{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "opaleye-trans";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Matthew Wraith";
        maintainer = "wraithm@gmail.com";
        author = "Matthew Wraith";
        homepage = "https://github.com/tomjaguarpaw/haskell-opaleye";
        url = "";
        synopsis = "A monad transformer for Opaleye";
        description = "A monad transformer for Opaleye";
        buildType = "Simple";
      };
      components = {
        opaleye-trans = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers-base
            hsPkgs.opaleye
            hsPkgs.postgresql-simple
            hsPkgs.product-profunctors
          ];
        };
        exes = {
          opaleye-rosetree = {
            depends  = [
              hsPkgs.base
              hsPkgs.opaleye
              hsPkgs.postgresql-simple
              hsPkgs.product-profunctors
              hsPkgs.opaleye-trans
            ];
          };
          opaleye-rosetree2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.opaleye
              hsPkgs.postgresql-simple
              hsPkgs.product-profunctors
              hsPkgs.opaleye-trans
            ];
          };
        };
      };
    }