{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-lens-light";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "roma@ro-che.info";
        author = "Roman Cheplyaka";
        homepage = "https://github.com/feuerbach/data-lens-light";
        url = "";
        synopsis = "Simple lenses, minimum dependencies";
        description = "See <https://github.com/feuerbach/data-lens-light/blob/master/README.md>";
        buildType = "Simple";
      };
      components = {
        data-lens-light = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
          ];
        };
      };
    }