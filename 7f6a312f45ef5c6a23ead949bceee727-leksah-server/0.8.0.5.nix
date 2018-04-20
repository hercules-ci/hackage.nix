{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "leksah-server";
          version = "0.8.0.5";
        };
        license = "LicenseRef-GPL";
        copyright = "2007-2009 Juergen Nicklisch-Franken, Hamish Mackenzie";
        maintainer = "maintainer@leksah.org";
        author = "Juergen \"jutaro\" Nicklisch-Franken, Hamish Mackenzie";
        homepage = "http://leksah.org";
        url = "http://code.haskell.org/leksah-collector";
        synopsis = "Metadata collection for leksah";
        description = "The interface to GHC-API for leksah";
        buildType = "Simple";
      };
      components = {
        leksah-server = {
          depends  = ([
            hsPkgs.Cabal
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.binary-shared
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.ltk
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.time
            hsPkgs.deepseq
            hsPkgs.hslogger
            hsPkgs.network
          ] ++ (if compiler.isGhc
            then [ hsPkgs.haddock ]
            else [
              hsPkgs.haddock-leksah
            ])) ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
          libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
        };
        exes = {
          leksah-server = {
            depends  = ([
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.binary-shared
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ltk
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.deepseq
              hsPkgs.network
            ] ++ (if compiler.isGhc
              then [ hsPkgs.haddock ]
              else [
                hsPkgs.haddock-leksah
              ])) ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
            libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
          };
          leksahecho = {};
        };
      };
    }