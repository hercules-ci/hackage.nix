{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "is";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "project-is@lopezjuan.com";
        author = "Víctor López Juan <victor@lopezjuan.com>";
        homepage = "";
        url = "";
        synopsis = "Pattern predicates using TH";
        description = "Generate predicates of type (t → Bool) from patterns or constructors of type t.";
        buildType = "Simple";
      };
      components = {
        is = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.is
            ];
          };
        };
      };
    }