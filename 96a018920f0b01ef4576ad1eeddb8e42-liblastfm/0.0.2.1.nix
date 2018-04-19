{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "liblastfm";
          version = "0.0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
        author = "Matvey Aksenov, Dmitry Malikov";
        homepage = "";
        url = "";
        synopsis = "Wrapper to Lastfm API";
        description = "Wrapper to Lastfm API";
        buildType = "Simple";
      };
      components = {
        liblastfm = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.curl
            hsPkgs.pureMD5
            hsPkgs.urlencoded
            hsPkgs.xml
            hsPkgs.utf8-string
          ];
        };
      };
    }