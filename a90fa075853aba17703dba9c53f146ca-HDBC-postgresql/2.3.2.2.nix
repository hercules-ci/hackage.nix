{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HDBC-postgresql";
          version = "2.3.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2005-2011 John Goerzen";
        maintainer = "Nicolas Wu <nicolas.wu@gmail.com>";
        author = "John Goerzen";
        homepage = "http://github.com/hdbc/hdbc-postgresql";
        url = "";
        synopsis = "PostgreSQL driver for HDBC";
        description = "This package provides a PostgreSQL driver for HDBC";
        buildType = "Custom";
      };
      components = {
        HDBC-postgresql = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.HDBC
            hsPkgs.parsec
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.old-time
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.convertible
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
          libs = [ pkgs.pq ];
        };
        exes = {
          runtests = {
            depends  = optionals _flags.buildtests [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.testpack
              hsPkgs.containers
              hsPkgs.convertible
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.old-time
              hsPkgs.base
              hsPkgs.HDBC
            ];
            libs = [ pkgs.pq ];
          };
        };
      };
    }