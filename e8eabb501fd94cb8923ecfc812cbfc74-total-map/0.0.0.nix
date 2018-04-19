{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "total-map";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "";
        url = "";
        synopsis = "Finitely represented /total/ maps";
        description = "Finitely represented /total/ maps. Represented by as a partial map and a default value.\nHas Applicative and Monad instances (unlike Data.Map).";
        buildType = "Simple";
      };
      components = {
        total-map = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }