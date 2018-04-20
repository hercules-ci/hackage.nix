{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-rankselect";
          version = "0.6.0.0";
        };
        license = "MIT";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-rankselect#readme";
        url = "";
        synopsis = "Conduits for tokenizing streams.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-rankselect = {
          depends  = [
            hsPkgs.base
            hsPkgs.hw-balancedparens
            hsPkgs.hw-bits
            hsPkgs.hw-excess
            hsPkgs.hw-prim
            hsPkgs.hw-rankselect-base
            hsPkgs.hw-string-parse
            hsPkgs.safe
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