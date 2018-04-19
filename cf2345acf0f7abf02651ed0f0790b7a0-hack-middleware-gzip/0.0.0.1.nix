{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-middleware-gzip";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/hack-middleware-gzip/tree/master";
        url = "";
        synopsis = "Automatic gzip compression of responses. (deprecated)";
        description = "";
        buildType = "Simple";
      };
      components = {
        hack-middleware-gzip = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
            hsPkgs.zlib
            hsPkgs.hack
          ];
        };
      };
    }