{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "folds-common";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jozefg@cmu.edu";
        author = "Danny Gratzer";
        homepage = "";
        url = "";
        synopsis = "A playground of common folds for folds";
        description = "In an effort to make @folds@ a more usable package this\npackage provides a battery of common folds. These can be\nplugged together easily and efficiently to cover many\ncommon usages.";
        buildType = "Simple";
      };
      components = {
        folds-common = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.folds
          ];
        };
        tests = {
          left-properties = {
            depends  = [
              hsPkgs.folds-common
              hsPkgs.containers
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.base
            ];
          };
          monoid-properties = {
            depends  = [
              hsPkgs.folds-common
              hsPkgs.containers
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.base
            ];
          };
          right-properties = {
            depends  = [
              hsPkgs.folds-common
              hsPkgs.containers
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.base
            ];
          };
        };
      };
    }