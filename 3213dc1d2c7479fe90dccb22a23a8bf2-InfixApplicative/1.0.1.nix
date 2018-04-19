{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "InfixApplicative";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas Davie (tom.davie@gmail.com)";
        author = "Thomas Davie";
        homepage = "";
        url = "";
        synopsis = "liftA2 for infix operators.";
        description = "liftA2 for infix operators.";
        buildType = "Simple";
      };
      components = {
        InfixApplicative = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ];
        };
      };
    }