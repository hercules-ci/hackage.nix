{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snaplet-redis";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dima@dzhus.org";
        author = "Dmitry Dzhus";
        homepage = "https://github.com/dzhus/snaplet-redis/";
        url = "";
        synopsis = "Redis support for Snap Framework";
        description = "This package provides a snaplet which exposes\ninterface to Redis in-memory key-value storage as\nimplemented by Hedis library. Inline\ndocumentation contains usage examples.";
        buildType = "Simple";
      };
      components = {
        snaplet-redis = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-lens
            hsPkgs.data-lens-template
            hsPkgs.hedis
            hsPkgs.mtl
            hsPkgs.snap
            hsPkgs.transformers
          ];
        };
      };
    }