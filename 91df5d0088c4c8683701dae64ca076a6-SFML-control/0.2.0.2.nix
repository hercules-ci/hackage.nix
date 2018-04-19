{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "SFML-control";
          version = "0.2.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "alfredo.dinapoli@gmail.com";
        author = "Alfredo Di Napoli";
        homepage = "https://github.com/SFML-haskell/SFML-control";
        url = "";
        synopsis = "Higher level library on top of SFML";
        description = "";
        buildType = "Simple";
      };
      components = {
        SFML-control = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.SFML
            hsPkgs.template-haskell
          ];
        };
      };
    }