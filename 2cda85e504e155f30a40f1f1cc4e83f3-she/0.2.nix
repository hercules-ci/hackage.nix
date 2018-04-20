{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "she";
          version = "0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "conor@strictlypositive.org";
        author = "Conor McBride";
        homepage = "http://personal.cis.strath.ac.uk/~conor/pub/she";
        url = "";
        synopsis = "A Haskell preprocessor adding miscellaneous features";
        description = "The Strathclyde Haskell Enhancement is a somewhat inglorious bodge,\nequipping ghc with automatic lifting of types to kinds, pattern\nsynonyms, and some kit for higgledy-piggledy literate programming.";
        buildType = "Simple";
      };
      components = {
        she = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.filepath
          ];
        };
        exes = {
          she = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.filepath
            ];
          };
        };
      };
    }