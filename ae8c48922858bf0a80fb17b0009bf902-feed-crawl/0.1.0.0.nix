{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "feed-crawl";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dhchoi@gmail.com";
        author = "Daniel Choi";
        homepage = "https://github.com/danchoi/feed-crawl";
        url = "";
        synopsis = "Feed crawling utilities";
        description = "";
        buildType = "Simple";
      };
      components = {
        feed-crawl = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.conduit
            hsPkgs.connection
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.http-types
            hsPkgs.hxt
          ];
        };
      };
    }