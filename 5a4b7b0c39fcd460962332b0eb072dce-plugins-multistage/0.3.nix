{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "plugins-multistage";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012-2014, Anders Persson";
        maintainer = "Anders Persson <anders.cj.persson@gmail.com>";
        author = "Anders Persson <anders.cj.persson@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Dynamic linking for embedded DSLs with staged compilation";
        description = "Dynamic compilation, linking and loading of functions in\nstaged languages.";
        buildType = "Simple";
      };
      components = {
        plugins-multistage = {
          depends  = [
            hsPkgs.base
            hsPkgs.plugins
            hsPkgs.template-haskell
            hsPkgs.th-expand-syns
            hsPkgs.storable-record
            hsPkgs.storable-tuple
          ];
        };
        tests = {
          regression = {
            depends  = [
              hsPkgs.plugins-multistage
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          needforspeed = {
            depends  = [
              hsPkgs.plugins-multistage
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.criterion
            ];
          };
        };
      };
    }