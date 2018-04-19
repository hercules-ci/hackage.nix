{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tagged-transformer";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/tagged-transformer";
        url = "";
        synopsis = "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments";
        description = "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments";
        buildType = "Simple";
      };
      components = {
        tagged-transformer = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.comonad
            hsPkgs.distributive
            hsPkgs.contravariant
            hsPkgs.functor-apply
            hsPkgs.comonad-transformers
          ];
        };
      };
    }