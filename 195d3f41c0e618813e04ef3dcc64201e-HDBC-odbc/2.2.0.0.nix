{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "HDBC-odbc";
          version = "2.2.0.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2005-2009 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/hdbc-odbc";
        url = "";
        synopsis = "ODBC driver for HDBC";
        description = "This package provides an ODBC database backend for HDBC.\nIt is cross-platform and supports unixODBC on Unix/Linux/POSIX platforms\nand Microsoft ODBC on Windows.  It is also the preferred way to access\nMySQL databases from Haskell.";
        buildType = "Simple";
      };
      components = {
        HDBC-odbc = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.HDBC
            hsPkgs.utf8-string
            hsPkgs.bytestring
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
          libs = if system.isWindows || system.isWindows
            then [ pkgs.odbc32 ]
            else [ pkgs.odbc ];
        };
        exes = {
          runtests = {
            depends  = optionals _flags.buildtests [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.testpack
              hsPkgs.containers
              hsPkgs.old-time
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.convertible
            ];
            libs = if system.isWindows || system.isWindows
              then [ pkgs.odbc32 ]
              else [ pkgs.odbc ];
          };
        };
      };
    }