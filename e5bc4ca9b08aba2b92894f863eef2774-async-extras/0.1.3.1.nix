{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "async-extras";
          version = "0.1.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "http://github.com/jfischoff/async-extras";
        url = "";
        synopsis = "Extra Utilities for the Async Library";
        description = "";
        buildType = "Simple";
      };
      components = {
        async-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.stm
            hsPkgs.SafeSemaphore
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.transformers-base
          ];
        };
      };
    }