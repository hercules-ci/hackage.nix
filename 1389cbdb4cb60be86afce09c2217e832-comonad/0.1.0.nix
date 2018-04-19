{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "comonad";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2011 Edward A. Kmett, Copyright (C) 2004-2008 Dave Menendez";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://comonad.com/reader/";
        url = "";
        synopsis = "Haskell 98 comonads";
        description = "Haskell 98 comonads";
        buildType = "Simple";
      };
      components = {
        comonad = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }