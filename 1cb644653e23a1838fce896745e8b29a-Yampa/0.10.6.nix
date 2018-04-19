{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-hlint = false;
      test-doc-coverage = false;
      test-regression = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Yampa";
          version = "0.10.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ivan Perez (ivan.perez@keera.co.uk)";
        author = "Henrik Nilsson, Antony Courtney";
        homepage = "http://www.haskell.org/haskellwiki/Yampa";
        url = "";
        synopsis = "Library for programming hybrid systems.";
        description = "Domain-specific language embedded in Haskell for programming\nhybrid (mixed discrete-time and continuous-time) systems. Yampa is based on\nthe concepts of Functional Reactive Programming (FRP) and is structured using\narrow combinators.";
        buildType = "Simple";
      };
      components = {
        Yampa = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.deepseq
          ];
        };
        tests = {
          hlint = {
            depends  = optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
          haddock-coverage = {
            depends  = optionals (!(!_flags.test-doc-coverage)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.regex-posix
            ];
          };
          regression = {
            depends  = optionals (!(!_flags.test-regression)) [
              hsPkgs.base
              hsPkgs.Yampa
            ];
          };
        };
      };
    }