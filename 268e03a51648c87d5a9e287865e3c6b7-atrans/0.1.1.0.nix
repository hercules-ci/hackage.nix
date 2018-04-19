{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "atrans";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "pfiff@hax-f.net";
        author = "Philipp Pfeiffer";
        homepage = "https://github.com/aphorisme/atrans";
        url = "";
        synopsis = "A small collection of monad (transformer) instances.";
        description = "Defines monad transformers and gives instances based on the mtl transformer library.";
        buildType = "Simple";
      };
      components = {
        atrans = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }