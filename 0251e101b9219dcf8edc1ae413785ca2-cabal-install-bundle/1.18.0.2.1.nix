{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-install-bundle";
          version = "1.18.0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paczesiowa@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "The (bundled) command-line interface for Cabal and Hackage.";
        description = "This is cabal-install with bundled dependencies. Easier to bootstrap.";
        buildType = "Configure";
      };
      components = {
        exes = {
          cabal = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.old-time
              hsPkgs.bytestring
              hsPkgs.unix
            ];
            libs = [ pkgs.z ];
          };
        };
      };
    }