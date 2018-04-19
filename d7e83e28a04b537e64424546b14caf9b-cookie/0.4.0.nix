{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cookie";
          version = "0.4.0";
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
          ];
        };
      };
    }