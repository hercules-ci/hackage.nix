{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-persistent";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://docs.yesodweb.com/";
        url = "";
        synopsis = "Some helpers for using Persistent from Yesod.";
        description = "";
        buildType = "Simple";
      };
      components = {
        yesod-persistent = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.persistent
            hsPkgs.failure
            hsPkgs.transformers
          ];
        };
      };
    }