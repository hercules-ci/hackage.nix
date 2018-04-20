{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-promise";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vwwv@correo.ugr.es";
        author = "Alejandro Durán Pallarés";
        homepage = "https://github.com/vwwv/ghcjs-promise";
        url = "";
        synopsis = "Bidirectional bidings to javascript's promise.";
        description = "Bidirectional bidings to javascript's promise.";
        buildType = "Simple";
      };
      components = {
        ghcjs-promise = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghcjs-base
            hsPkgs.random
          ];
        };
      };
    }