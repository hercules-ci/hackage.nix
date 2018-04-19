{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pool";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/persistent";
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
            hsPkgs.monad-control
          ];
        };
      };
    }