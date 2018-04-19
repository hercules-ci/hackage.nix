{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "dnsrbl";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Holden <holden@pigscanfly.ca>";
        author = "Holden Karau <holden@pigscanfly.ca>";
        homepage = "http://www.pigscanfly.ca/~holden/dnsrbl/";
        url = "";
        synopsis = "Asynchronous DNS RBL lookup";
        description = "Asynchronous DNS RBL lookup";
        buildType = "Simple";
      };
      components = {
        dnsrbl = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.hsdns
            hsPkgs.HUnit
          ];
        };
      };
    }