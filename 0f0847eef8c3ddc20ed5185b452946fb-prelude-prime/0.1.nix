{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "prelude-prime";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "roma@ro-che.info";
        author = "Roman Cheplyaka";
        homepage = "";
        url = "";
        synopsis = "A slightly better (but conservative) Prelude";
        description = "See <https://github.com/feuerbach/prelude-prime/blob/master/README.md>";
        buildType = "Simple";
      };
      components = {
        prelude-prime = {
          depends  = [ hsPkgs.base ];
        };
      };
    }