{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hylogen";
          version = "0.1.4.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "freshdried@gmail.com";
        author = "Sean Lee";
        homepage = "https://github.com/sleexyz/hylogen";
        url = "";
        synopsis = "Purely functional GLSL embedded in Haskell";
        description = "Purely functional GLSL embedded in Haskell";
        buildType = "Simple";
      };
      components = {
        hylogen = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector-space
            hsPkgs.data-reify
          ];
        };
      };
    }