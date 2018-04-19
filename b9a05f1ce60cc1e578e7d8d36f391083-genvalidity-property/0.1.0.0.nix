{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-property";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Standard properties for functions on `Validity` types";
        description = "Standard properties for functions on `Validity` types";
        buildType = "Simple";
      };
      components = {
        genvalidity-property = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity
            hsPkgs.genvalidity
            hsPkgs.QuickCheck
            hsPkgs.hspec
          ];
        };
        tests = {
          genvalidity-property-doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.genvalidity-property
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }