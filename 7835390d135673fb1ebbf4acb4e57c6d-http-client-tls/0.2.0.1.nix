{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-client-tls";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/http-client";
        url = "";
        synopsis = "http-client backend using the connection package and tls library";
        description = "Intended for use by higher-level libraries, such as http-conduit.";
        buildType = "Simple";
      };
      components = {
        http-client-tls = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.http-client
            hsPkgs.connection
            hsPkgs.network
            hsPkgs.tls
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-types
            ];
          };
        };
      };
    }