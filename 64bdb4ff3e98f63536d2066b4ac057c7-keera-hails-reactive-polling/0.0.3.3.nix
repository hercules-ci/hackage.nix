{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "keera-hails-reactive-polling";
          version = "0.0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez";
        homepage = "http://www.keera.es/blog/community/";
        url = "";
        synopsis = "Haskell on Rails - Polling based Readable RVs";
        description = "";
        buildType = "Simple";
      };
      components = {
        keera-hails-reactive-polling = {
          depends  = [
            hsPkgs.base
            hsPkgs.keera-hails-reactivevalues
            hsPkgs.keera-callbacks
          ];
        };
      };
    }