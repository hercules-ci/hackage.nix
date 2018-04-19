{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      builtin-sqlcipher = true;
    } // flags;
    in {
      package = {
        specVersion = "1.23";
        identifier = {
          name = "sqlcipher";
          version = "1.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007-8, Galois Inc\nCopyright (c) 2016, figo GmbH";
        maintainer = "figo GmbH <package+haskell@figo.io>";
        author = "figo GmbH";
        homepage = "http://github.com/figome/haskell-sqlcipher";
        url = "";
        synopsis = "Haskell binding to sqlcipher";
        description = "Haskell binding to sqlcipher <https://www.zetetic.net/sqlcipher/>.\nThis was forked from sqlite3 library from Galois, Inc. since sqlcipher share most of its API.\n";
        buildType = "Custom";
      };
      components = {
        sqlcipher = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.directory
          ];
          libs = if _flags.builtin-sqlcipher
            then [ pkgs.crypto ]
            else [
              pkgs.sqlcipher
              pkgs.crypto
            ];
        };
        tests = {
          sqlite-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.sqlcipher
              hsPkgs.temporary
              hsPkgs.filepath
              hsPkgs.hspec
            ];
          };
        };
      };
    }