{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cookie";
          version = "0.4.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/cookie";
        url = "";
        synopsis = "HTTP cookie parsing and rendering";
        description = "";
        buildType = "Simple";
      };
      components = {
        cookie = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.text
            hsPkgs.data-default
            hsPkgs.deepseq
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.cookie
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }