{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wordexp";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov";
        homepage = "";
        url = "";
        synopsis = "wordexp(3) wrappers";
        description = "man wordexp";
        buildType = "Simple";
      };
      components = {
        wordexp = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.semigroups
          ];
        };
      };
    }