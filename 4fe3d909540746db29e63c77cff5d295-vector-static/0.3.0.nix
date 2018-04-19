{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vector-static";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daniel Peebles 2010";
        maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
        author = "Daniel Peebles <pumpkingod@gmail.com>";
        homepage = "http://github.com/geezusfreeek/vector-static";
        url = "";
        synopsis = "Statically checked sizes on Data.Vector";
        description = "Very unstable! Many interfaces are still incomplete or even empty.\nNat and Fin will be moving to a separate package eventually.";
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