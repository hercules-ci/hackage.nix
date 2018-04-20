{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "profunctors";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "git://github.com/ekmett/profunctors/";
        url = "";
        synopsis = "Haskell 98 Profunctors";
        description = "Haskell 98 Profunctors";
        buildType = "Simple";
      };
      components = {
        profunctors = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroupoids
            hsPkgs.comonad
          ];
        };
      };
    }