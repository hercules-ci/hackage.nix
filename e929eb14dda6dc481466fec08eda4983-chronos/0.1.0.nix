{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chronos";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/chronos#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        chronos = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.aeson
            hsPkgs.hashable
            hsPkgs.primitive
          ];
        };
        tests = {
          chronos-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.chronos
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }