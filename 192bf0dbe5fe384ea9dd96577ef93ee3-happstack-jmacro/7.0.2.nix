{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-jmacro";
          version = "7.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://www.happstack.com/";
        url = "";
        synopsis = "Support for using JMacro with Happstack";
        description = "";
        buildType = "Simple";
      };
      components = {
        happstack-jmacro = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.digest
            hsPkgs.happstack-server
            hsPkgs.jmacro
            hsPkgs.pretty
            hsPkgs.utf8-string
          ];
        };
      };
    }