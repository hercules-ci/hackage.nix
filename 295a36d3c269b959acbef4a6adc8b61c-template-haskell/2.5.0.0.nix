{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "template-haskell";
          version = "2.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Facilities for manipulating Haskell source code using Template Haskell.";
        buildType = "Simple";
      };
      components = {
        template-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.containers
          ];
        };
      };
    }