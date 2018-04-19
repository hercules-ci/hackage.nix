{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-rankselect";
          version = "0.8.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-rankselect#readme";
        url = "";
        synopsis = "Rank-select";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-rankselect = {
          depends  = [
            hsPkgs.base
            hsPkgs.hw-balancedparens
            hsPkgs.hw-bits
            hsPkgs.hw-prim
            hsPkgs.hw-rankselect-base
            hsPkgs.vector
          ];
        };
        tests = {
          hw-rankselect-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hw-bits
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.hw-rankselect-base
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
      };
    }