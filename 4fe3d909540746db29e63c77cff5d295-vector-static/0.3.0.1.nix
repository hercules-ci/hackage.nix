{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vector-static";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daniel Peebles 2010";
        maintainer = "None";
        author = "Daniel Peebles <pumpkingod@gmail.com>";
        homepage = "http://github.com/geezusfreeek/vector-static";
        url = "";
        synopsis = "Statically checked sizes on Data.Vector";
        description = "Very unstable! Many interfaces are still incomplete or even empty.\nNat and Fin will be moving to a separate package eventually.\nThis package is not currently maintained.";
        buildType = "Simple";
      };
      components = {
        vector-static = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.primitive
          ];
        };
      };
    }