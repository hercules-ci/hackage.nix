{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      usenativewindowslibraries = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "GLURaw";
          version = "1.5.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2009-2015 Sven Panne";
        maintainer = "Sven Panne <svenpanne@gmail.com>, Jason Dagit <dagitj@gmail.com>";
        author = "Sven Panne";
        homepage = "http://www.haskell.org/haskellwiki/Opengl";
        url = "";
        synopsis = "A raw binding for the OpenGL graphics system";
        description = "GLURaw is a raw Haskell binding for the GLU 1.3 OpenGL utility library. It is\nbasically a 1:1 mapping of GLU's C API, intended as a basis for a nicer\ninterface.\n\nOpenGL is the industry's most widely used and supported 2D and 3D graphics\napplication programming interface (API), incorporating a broad set of\nrendering, texture mapping, special effects, and other powerful visualization\nfunctions. For more information about OpenGL and its various extensions,\nplease see <http://www.opengl.org/>\nand <http://www.opengl.org/registry/>.";
        buildType = "Simple";
      };
      components = {
        GLURaw = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.OpenGLRaw
          ];
          libs = if system.isWindows && _flags.usenativewindowslibraries
            then [ pkgs.glu32 ]
            else pkgs.lib.optional (!system.isOsx && !system.isIos) pkgs.GLU;
          frameworks = if !(system.isWindows && _flags.usenativewindowslibraries) && system.isOsx
            then [ pkgs.OpenGL ]
            else pkgs.lib.optional system.isIos pkgs.OpenGLES;
        };
      };
    }