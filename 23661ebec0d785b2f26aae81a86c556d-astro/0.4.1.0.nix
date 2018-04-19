{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "astro";
          version = "0.4.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016-2017 Alexander Ignatyev";
        maintainer = "Alexander Ignatyev";
        author = "Alexander Ignatyev";
        homepage = "https://github.com/alexander-ignatyev/astro";
        url = "";
        synopsis = "Amateur astronomical computations";
        description = "Please read https://github.com/Alexander-Ignatyev/astro/blob/master/README.md to start.";
        buildType = "Simple";
      };
      components = {
        astro = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.matrix
          ];
        };
        exes = {
          astro-app = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.aeson
              hsPkgs.optparse-applicative
              hsPkgs.astro
            ];
          };
        };
        tests = {
          astro-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.astro
              hsPkgs.time
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }