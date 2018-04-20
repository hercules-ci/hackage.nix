{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uniform-pair";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "";
        url = "";
        synopsis = "Uniform pairs with class instances";
        description = "Uniform pairs with class instances";
        buildType = "Simple";
      };
      components = {
        uniform-pair = {
          depends  = [ hsPkgs.base ];
        };
      };
    }