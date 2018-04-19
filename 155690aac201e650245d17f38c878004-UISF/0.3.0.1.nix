{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "UISF";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 Daniel Winograd-Cort";
        maintainer = "Dan Winograd-Cort <dwc@cs.yale.edu>";
        author = "Dan Winograd-Cort <dwc@cs.yale.edu>";
        homepage = "http://haskell.cs.yale.edu/";
        url = "";
        synopsis = "Library for Arrowized Graphical User Interfaces.";
        description = "UISF is a library for making arrowized GUIs.";
        buildType = "Simple";
      };
      components = {
        UISF = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.arrows
            hsPkgs.GLFW
            hsPkgs.OpenGL
            hsPkgs.deepseq
            hsPkgs.stm
          ];
        };
      };
    }