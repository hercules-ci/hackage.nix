{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kafka-client";
          version = "0.7.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Abhinav Gupta <mail@abhinavg.net>";
        author = "Abhinav Gupta";
        homepage = "https://github.com/abhinav/kafka-client";
        url = "";
        synopsis = "Low-level Haskell client library for Apache Kafka 0.7.";
        description = "This package implements a low-level client client library to interface\nwith <http://kafka.apache.org/ Apache Kafka> 0.7.\n\n__Kafka 0.8 and newer are not yet supported.__";
        buildType = "Simple";
      };
      components = {
        kafka-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.digest
            hsPkgs.dlist
            hsPkgs.network
            hsPkgs.snappy
            hsPkgs.time
            hsPkgs.zlib
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.QuickCheck
              hsPkgs.time
              hsPkgs.kafka-client
            ];
          };
        };
      };
    }