{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "amqp";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Holger Reinhardt <hreinhardt@gmail.com>";
        author = "Holger Reinhardt";
        homepage = "";
        url = "";
        synopsis = "Client library for AMQP servers (currently only RabbitMQ)";
        description = "Client library for AMQP servers (currently only RabbitMQ)";
        buildType = "Simple";
      };
      components = {
        amqp = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.network-bytestring
            hsPkgs.network
          ];
        };
      };
    }