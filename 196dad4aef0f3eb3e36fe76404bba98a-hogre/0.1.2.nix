{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hogre";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "(c) 2010, 2011 Antti Salonen";
        maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
        author = "Antti Salonen<ajsalonen at gmail dot com>";
        homepage = "http://anttisalonen.github.com/hogre";
        url = "";
        synopsis = "Haskell binding to a subset of OGRE";
        description = "This package contains Haskell bindings to a subset of\nOGRE (Object-Oriented Graphics Rendering Engine)\n(<http://www.ogre3d.org/>).";
        buildType = "Custom";
      };
      components = {
        hogre = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.cgen
          ];
          libs = [ pkgs.OgreMain ];
          pkgconfig = pkgs.lib.optional (!system.isWindows) pkgconfPkgs.OGRE;
        };
      };
    }