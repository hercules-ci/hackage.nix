{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GLFW-OGL";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "none";
        author = "";
        homepage = "http://haskell.org/haskellwiki/GLFW-OGL";
        url = "";
        synopsis = "A binding for GLFW (OGL)";
        description = "Provisional port of the GLFW-0.3 package to 'OGL'";
        buildType = "Simple";
      };
      components = {
        GLFW-OGL = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.OGL
          ];
          libs = if system.isLinux
            then [ pkgs.Xrandr pkgs.X11 ]
            else pkgs.lib.optional (!system.isOsx && system.isWindows) pkgs.opengl32;
          frameworks = pkgs.lib.optionals (!system.isLinux && system.isOsx) [
            pkgs.AGL
            pkgs.Carbon
            pkgs.OpenGL
          ];
        };
      };
    }