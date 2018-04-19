{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Catana";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dustin.deweese@gmail.com";
        author = "Dustin DeWeese";
        homepage = "";
        url = "";
        synopsis = "A monad for complex manipulation of a stream.";
        description = "A monad for complex manipulation of a stream.";
        buildType = "Simple";
      };
      components = {
        Catana = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }