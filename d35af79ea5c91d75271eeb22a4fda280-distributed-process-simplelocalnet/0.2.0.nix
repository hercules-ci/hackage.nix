{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distributed-process-simplelocalnet";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Well-Typed LLP";
        maintainer = "edsko@well-typed.com, dcoutts@well-typed.com";
        author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
        homepage = "http://github.com/haskell-distributed/distributed-process";
        url = "";
        synopsis = "Simple zero-configuration backend for Cloud Haskell";
        description = "Simple backend based on the TCP transport which offers node\ndiscovery based on UDP multicast. This is a zero-configuration\nbackend designed to get you going with Cloud Haskell quickly\nwithout imposing any structure on your application.";
        buildType = "Simple";
      };
      components = {
        distributed-process-simplelocalnet = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.network-multicast
            hsPkgs.data-accessor
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.network-transport
            hsPkgs.network-transport-tcp
            hsPkgs.distributed-process
          ];
        };
        tests = {
          TestSimpleLocalnet = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.network
              hsPkgs.network-multicast
              hsPkgs.data-accessor
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.network-transport
              hsPkgs.network-transport-tcp
              hsPkgs.distributed-process
            ];
          };
        };
      };
    }