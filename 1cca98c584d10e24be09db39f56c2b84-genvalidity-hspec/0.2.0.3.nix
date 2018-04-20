{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-hspec";
          version = "0.2.0.3";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Standard spec's for GenValidity instances";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        genvalidity-hspec = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity
            hsPkgs.genvalidity
            hsPkgs.QuickCheck
            hsPkgs.hspec
          ];
        };
      };
    }