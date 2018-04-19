{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ACME";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "info@alkalisoftware.net";
        author = "James Candy";
        homepage = "http://alkalisoftware.net";
        url = "";
        synopsis = "Essential features";
        description = "";
        buildType = "Simple";
      };
      components = {
        ACME = {
          depends  = [
            hsPkgs.base
            hsPkgs.list-extras
            hsPkgs.random-shuffle
            hsPkgs.void
            hsPkgs.random
            hsPkgs.mtl
          ];
        };
      };
    }