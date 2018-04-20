{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "network-data";
          version = "0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas DuBuisson";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Library for network data structures and their serialization.";
        description = "This library includes definitions for common headers such as\nEthernet, IPv4, IPv6, UDP, TCP, etc. This code is untested for any serious\nwork - use at your own risk.";
        buildType = "Simple";
      };
      components = {
        network-data = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.prettyclass
            hsPkgs.pretty
          ];
        };
      };
    }