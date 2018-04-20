{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hfractal";
          version = "0.4.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2011 Chris Holdsworth";
        maintainer = "Chris Holdsworth <chrisholdsworth@gmail.com>";
        author = "Chris Holdsworth <chrisholdsworth@gmail.com>";
        homepage = "http://github.com/cmh/Hfractal";
        url = "";
        synopsis = "OpenGL fractal renderer";
        description = "An OpenGL fractal browser with multicore support and the capability to output high quality png images.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hfractal = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.gd
              hsPkgs.data-accessor
              hsPkgs.data-accessor-template
              hsPkgs.OpenGL
              hsPkgs.OpenGLRaw
              hsPkgs.GLUT
              hsPkgs.colour
              hsPkgs.containers
            ];
          };
        };
      };
    }