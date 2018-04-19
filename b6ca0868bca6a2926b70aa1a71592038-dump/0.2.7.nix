{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dump";
          version = "0.2.7";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dumplibhs.psssst@dfgh.net";
        author = "Milán Nagy";
        homepage = "https://github.com/Wizek/dump";
        url = "";
        synopsis = "Dumps the names and values of expressions to ease debugging.";
        description = "Can be used with \"Debug.Trace\", \"Test.QuickCheck\", or just\nplain old \"System.IO\"'s \"putStrLn\".\n\nSee README.md and FEATURES.md for further details.";
        buildType = "Simple";
      };
      components = {
        dump = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
            hsPkgs.interpolatedstring-perl6
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.haskell-src-meta
              hsPkgs.interpolatedstring-perl6
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }