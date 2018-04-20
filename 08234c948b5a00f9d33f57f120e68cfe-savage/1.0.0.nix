{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "savage";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dcartwright@layer3com.com";
        author = "Daniel Cartwright";
        homepage = "https://github.com/chessai/savage";
        url = "";
        synopsis = "Re-exported random generators from QuickCheck.";
        description = "Re-exported random generators from QuickCheck.";
        buildType = "Simple";
      };
      components = {
        savage = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.tf-random
          ];
        };
      };
    }