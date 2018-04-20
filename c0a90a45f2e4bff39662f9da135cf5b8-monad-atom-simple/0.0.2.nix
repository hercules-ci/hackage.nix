{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "monad-atom-simple";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gchrupala@lsv.uni-saarland.de";
        author = "Grzegorz Chrupała";
        homepage = "";
        url = "";
        synopsis = "Monadically map objects to unique ints.";
        description = "Monadically map objects to unique ints.";
        buildType = "Simple";
      };
      components = {
        monad-atom-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.ghc-prim
          ];
        };
      };
    }