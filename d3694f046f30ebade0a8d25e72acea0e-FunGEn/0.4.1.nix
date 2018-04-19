{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "FunGEn";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2002 Andre Furtado <awbf@cin.ufpe.br>";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Andre Furtado <awbf@cin.ufpe.br>";
        homepage = "http://joyful.com/fungen";
        url = "";
        synopsis = "FUNctional Game ENgine";
        description = "Multi-platform 2D game engine built on top of OpenGL & GLUT";
        buildType = "Simple";
      };
      components = {
        FunGEn = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGL
            hsPkgs.GLUT
            hsPkgs.random
          ];
        };
      };
    }