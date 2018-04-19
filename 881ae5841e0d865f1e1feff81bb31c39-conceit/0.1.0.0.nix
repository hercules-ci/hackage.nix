{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conceit";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diaz_carrete@yahoo.com";
        author = "Daniel Díaz Carrete";
        homepage = "";
        url = "";
        synopsis = "Concurrent actions that may fail";
        description = "A version of the async package's 'Control.Concurrent.Async.Concurrently' for which the actions may fail";
        buildType = "Simple";
      };
      components = {
        conceit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.async
          ];
        };
      };
    }