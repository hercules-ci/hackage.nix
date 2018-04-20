{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "scenegraph";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Mark Wassell 2008";
        maintainer = "Mark Wassell <mwassell@bigpond.net.au>";
        author = "Mark Wassell <mwassell@bigpond.net.au>";
        homepage = "http://www.haskell.org/haskellwiki/SceneGraph";
        url = "";
        synopsis = "Scene Graph";
        description = "Scene Graph Library";
        buildType = "Simple";
      };
      components = {
        scenegraph = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.hmatrix
            hsPkgs.OpenGL
            hsPkgs.GLUT
            hsPkgs.haskell98
            hsPkgs.containers
            hsPkgs.fgl
            hsPkgs.array
            hsPkgs.old-time
            hsPkgs.process
          ];
        };
      };
    }