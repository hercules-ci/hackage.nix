{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hackager";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Terei <dave.terei@gmail.com>";
        author = "The GHC Team, David Terei <dave.terei@gmail.com>";
        homepage = "https://github.com/dterei/Hackager";
        url = "";
        synopsis = "Hackage testing tool";
        description = "Hackager is a program for compiling the entirety of Hackage as a way of\ntesting a Haskell compiler.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hackager = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.process
            ];
          };
        };
      };
    }