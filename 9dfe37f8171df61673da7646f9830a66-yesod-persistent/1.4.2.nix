{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-persistent";
          version = "1.4.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Some helpers for using Persistent from Yesod.";
        description = "API docs and the README are available at <http://www.stackage.org/package/yesod-persistent>";
        buildType = "Simple";
      };
      components = {
        yesod-persistent = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.transformers
            hsPkgs.blaze-builder
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.resource-pool
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.wai-extra
              hsPkgs.yesod-core
              hsPkgs.persistent-sqlite
              hsPkgs.yesod-persistent
              hsPkgs.conduit
              hsPkgs.blaze-builder
              hsPkgs.persistent
              hsPkgs.text
            ];
          };
        };
      };
    }