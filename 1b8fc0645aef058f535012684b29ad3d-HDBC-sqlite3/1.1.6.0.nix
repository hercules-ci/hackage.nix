{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HDBC-sqlite3";
          version = "1.1.6.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2005-2008 John Goerzen";
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
            hsPkgs.mtl
            hsPkgs.HDBC
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ]);
          libs = [ pkgs.sqlite3 ];
        };
      };
    }