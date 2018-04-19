{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "HDBC-sqlite3";
          version = "2.2.0.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2005-2009 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/hdbc-sqlite3";
        url = "";
        synopsis = "Sqlite v3 driver for HDBC";
        description = "This is the Sqlite v3 driver for HDBC, the generic\ndatabase access system for Haskell";
        buildType = "Simple";
      };
      components = {
        HDBC-sqlite3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.HDBC
            hsPkgs.utf8-string
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
          libs = [ pkgs.sqlite3 ];
        };
        exes = {
          runtests = {
            depends  = optionals _flags.buildtests [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.testpack
              hsPkgs.containers
              hsPkgs.convertible
              hsPkgs.old-time
              hsPkgs.time
              hsPkgs.old-locale
            ];
            libs = [ pkgs.sqlite3 ];
          };
        };
      };
    }