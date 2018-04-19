{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "contravariant";
          version = "0.1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2007-2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/contravariant/";
        url = "";
        synopsis = "Haskell 98 contravariant functors";
        description = "Haskell 98 contravariant functors";
        buildType = "Simple";
      };
      components = {
        contravariant = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }