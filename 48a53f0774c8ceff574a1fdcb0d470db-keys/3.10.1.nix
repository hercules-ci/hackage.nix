{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "keys";
          version = "3.10.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/keys/";
        url = "";
        synopsis = "Keyed functors and containers";
        description = "Keyed functors and containers";
        buildType = "Simple";
      };
      components = {
        keys = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.containers
            hsPkgs.free
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.transformers
          ];
        };
      };
    }