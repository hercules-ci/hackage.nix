{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      orphaninstances = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "transformers-base";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>,\nBas van Dijk <v.dijk.bas@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>,\nBas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "https://github.com/mvv/transformers-base";
        url = "";
        synopsis = "Lift computations from the bottom of a transformer stack";
        description = "This package provides a straightforward port of @monadLib@'s BaseM\ntypeclass to @transformers@.";
        buildType = "Simple";
      };
      components = {
        transformers-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }