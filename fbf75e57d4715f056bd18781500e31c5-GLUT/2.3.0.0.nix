{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
      usenativewindowslibraries = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "GLUT";
          version = "2.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jason Dagit <dagitj@gmail.com>, Sven Panne <sven.panne@aedion.de>";
        author = "";
        homepage = "http://www.haskell.org/haskellwiki/Opengl";
        url = "";
        synopsis = "A binding for the OpenGL Utility Toolkit";
        description = "A Haskell binding for the OpenGL Utility Toolkit, a window system independent\ntoolkit for writing OpenGL programs. For more information about the C library\non which this binding is based, please see:\n<http://www.opengl.org/resources/libraries/glut/>.";
        buildType = "Simple";
      };
      components = {
        GLUT = {
          depends  = [
            hsPkgs.OpenGL
            hsPkgs.OpenGLRaw
            hsPkgs.StateVar
            hsPkgs.Tensor
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
          libs = if system.isWindows && _flags.usenativewindowslibraries
            then [ pkgs.glut32 ]
            else pkgs.lib.optional (!system.isOsx) pkgs.glut;
          frameworks = pkgs.lib.optional (!(system.isWindows && _flags.usenativewindowslibraries) && system.isOsx) pkgs.GLUT;
        };
      };
    }