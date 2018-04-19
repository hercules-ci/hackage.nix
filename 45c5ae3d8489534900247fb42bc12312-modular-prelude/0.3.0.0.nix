{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "modular-prelude";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "danburton.email@gmail.com";
        author = "Dan Burton";
        homepage = "https://github.com/DanBurton/modular-prelude#readme";
        url = "";
        synopsis = "A new Prelude featuring first class modules";
        description = "";
        buildType = "Simple";
      };
      components = {
        modular-prelude = {
          depends  = [
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.data-default
            hsPkgs.system-filepath
            hsPkgs.hashable
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }