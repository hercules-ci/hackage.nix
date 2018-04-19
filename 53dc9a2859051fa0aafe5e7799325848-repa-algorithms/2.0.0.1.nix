{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa-algorithms";
          version = "2.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The DPH Team";
        homepage = "http://trac.haskell.org/repa";
        url = "";
        synopsis = "Algorithms using the Repa array library.";
        description = "Reusable algorithms using the Repa array library.";
        buildType = "Simple";
      };
      components = {
        repa-algorithms = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.repa
          ];
        };
      };
    }