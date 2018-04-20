{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Imlib";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cgibbard@gmail.com";
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