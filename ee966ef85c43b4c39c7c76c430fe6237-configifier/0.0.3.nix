{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      profiling = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "configifier";
          version = "0.0.3";
        };
        license = "AGPL-3.0-only";
        copyright = "zerobuzz.net";
        maintainer = "Matthias Fischmann <mf@zerobuzz.net>";
        author = "Matthias Fischmann <mf@zerobuzz.net>, Andres Löh <andres@well-typed.com>";
        homepage = "";
        url = "";
        synopsis = "parser for config files, shell variables, command line args.";
        description = "WARNING NOT READY FOR USE YET.  JUST PUTTING IT OUT THERE TO HAVE A DISCUSSION.\n\nRead runtime configuration from files, command line, and shell\nenvironment in a uniform, canonical, and flexible way.  Inspired\nby, among others, Configurator, cmdargs, optparse-applicative.";
        buildType = "Simple";
      };
      components = {
        configifier = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.mtl
            hsPkgs.regex-easy
            hsPkgs.safe
            hsPkgs.string-conversions
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.yaml
          ];
        };
        exes = {
          configifier-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.configifier
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.pretty-show
              hsPkgs.string-conversions
              hsPkgs.text
              hsPkgs.yaml
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.configifier
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.case-insensitive
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.mtl
              hsPkgs.pretty-show
              hsPkgs.QuickCheck
              hsPkgs.scientific
              hsPkgs.string-conversions
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }