{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "rad";
          version = "0.1.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "Edward Kmett 2010";
        maintainer = "ekmett@gmail.com";
        author = "Edward Kmett 2010";
        homepage = "http://comonad.com/reader/";
        url = "";
        synopsis = "Reverse Automatic Differentiation.";
        description = "Reverse-Mode Automatic Differentiation via overloading.\nExistential type \\\"branding\\\" is used to prevent sensitivity confusion.";
        buildType = "Simple";
      };
      components = {
        rad = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-reify
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }