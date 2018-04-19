{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "alfred";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paba@di.ku.dk";
        author = "Patrick Bahr";
        homepage = "";
        url = "";
        synopsis = "utility library for Alfred version 2";
        description = "A utility library for writing workflows for Alfred version 2.";
        buildType = "Simple";
      };
      components = {
        alfred = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.xmlgen
            hsPkgs.network
            hsPkgs.HTTP
          ];
        };
      };
    }