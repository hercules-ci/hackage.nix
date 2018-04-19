{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ConcurrentUtils";
          version = "0.4.4.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "info@alkalisoftware.net";
        author = "James Candy";
        homepage = "http://alkalisoftware.net";
        url = "";
        synopsis = "Concurrent utilities";
        description = "";
        buildType = "Simple";
      };
      components = {
        ConcurrentUtils = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.parallel
            hsPkgs.cryptohash
            hsPkgs.RSA
            hsPkgs.crypto-random
            hsPkgs.securemem
            hsPkgs.reexport-crypto-random
            hsPkgs.tagged
            hsPkgs.MonadRandom
            hsPkgs.monads-tf
            hsPkgs.list-extras
          ];
        };
      };
    }