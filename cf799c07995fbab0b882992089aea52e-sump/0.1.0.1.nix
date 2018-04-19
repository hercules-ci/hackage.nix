{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sump";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Ben Gamari";
        maintainer = "ben@smart-cactus.org";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/sump";
        url = "";
        synopsis = "A Haskell interface to SUMP-compatible logic analyzers";
        description = "A Haskell interface to SUMP-compatible logic analyzers including\na utilities for visualization of logic traces.";
        buildType = "Simple";
      };
      components = {
        sump = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.transformers
            hsPkgs.either
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.serialport
          ];
        };
      };
    }