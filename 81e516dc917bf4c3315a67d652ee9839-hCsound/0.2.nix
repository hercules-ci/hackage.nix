{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hCsound";
          version = "0.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "John W. Lato, jwlato@gmail.com";
        author = "John W. Lato, jwlato@gmail.com";
        homepage = "";
        url = "";
        synopsis = "interface to CSound API";
        description = "Haskell interface to Csound API.";
        buildType = "Simple";
      };
      components = {
        hCsound = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
          ];
          libs = [
            pkgs.csound64
            pkgs.sndfile
          ];
        };
      };
    }