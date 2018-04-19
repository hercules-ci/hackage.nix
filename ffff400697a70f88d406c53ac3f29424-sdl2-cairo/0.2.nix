{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sdl2-cairo";
          version = "0.2";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 Anton Pirogov";
        maintainer = "anton.pirogov@gmail.com";
        author = "Anton Pirogov";
        homepage = "";
        url = "";
        synopsis = "Render with Cairo on SDL textures.";
        description = "This small library provides glue functions to draw\non SDL2 textures with Cairo.\nNOTE: The Processing-style drawing API has been moved\nto a separate the package cairo-canvas.";
        buildType = "Simple";
      };
      components = {
        sdl2-cairo = {
          depends  = [
            hsPkgs.base
            hsPkgs.sdl2
            hsPkgs.cairo
            hsPkgs.linear
          ];
        };
      };
    }