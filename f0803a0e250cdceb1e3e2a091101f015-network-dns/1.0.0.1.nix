{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "network-dns";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/network-dns";
        url = "";
        synopsis = "Domain Name System data structures";
        description = "This package provides Domain Name System data structures and\n(de)serialization routines.";
        buildType = "Simple";
      };
      components = {
        network-dns = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagged
            hsPkgs.hashable
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.text-latin1
            hsPkgs.text-printer
            hsPkgs.data-textual
            hsPkgs.parsers
            hsPkgs.network-ip
          ];
        };
      };
    }