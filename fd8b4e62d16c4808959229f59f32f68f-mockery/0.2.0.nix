{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mockery";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) 2015 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "Support functions for automated testing";
        description = "Support functions for automated testing";
        buildType = "Simple";
      };
      components = {
        mockery = {
          depends  = [
            hsPkgs.base
            hsPkgs.temporary
            hsPkgs.directory
            hsPkgs.logging-facade
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.logging-facade
              hsPkgs.mockery
              hsPkgs.hspec
            ];
          };
        };
      };
    }