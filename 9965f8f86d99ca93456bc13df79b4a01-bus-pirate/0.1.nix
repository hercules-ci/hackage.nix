{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bus-pirate";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bgamari.foss@gmail.com";
        author = "Ben Gamari";
        homepage = "http://www.github.com/bgamari/bus-pirate";
        url = "";
        synopsis = "Haskell interface to the Bus Pirate binary interface";
        description = "This package provides a simple, type-safe interface for working with\nthe Bus Pirate's binary interface.";
        buildType = "Simple";
      };
      components = {
        bus-pirate = {
          depends  = [
            hsPkgs.base
            hsPkgs.serialport
            hsPkgs.bytestring
            hsPkgs.errors
            hsPkgs.transformers
            hsPkgs.either
          ];
        };
      };
    }