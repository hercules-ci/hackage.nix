{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "caseof";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "https://github.com/chrisdone/caseof#readme";
        url = "";
        synopsis = "Combinators for casing on constructors";
        description = "Template-Haskell-based combinators that let you select on constructors.";
        buildType = "Simple";
      };
      components = {
        caseof = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }