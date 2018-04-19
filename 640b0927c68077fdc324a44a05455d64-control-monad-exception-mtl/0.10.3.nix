{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "control-monad-exception-mtl";
          version = "0.10.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra";
        homepage = "http://pepeiborra.github.com/control-monad-exception";
        url = "";
        synopsis = "MTL instances for the EMT exceptions monad transformer";
        description = "MTL classes instances for the EMT exceptions monad transformer\n";
        buildType = "Simple";
      };
      components = {
        control-monad-exception-mtl = {
          depends  = [
            hsPkgs.base
            hsPkgs.control-monad-exception
            hsPkgs.mtl
          ];
        };
      };
    }