{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "ftphs";
          version = "1.0.8";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2004-2010 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/ftphs";
        url = "";
        synopsis = "FTP Client and Server Library";
        description = "ftphs provides a Haskell library to implement a FTP client\nand a FTP server.\n\nftphs has a number of features:\n\n* Easy to use operation\n* Full support of text and binary transfers\n* Optional lazy interaction\n* Server can serve up a real or a virtual filesystem tree\n* Standards compliant";
        buildType = "Simple";
      };
      components = {
        ftphs = {
          depends  = [
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.regex-compat
            hsPkgs.hslogger
            hsPkgs.MissingH
          ];
        };
        exes = {
          runtests = {
            depends  = optionals _flags.buildtests [
              hsPkgs.testpack
              hsPkgs.HUnit
            ];
          };
        };
      };
    }