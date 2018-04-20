{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "redis";
          version = "0.3.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2009-2010 Alexander Bogdanov";
        maintainer = "Alexander Bogdanov <andorn@gmail.com>";
        author = "Alexander Bogdanov <andorn@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A driver for Redis key-value database";
        description = "Redis is an advanced key-value store. It is similar to memcached\nbut the dataset is not volatile. Values can be strings, exactly\nlike in memcached, but also lists, sets, and ordered sets.\n\nThis library is a Haskell driver for Redis. Note that this library\nsupports the most recent (actually the git one) version of Redis\nprotocol. Most of the functions will work correctly with stable version\nbut not all.\n\nChanges from v0.2:\n\n- (!) A lot of data and function types changed. Now it is posible to get not only\nString result but also a ByteString and other.\n\n- New protocol functions added: substr, zrank";
        buildType = "Simple";
      };
      components = {
        redis = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.old-time
          ];
        };
      };
    }