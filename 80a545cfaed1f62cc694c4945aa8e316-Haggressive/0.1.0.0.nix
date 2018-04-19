{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Haggressive";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "volker.strobel87@gmail.com";
        author = "Volker Strobel";
        homepage = "http://github.io/pold87/Haggressive";
        url = "";
        synopsis = "Aggression analysis for Tweets on Twitter";
        description = "Aggression analysis for Tweets on Twitter";
        buildType = "Simple";
      };
      components = {
        Haggressive = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.Cabal
            hsPkgs.HUnit
            hsPkgs.text
            hsPkgs.cassava
            hsPkgs.tuple
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.tokenize
            hsPkgs.PSQueue
          ];
        };
        exes = {
          Haggressive = {
            depends  = [
              hsPkgs.base
              hsPkgs.Haggressive
              hsPkgs.Cabal
              hsPkgs.HUnit
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.Haggressive
              hsPkgs.HUnit
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.Cabal
              hsPkgs.tuple
            ];
          };
        };
      };
    }