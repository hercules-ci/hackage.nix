{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Hangman";
          version = "0.1.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "developer@leefallat.ca";
        author = "Lee Fallat";
        homepage = "https://github.com/lf94/Hangman";
        url = "";
        synopsis = "The classic game of Hangman.";
        description = "With a number of guesses you must figure out the hidden word!";
        buildType = "Simple";
      };
      components = {
        exes = {
          Hangman = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.random
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.hspec
            ];
          };
        };
      };
    }