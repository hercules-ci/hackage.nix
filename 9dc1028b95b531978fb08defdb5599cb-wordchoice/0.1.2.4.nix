{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm-fast = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wordchoice";
          version = "0.1.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Vanessa McHale";
        maintainer = "vanessa.mchale@reconfigure.io";
        author = "Vanessa McHale";
        homepage = "https://github.com/githubuser/wordchoice#readme";
        url = "";
        synopsis = "Get word counts and distributions";
        description = "A command line tool to compute the word distribution from various types of document, converting to text with pandoc.";
        buildType = "Simple";
      };
      components = {
        wordchoice = {
          depends  = [
            hsPkgs.base
            hsPkgs.pandoc
            hsPkgs.containers
            hsPkgs.Glob
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.optparse-applicative
            hsPkgs.composition-prelude
            hsPkgs.Chart
            hsPkgs.bytestring
            hsPkgs.system-filepath
            hsPkgs.Chart-diagrams
            hsPkgs.lens
            hsPkgs.transformers
          ];
        };
        exes = {
          wrd = {
            depends  = [
              hsPkgs.base
              hsPkgs.wordchoice
            ];
          };
        };
        tests = {
          wordchoice-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.wordchoice
            ];
          };
        };
        benchmarks = {
          wordchoice-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.text
              hsPkgs.wordchoice
              hsPkgs.pandoc
            ];
          };
        };
      };
    }