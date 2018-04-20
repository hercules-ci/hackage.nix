{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bitmap-opengl";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Balazs Komuves";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "http://code.haskell.org/~bkomuves/";
        url = "";
        synopsis = "OpenGL support for Data.Bitmap.";
        description = "OpenGL support for Data.Bitmap. It has its own package so that\nthe bitmap package does not depend on OpenGL.";
        buildType = "Simple";
      };
      components = {
        bitmap-opengl = {
          depends  = [
            hsPkgs.OpenGL
            hsPkgs.bitmap
          ] ++ [ hsPkgs.base ];
        };
      };
    }