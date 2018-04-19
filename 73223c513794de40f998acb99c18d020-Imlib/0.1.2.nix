{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Imlib";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andreas Raster <lazor@affenbande.org>";
        author = "Cale Gibbard";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Haskell binding for Imlib 2";
        buildType = "Simple";
      };
      components = {
        Imlib = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.X11
          ];
          libs = [ pkgs.Imlib2 ];
        };
      };
    }