{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "oscpacking";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "ch.howard@zoho.com";
        author = "Christopher Howard";
        homepage = "";
        url = "";
        synopsis = "Implements an osculatory packing (kissing circles) algorithm and display.";
        description = "";
        buildType = "Simple";
      };
      components = {
        oscpacking = {
          depends  = [
            hsPkgs.base
            hsPkgs.gloss
            hsPkgs.colour
            hsPkgs.random
          ];
        };
      };
    }