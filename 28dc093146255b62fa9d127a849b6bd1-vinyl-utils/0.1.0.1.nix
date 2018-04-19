{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vinyl-utils";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "marcin.jan.mrotek@gmail.com";
        author = "Marcin Mrotek";
        homepage = "http://hub.darcs.net/mjm/vinyl-utils";
        url = "";
        synopsis = "Utilities for vinyl";
        description = "Operations on records parametrized with various kinds of functors.";
        buildType = "Simple";
      };
      components = {
        vinyl-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.contravariant
            hsPkgs.transformers
            hsPkgs.vinyl
          ];
        };
      };
    }