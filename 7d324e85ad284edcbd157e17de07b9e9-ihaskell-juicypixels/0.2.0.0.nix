{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ihaskell-juicypixels";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "rsx@bluewin.ch";
        author = "Roland Senn";
        homepage = "http://www.github.com/gibiansky/ihaskell";
        url = "";
        synopsis = "IHaskell - IHaskellDisplay instances of the image types of the JuicyPixels package.";
        description = "IHaskellDisplay instances of the image types of the JuicyPixels package. They are displayed as .JPG images.\nDynamicImages and Images of types PixelRGBA16, PixelRGBA8, PixelRGB16, PixelRGB8,\nPixelYA16, PixelYA8, Pixel16, Pixel8, PixelCMYK16, PixelCMYK8, PixelF, Pixel32\nare supported.\nThe module IHaskell.Juicypixels re-exports the modules IHaskell.Display and Codec.Picture.";
        buildType = "Simple";
      };
      components = {
        ihaskell-juicypixels = {
          depends  = [
            hsPkgs.base
            hsPkgs.classy-prelude
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.JuicyPixels
            hsPkgs.ihaskell
          ];
        };
      };
    }