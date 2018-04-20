{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-logger";
          version = "1.3.0";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "fast-logger support for apiary web framework.";
        description = "example: <https://github.com/philopon/apiary/blob/master/examples/persistent.hs>";
        buildType = "Simple";
      };
      components = {
        apiary-logger = {
          depends  = [
            hsPkgs.base
            hsPkgs.apiary
            hsPkgs.fast-logger
            hsPkgs.monad-logger
            hsPkgs.data-default-class
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.lifted-base
          ];
        };
      };
    }