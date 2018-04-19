{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "th-kinds-fork";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Louis Wasserman <wasserman.louis@gmail.com>";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "Automated kind inference in Template Haskell.";
        description = "Given the name of a Haskell type, typeclass, type family, or any of the above, determines its kind.";
        buildType = "Simple";
      };
      components = {
        th-kinds-fork = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.th-orphans
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }