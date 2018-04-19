{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "memcache";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 David Terei.";
        maintainer = "David Terei <code@davidterei.com>";
        author = "David Terei <code@davidterei.com>";
        homepage = "https://github.com/dterei/memcache-hs";
        url = "";
        synopsis = "A memcached client library.";
        description = "A client library for a memcached cluster. It is aimed at full binary protocol\nsupport, ease of use and speed.";
        buildType = "Simple";
      };
      components = {
        memcache = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.network
          ];
        };
        tests = {
          full = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.memcache
            ];
          };
        };
        benchmarks = {
          parser = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.memcache
            ];
          };
        };
      };
    }