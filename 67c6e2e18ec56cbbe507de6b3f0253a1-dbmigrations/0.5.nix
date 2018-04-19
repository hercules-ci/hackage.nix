{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      testing = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dbmigrations";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jonathan Daugherty <drcygnus@gmail.com>";
        author = "Jonathan Daugherty <drcygnus@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "An implementation of relational database \"migrations\"";
        description = "A library and program for the creation,\nmanagement, and installation of schema updates\n(called /migrations/) for a relational database.\nIn particular, this package lets the migration\nauthor express explicit dependencies between\nmigrations and the management tool automatically\ninstalls or reverts migrations accordingly, using\ntransactions for safety.\nThis package is written to support any\nHDBC-supported database, although at present only\nPostgreSQL is fully supported.\nTo get started, see the included 'README' and\n'MOO.TXT' files and the usage output for the\n'moo' command.";
        buildType = "Simple";
      };
      components = {
        dbmigrations = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.time
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.fgl
            hsPkgs.template-haskell
            hsPkgs.yaml-light
            hsPkgs.bytestring
          ];
        };
        exes = {
          dbmigrations-tests = {
            depends  = [
              hsPkgs.HDBC-postgresql
              hsPkgs.HDBC-sqlite3
              hsPkgs.HUnit
              hsPkgs.process
            ];
          };
          moo = {
            depends  = [
              hsPkgs.HDBC-postgresql
              hsPkgs.HDBC-sqlite3
            ];
          };
        };
      };
    }