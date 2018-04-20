{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-clientsession";
          version = "0.9.0.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "clientsession support for apiary web framework.";
        description = "example: <https://github.com/philopon/apiary/blob/master/examples/auth.hs>";
        buildType = "Simple";
      };
      components = {
        apiary-clientsession = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.apiary
            hsPkgs.apiary-cookie
            hsPkgs.clientsession
            hsPkgs.tagged
            hsPkgs.time
            hsPkgs.data-default-class
            hsPkgs.reflection
            hsPkgs.binary
            hsPkgs.crypto-random
            hsPkgs.cprng-aes
            hsPkgs.base64-bytestring
            hsPkgs.http-types
          ];
        };
      };
    }