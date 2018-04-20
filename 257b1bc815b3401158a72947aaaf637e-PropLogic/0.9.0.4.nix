{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9";
        identifier = {
          name = "PropLogic";
          version = "0.9.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "b@bucephalus.org";
        author = "bucephalus";
        homepage = "http://www.bucephalus.org/PropLogic";
        url = "";
        synopsis = "Propositional Logic";
        description = "A system for propositional logic with default and fast instances of propositional algebras.";
        buildType = "Simple";
      };
      components = {
        PropLogic = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.random
          ];
        };
        exes = {
          program = {
            depends  = [
              hsPkgs.base
              hsPkgs.old-time
              hsPkgs.random
            ];
          };
        };
      };
    }