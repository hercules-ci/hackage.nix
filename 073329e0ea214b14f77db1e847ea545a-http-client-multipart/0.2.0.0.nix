{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-client-multipart";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/http-client";
        url = "";
        synopsis = "Generate multipart uploads for http-client.";
        description = "";
        buildType = "Simple";
      };
      components = {
        http-client-multipart = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.random
            hsPkgs.filepath
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.blaze-builder
            hsPkgs.http-types
            hsPkgs.mime-types
          ];
        };
      };
    }