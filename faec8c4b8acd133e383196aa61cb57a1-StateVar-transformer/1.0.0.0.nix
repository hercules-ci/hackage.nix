{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "StateVar-transformer";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "HATTORI,HIROKI <seagull.kamome@gmail.com>";
        author = "";
        homepage = "http://github.com/seagull-kamome/StateVar-transformer";
        url = "";
        synopsis = "State variables";
        description = "StateVar with monad transformer";
        buildType = "Simple";
      };
      components = {
        StateVar-transformer = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
      };
    }