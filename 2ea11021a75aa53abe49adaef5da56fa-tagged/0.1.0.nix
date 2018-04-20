{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "tagged";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "";
        url = "";
        synopsis = "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments";
        description = "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments";
        buildType = "Simple";
      };
      components = {
        tagged = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
          ];
        };
      };
    }