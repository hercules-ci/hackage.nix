{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      usepkgconfig = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hydra-hs";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "github@dustlab.com";
        author = "Marcel Ruegenberg";
        homepage = "https://github.com/mruegenberg/hydra-hs";
        url = "";
        synopsis = "Haskell binding to the Sixense SDK for the Razer Hydra";
        description = "";
        buildType = "Simple";
      };
      components = {
        hydra-hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
          ];
          libs = pkgs.lib.optional (!_flags.usepkgconfig) pkgs.sixense;
        };
        tests = {
          hydra-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hydra-hs
            ];
          };
        };
      };
    }