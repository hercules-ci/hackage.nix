{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-libusb";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes";
        author = "Maurício C. Antunes";
        homepage = "http://bitbucket.org/mauricio/bindings";
        url = "";
        synopsis = "Check bindings-common package for directions.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-libusb = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-common
          ];
        };
      };
    }