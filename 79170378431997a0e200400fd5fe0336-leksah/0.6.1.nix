{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "leksah";
          version = "0.6.1";
        };
        license = "LicenseRef-GPL";
        copyright = "2007-2009 Juergen Nicklisch-Franken, Hamish Mackenzie";
        maintainer = "maintainer@leksah.org";
        author = "Juergen Nicklisch-Franken, Hamish Mackenzie";
        homepage = "http://www.leksah.org";
        url = "http://code.haskell.org/leksah";
        synopsis = "Haskell IDE written in Haskell";
        description = "An Integrated Development Environment for Haskell written in Haskell.";
        buildType = "Simple";
      };
      components = {
        exes = {
          leksah = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.glib
              hsPkgs.gtk
              hsPkgs.gtksourceview2
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.regex-posix
              hsPkgs.regex-compat
              hsPkgs.regex-base
              hsPkgs.utf8-string
              hsPkgs.array
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
            libs = pkgs.lib.optional system.isWindows pkgs.kernel32 ++ pkgs.lib.optional system.isOsx pkgs.igemacintegration;
          };
          leksahecho = {};
        };
      };
    }