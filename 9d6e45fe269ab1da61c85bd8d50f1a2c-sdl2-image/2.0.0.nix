{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sdl2-image";
          version = "2.0.0";
        };
        license = "MIT";
        copyright = "Copyright © 2014 Cai Lei, Copyright © 2015 Siniša Biđin";
        maintainer = "Siniša Biđin <sinisa@bidin.eu>";
        author = "Cai Lei <cailei@live.com>, Siniša Biđin <sinisa@bidin.eu>";
        homepage = "";
        url = "";
        synopsis = "Bindings to SDL2_image.";
        description = "Haskell bindings to SDL2_image.";
        buildType = "Simple";
      };
      components = {
        sdl2-image = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.sdl2
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.transformers
          ];
        };
        exes = {
          sdl2-image-example = {
            depends  = optionals _flags.example [
              hsPkgs.base
              hsPkgs.sdl2
              hsPkgs.sdl2-image
              hsPkgs.text
            ];
          };
        };
      };
    }