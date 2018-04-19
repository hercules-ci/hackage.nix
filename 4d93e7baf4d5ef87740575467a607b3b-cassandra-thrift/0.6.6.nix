{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "cassandra-thrift";
          version = "0.6.6";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "kirk@glyphsoftware.com";
        author = "Thrift v.0.4.0";
        homepage = "http://cassandra.apache.org/";
        url = "";
        synopsis = "thrift bindings to the cassandra database";
        description = "The Cassandra (v.0.6.6) database bindings, generated using the Thrift (v.0.4) compliler, Released under the Apache 2.0 license.";
        buildType = "Simple";
      };
      components = {
        cassandra-thrift = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.Thrift
          ];
        };
      };
    }