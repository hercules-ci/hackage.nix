{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-travis";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2017 Merijn Verstraaten";
        maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
        author = "Merijn Verstraaten";
        homepage = "https://github.com/merijn/tasty-travis";
        url = "";
        synopsis = "Fancy Travis CI output for tasty tests.";
        description = "Fancy <https://travis-ci.org/ Travis CI> output for\n<https://hackage.haskell.org/package/tasty tasty> tests. Features include:\n\n* Folded output\n\n* Coloured output\n\n* Hiding successful tests";
        buildType = "Simple";
      };
      components = {
        tasty-travis = {
          depends  = [
            hsPkgs.base
            hsPkgs.tasty
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-travis
            ];
          };
        };
      };
    }