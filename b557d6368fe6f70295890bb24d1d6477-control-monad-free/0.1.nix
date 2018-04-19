{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "control-monad-free";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "";
        url = "";
        synopsis = "A monad transformer for free monads.";
        description = "A monad transformer for free monads.";
        buildType = "Simple";
      };
      components = {
        control-monad-free = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }