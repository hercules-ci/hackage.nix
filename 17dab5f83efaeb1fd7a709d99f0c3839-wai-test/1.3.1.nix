{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-test";
          version = "1.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/web-application-interface";
        url = "";
        synopsis = "Unit test framework (built on HUnit) for WAI applications.";
        description = "Unit test framework (built on HUnit) for WAI applications.";
        buildType = "Simple";
      };
      components = {
        wai-test = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.blaze-builder
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.conduit
            hsPkgs.blaze-builder-conduit
            hsPkgs.cookie
            hsPkgs.HUnit
            hsPkgs.http-types
            hsPkgs.case-insensitive
            hsPkgs.network
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai-test
              hsPkgs.wai
              hsPkgs.hspec
            ];
          };
        };
      };
    }