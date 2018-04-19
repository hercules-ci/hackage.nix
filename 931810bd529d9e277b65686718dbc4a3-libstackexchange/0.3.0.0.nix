{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "libstackexchange";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov, Dmitry Malikov";
        homepage = "https://github.com/supki/libstackexchange";
        url = "";
        synopsis = "StackExchange API interface";
        description = "Provides interface for StackExchange v2.1 API";
        buildType = "Simple";
      };
      components = {
        libstackexchange = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.http-conduit
            hsPkgs.profunctors
          ];
        };
      };
    }