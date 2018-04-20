{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lambdacube-gl";
          version = "0.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "csaba.hruska@gmail.com";
        author = "Csaba Hruska, Peter Divianszky";
        homepage = "http://lambdacube3d.com";
        url = "";
        synopsis = "OpenGL 3.3 Core Profile backend for LambdaCube 3D";
        description = "OpenGL 3.3 Core Profile backend for LambdaCube 3D";
        buildType = "Simple";
      };
      components = {
        lambdacube-gl = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.JuicyPixels
            hsPkgs.OpenGLRaw
            hsPkgs.lambdacube-ir
          ];
        };
      };
    }