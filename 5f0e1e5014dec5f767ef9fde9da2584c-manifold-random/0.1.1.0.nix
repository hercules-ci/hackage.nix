{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "manifold-random";
          version = "0.1.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "(@) sagemueller \$ geo.uni-koeln.de";
        author = "Justus Sagemüller";
        homepage = "https://github.com/leftaroundabout/manifolds";
        url = "";
        synopsis = "Sampling random points on general manifolds.";
        description = "";
        buildType = "Simple";
      };
      components = {
        manifold-random = {
          depends  = [
            hsPkgs.base
            hsPkgs.random-fu
            hsPkgs.manifolds
            hsPkgs.vector-space
          ];
        };
      };
    }