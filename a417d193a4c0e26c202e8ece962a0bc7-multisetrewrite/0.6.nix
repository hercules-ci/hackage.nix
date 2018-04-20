{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "multisetrewrite";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "martin.sulzmann@gmail.com";
        author = "Martin Sulzmann";
        homepage = "http://sulzmann.blogspot.com/2008/10/multi-set-rewrite-rules-with-guards-and.html";
        url = "";
        synopsis = "Multi-set rewrite rules with guards and a parallel execution scheme";
        description = "Multi-set rewrite rules with guards and a parallel execution scheme";
        buildType = "Simple";
      };
      components = {
        multisetrewrite = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.stm
          ];
        };
      };
    }