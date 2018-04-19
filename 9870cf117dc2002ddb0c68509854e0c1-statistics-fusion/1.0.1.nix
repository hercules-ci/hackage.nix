{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "statistics-fusion";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Don Stewart 2008, 2009.";
        maintainer = "dons@galois.com";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/statistics-fusion";
        url = "";
        synopsis = "An implementation of high performance, minimal statistics functions";
        description = "This package is obsolete. Please use O\\'Sullivan\\'s /statistics/\npackage: <http://hackage.haskell.org/package/statistics>\n";
        buildType = "Simple";
      };
      components = {
        statistics-fusion = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }