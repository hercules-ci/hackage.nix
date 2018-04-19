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
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
        author = "Heinrich Apfelmus";
        homepage = "http://haskell.org/haskellwiki/Reactive-banana";
        url = "";
        synopsis = "Examples for the reactive-banana library, using wxHaskell.";
        description = "This library provides some GUI examples for the @reactive-banana@ library,\nusing wxHaskell.\n\nNote: You need to install the (platform independent)\n@cabal-macosx@ library before you can configure/build and install this library.\n\nNote: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install reactive-banana-wx -fbuildExamples@\n\nIMPORTANT NOTE:\nThere are a few issues with WxWidgets 2.9.3 and some examples may crash.\nThese problems are only solved in wx-0.90.0.1 and higher.\n\nStability forecast: The wrapper functions are rather provisional.";
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
          Animation = {};
          Arithmetic = {};
          Asteroids = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.random
              hsPkgs.executable-path
              hsPkgs.filepath
            ];
          };
          Counter = {};
          CurrencyConverter = {
            depends  = pkgs.lib.optional _flags.buildexamples hsPkgs.process;
          };
          CRUD = {
            depends  = pkgs.lib.optional _flags.buildexamples hsPkgs.containers;
          };
          NetMonitor = {
            depends  = pkgs.lib.optional _flags.buildexamples hsPkgs.process;
          };
          TicTacToe = {
            depends  = pkgs.lib.optional _flags.buildexamples hsPkgs.array;
          };
          TwoCounters = {};
          Wave = {};
        };
      };
    }