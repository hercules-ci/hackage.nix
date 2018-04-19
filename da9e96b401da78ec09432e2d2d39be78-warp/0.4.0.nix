{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      timeout-protection = true;
      network-bytestring = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "warp";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, Matt Brown";
        homepage = "http://github.com/snoyberg/warp";
        url = "";
        synopsis = "A fast, light-weight web server for WAI applications.";
        description = "";
        buildType = "Simple";
      };
      components = {
        warp = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.blaze-builder-enumerator
            hsPkgs.transformers
            hsPkgs.enumerator
            hsPkgs.blaze-builder
            hsPkgs.sendfile
            hsPkgs.http-types
            hsPkgs.case-insensitive
          ] ++ (if _flags.network-bytestring
            then [
              hsPkgs.network
              hsPkgs.network-bytestring
            ]
            else [ hsPkgs.network ]);
        };
      };
    }