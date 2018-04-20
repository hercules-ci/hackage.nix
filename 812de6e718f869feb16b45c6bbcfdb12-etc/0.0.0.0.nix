{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      printer = false;
      cli = false;
      yaml = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "etc";
          version = "0.0.0.0";
        };
        license = "MIT";
        copyright = "2017 Roman Gonzalez";
        maintainer = "romanandreg@gmail.com";
        author = "Roman Gonzalez";
        homepage = "https://github.com/roman/Haskell-etc";
        url = "";
        synopsis = "Declarative configuration spec for Haskell projects";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        etc = {
          depends  = (([
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.protolude
            hsPkgs.unordered-containers
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.vector
          ] ++ pkgs.lib.optional _flags.printer hsPkgs.ansi-wl-pprint) ++ pkgs.lib.optional _flags.cli hsPkgs.optparse-applicative) ++ pkgs.lib.optional _flags.yaml hsPkgs.yaml;
        };
        tests = {
          etc-testsuite = {
            depends  = ([
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.protolude
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-rerun
              hsPkgs.etc
            ] ++ pkgs.lib.optional _flags.cli hsPkgs.optparse-applicative) ++ pkgs.lib.optional _flags.yaml hsPkgs.yaml;
          };
        };
      };
    }