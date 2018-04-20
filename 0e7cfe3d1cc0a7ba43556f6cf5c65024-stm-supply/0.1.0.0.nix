{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stm-supply";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Joe Canero";
        maintainer = "jmc41493@gmail.com";
        author = "Joe Canero";
        homepage = "https://github.com/caneroj1/stm-supply#readme";
        url = "";
        synopsis = "STM wrapper around Control.Concurrent.Supply.";
        description = "STM wrapper around \"Control.Concurrent.Supply\" for thread-safe ID generation.";
        buildType = "Simple";
      };
      components = {
        stm-supply = {
          depends  = [
            hsPkgs.base
            hsPkgs.concurrent-supply
          ];
        };
        tests = {
          stm-supply-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.stm-supply
              hsPkgs.async
              hsPkgs.random
              hsPkgs.QuickCheck
              hsPkgs.Unique
            ];
          };
        };
      };
    }