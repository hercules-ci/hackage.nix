{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-time";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for time";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        genvalidity-time = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity-time
            hsPkgs.genvalidity
            hsPkgs.time
          ];
        };
        tests = {
          genvalidity-time-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.genvalidity-time
              hsPkgs.hspec
              hsPkgs.genvalidity-hspec
              hsPkgs.time
            ];
          };
        };
      };
    }