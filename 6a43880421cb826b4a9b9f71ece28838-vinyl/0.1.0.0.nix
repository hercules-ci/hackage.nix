{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "vinyl";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jonsterling@me.com";
        author = "Jonathan Sterling";
        homepage = "";
        url = "";
        synopsis = "Extensible Records";
        description = "Extensible records for Haskell with lenses using modern GHC features.";
        buildType = "Simple";
      };
      components = {
        vinyl = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.ghc-prim
          ];
        };
      };
    }