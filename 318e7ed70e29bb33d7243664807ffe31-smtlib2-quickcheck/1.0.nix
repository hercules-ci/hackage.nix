{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "smtlib2-quickcheck";
          version = "1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "guenther@forsyte.at";
        author = "Henning Günther <guenther@forsyte.at>";
        homepage = "";
        url = "";
        synopsis = "Helper functions to create SMTLib expressions in QuickCheck";
        description = "";
        buildType = "Simple";
      };
      components = {
        smtlib2-quickcheck = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.dependent-sum
            hsPkgs.dependent-map
            hsPkgs.smtlib2
            hsPkgs.QuickCheck
          ];
        };
      };
    }