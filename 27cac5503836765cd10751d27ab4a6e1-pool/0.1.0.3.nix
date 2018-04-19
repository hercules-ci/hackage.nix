{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pool";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/pool";
        url = "";
        synopsis = "Thread-safe resource pools.";
        description = "Useful for stuff like database connection pools.";
        buildType = "Simple";
      };
      components = {
        pool = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.stm
            hsPkgs.monad-control
          ];
        };
      };
    }