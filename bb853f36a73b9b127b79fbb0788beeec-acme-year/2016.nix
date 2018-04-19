{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "acme-year";
          version = "2016";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "joeyadams3.14159@gmail.com";
        author = "Joey Adams";
        homepage = "http://github.com/joeyadams/hs-acme-year";
        url = "";
        synopsis = "Get the current year";
        description = "";
        buildType = "Simple";
      };
      components = {
        acme-year = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.acme-year
              hsPkgs.time
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.acme-year
              hsPkgs.criterion
            ];
          };
        };
      };
    }