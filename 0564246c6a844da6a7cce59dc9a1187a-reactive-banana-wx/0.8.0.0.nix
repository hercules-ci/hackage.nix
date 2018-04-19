{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "reactive-banana-wx";
          version = "0.8.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
        author = "Heinrich Apfelmus";
        homepage = "http://haskell.org/haskellwiki/Reactive-banana";
        url = "";
        synopsis = "Examples for the reactive-banana library, using wxHaskell.";
        description = "This library provides some GUI examples for the @reactive-banana@ library,\nusing wxHaskell.\n\nNote: You need to install the (platform independent)\n@cabal-macosx@ library before you can configure/build and install this library.\n\nNote: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install reactive-banana-wx -fbuildExamples@\n\nStability forecast: The wrapper functions are rather provisional.";
        buildType = "Custom";
      };
      components = {
        reactive-banana-wx = {
          depends  = [
            hsPkgs.base
            hsPkgs.cabal-macosx
            hsPkgs.reactive-banana
            hsPkgs.wxcore
            hsPkgs.wx
          ];
        };
        exes = {
          Animation = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.process
              hsPkgs.random
              hsPkgs.executable-path
              hsPkgs.filepath
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
          Arithmetic = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
          Asteroids = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.random
              hsPkgs.executable-path
              hsPkgs.filepath
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
          BarTab = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
          Counter = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
          CurrencyConverter = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
          CRUD = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.containers
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
          NetMonitor = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.process
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
          TicTacToe = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.array
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
          TwoCounters = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
          Wave = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.reactive-banana
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.base
            ];
          };
        };
      };
    }