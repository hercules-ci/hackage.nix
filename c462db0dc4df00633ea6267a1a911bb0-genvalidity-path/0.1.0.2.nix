{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-path";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for Path";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        genvalidity-path = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity-path
            hsPkgs.genvalidity
            hsPkgs.path
          ];
        };
        tests = {
          genvalidity-path-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.genvalidity-path
              hsPkgs.hspec
              hsPkgs.genvalidity-hspec
              hsPkgs.path
            ];
          };
        };
      };
    }